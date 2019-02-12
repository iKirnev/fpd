const DoorStore = {
  namespaced: true,
  state: {
    doors: [],
    door: {},
    loading: false
  },
  mutations: {
    one(state, data) {
      state.door = data.door;
      return state;
    },
    many(state, data) {
      state.doors= data;
      return state;
    },
    loading(state, val) {
      state.loading = val;
      return state.loading;
    }
  },
  actions: {
    result(context, params) {
      context.commit('loading', true);
      this._vm.$http.get(`/api/doors/${params.by}/${params.slug.split("-")[0]}`).then((response)=>{
        context.commit('loading', false);
        context.commit('many', response.data);
      });
    },
    show(context, id) {
      $.ajax({
        url: `doors/${id}`,
        type: 'get',
        success: function(data) {
          context.commit('one', data)
        }
      })
    },
  }
};

export default DoorStore;
