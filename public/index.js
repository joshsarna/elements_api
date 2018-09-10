/* global Vue, VueRouter, axios */

var ShowPage = {
  template: "#show-page",
  data: function() {
    return {
      message: "Periodic Table",
      elements: []
    };
  },
  created: function() {
    axios.get("/api/elements").then(function(response) {
      this.elements = response.data;
    }.bind(this));
  },
  methods: {},
  computed: {}
};

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Periodic Table",
      elements: []
    };
  },
  created: function() {
    axios.get("/api/elements").then(function(response) {
      this.elements = response.data;
    }.bind(this));
  },
  methods: {},
  computed: {}
};

var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    { path: "/elements/:id", component: ShowPage }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});