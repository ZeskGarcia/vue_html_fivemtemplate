const app_config = {
    el: '#app',
    data: {},
    methods: {},
    mounted() {
        window.addEventListener('message', async ({data}) => this[data.type] && this[data.type](data));
    }
};

const app = new Vue(app_config);
