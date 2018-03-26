var ConfigsModel = (function($){
    var Alert = function(data){
        var that = this;
        that.data = {};
        if(data){
            that.data.message = ko.observable(ko.utils.unwrapObservable(data.message));
            that.data.type = ko.observable(ko.utils.unwrapObservable(data.type));
        }else{
            that.data.message = ko.observable('');
            that.data.type = ko.observable('alert-info');
        }
        that.valid = {};
        that.valid.message = ko.observable(true);
        that.reset = function(){
            that.data.message('');
            that.data.type('alert-info');
        }

        that.temp = {};
        that.temp.message = ko.observable(that.data.message());

        that.reset = function(){
            that.data.message('');
            that.data.type('alert-info');
        }

        that.isEdit = ko.observable(false);
        that.toggleEdit = function(){
            if(that.isEdit()){
                if(that.temp.message()){
                    that.isEdit(false);
                    that.data.message(that.temp.message());
                }else{
                    that.valid.message(false);
                }
            }else{
                that.isEdit(true);
            }
        }
    }    
    var Alerts = function(data){
        var that = this;
        that.array = ko.observableArray([]);
        if(data) $.each(data, function(i, item){
            that.array.push(new Alert(item));
        });

        that.newItem = new Alert();
        that.add = function(){
            if(that.newItem.data.message()){
                that.array.push(new Alert(that.newItem.data));
                that.newItem.reset();
            }else{
                that.newItem.valid.message(false);
            }
        }
        that.delete = function(item){
            that.array.remove(item);
        }
    }

    var Overview = function(data){
        var that = this;
        that.data = {};
        if(data){
            that.data.cat = ko.observable(ko.utils.unwrapObservable(data.cat));
            that.data.max_doc = ko.observable(ko.utils.unwrapObservable(data.max_doc));
            that.data.sort_by = ko.observable(ko.utils.unwrapObservable(data.sort_by));
            that.data.sort_dir = ko.observable(ko.utils.unwrapObservable(data.sort_dir));
        }else{
            that.data.cat = ko.observable(0);
            that.data.max_doc = ko.observable(3);
            that.data.sort_by = ko.observable('');
            that.data.sort_dir = ko.observable('');
        }

        that.checkValid = function(){
            if(isNaN(that.data.max_doc()) || !that.data.max_doc())
                that.data.max_doc(3);
        }
    }
    var Overviews = function(data){
        var that = this;
        that.array = ko.observableArray([]);
        if(data) $.each(data, function(i, item){
            that.array.push(new Overview(item));
        });
        that.add = function(){
            that.array.push(new Overview());
        }
        that.delete = function(item){
            that.array.remove(item);
        }
    }

    var Download = function(data){
        var that = this;
        that.data = {};
        if(data){
            that.data.doc = ko.observable(ko.utils.unwrapObservable(data.doc));
            that.data.color = ko.observable(ko.utils.unwrapObservable(data.color));
        }else{
            that.data.doc = ko.observable('');
            that.data.color = ko.observable('');
        }
    }
    var Downloads = function(data){
        var that = this;
        that.array = ko.observableArray([]);
        if(data) $.each(data, function(i, item){
            that.array.push(new Download(item));
        });
        that.add = function(){
            that.array.push(new Download());
        }
        that.delete = function(item){
            that.array.remove(item);
        }
    }

    return function(data){
        var self = this;
        self.loading = ko.observable(false);

        /* General settings */
        self.extensions = ko.observableArray(data.extensions);
        self.allowed_extensions = ko.observableArray(data.options.allowed_extensions);
        self.allowed_extensions_sorted = ko.computed(function(){
            return _.sortBy(self.allowed_extensions(), function(item){
                return item;
            });
        });
        self.addExts = function(item){
            $.each(item.exts, function(i, ext){
                if(!_.contains(self.allowed_extensions(), ext))
                    self.allowed_extensions.push(ext);
            });
        }
        self.removeExts = function(item){
            $.each(item.exts, function(i, ext){
                self.allowed_extensions.remove(ext);
            });
        }
        self.newExt = ko.observable('');
        self.addExt = function(){
            if(self.newExt() && !_.contains(self.allowed_extensions(), self.newExt())){
                self.allowed_extensions.push(self.newExt());
                self.newExt('');
            }
        }
        self.addOnEnter = function(data, event){
            var keyCode = (event.which ? event.which : event.keyCode);
            if (keyCode === 13) {
                self.addExt();
            }
            return true;
        }
        self.removeExt = function(ext){
            self.allowed_extensions.remove(ext);
        }

        /* Dashboard settings */
        if(data.options.params != null){
            self.alerts = new Alerts(data.options.params.alerts);
            self.overviews = new Overviews(data.options.params.overviews);
            self.downloads = new Downloads(data.options.params.downloads);
        }else{
            self.alerts = new Alerts();
            self.overviews = new Overviews();
            self.downloads = new Downloads();
        }

        self.categories = ko.observableArray(data.categories);
        self.docSorts =  ko.observableArray(data.docSorts);
        self.documents = ko.observableArray(data.documents);


        self.getData = function(array){
            var data = [];
            $.each(array, function(i, it){
                data.push(it.data);
            });
            return data;
        }

        self.dashboard = ko.computed(function(){
            var rs = {};
            rs.alerts = self.getData(self.alerts.array());
            rs.overviews = self.getData(self.overviews.array());
            rs.downloads = self.getData(self.downloads.array());
            return rs;
        });
    }
})($JVDAM);