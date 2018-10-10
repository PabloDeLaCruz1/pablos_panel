const container = document.querySelector(".container")

if (container) {
    document.addEventListener('DOMContentLoaded', ele => {
        // makes the axios call
        
        axios({
                method: 'get',
                url: '/users',
                // use the following only if you making an POST, PUT / PATCH, DELETE
                // data: {
                //   id: 6
                // },
                dataType: 'json',
                headers: {
                    // these two are required in order for the request to work
                    'X-CSRF-Token': document.querySelector("meta[name=csrf-token]").content,
                    // lets Rails know this is going to be an AJAX request
                    'X-Requested-With': 'XMLHttpRequest'
                }
            })
            .then(res => {

            })
    });
}
