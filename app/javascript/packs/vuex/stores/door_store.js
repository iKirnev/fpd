const DoorStore = {
  namespaced: true,
  state: {
    doors: [],
    door: {}
  },
  mutations: {
    one(state, data) {
      state.door = data.door;
      return state;
    },
    many(state, data) {
      state.doors= data.doors;
      return state;
    }
  },
  actions: {
    result(context, params) {
      this._vm.$http.get('/api/doors/use/1-asd').then((response)=>{
        context.commit('many', response.data);
      });
      /*$.ajax({
        url: `doors`,
        type: 'get',
        data: query,
        success: function(data) {
          context.commit('many', data)
        }
      })*/
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
