import Ember from 'ember';

export default Ember.Route.extend({
  model: function () {
    return Ember.$.getJSON('gen/ohhla-index.json');
  },

  setupController: function(controller, model) {
    controller.set('artists', model);
  },

});
