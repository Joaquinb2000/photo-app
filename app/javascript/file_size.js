$(document).ready(()=>{
    $("#image_picture").on("change", function(){
        size = this.files[0].size/1024/1024
        if (size > 5){
            alert("File size exceeds 5MB, if uploaded it will be resized")
        }
    })
})
