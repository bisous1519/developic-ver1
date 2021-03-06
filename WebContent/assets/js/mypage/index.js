const vm = new Vue({
  el: "#app",
  data() {
    return {
      deleteCommentModal: false,
      deleteCartModal: false,
      leaveModal: false,
      deleteLikeModal: false,
      searchOpen: false,
      findIdModal: false,
      fixCommentModal:false,
      declareCommentModal:false,
      changePwdModal:false,
      declarePhotoModal:false,
      deletePhotoModal:false,
      applyModalOpen: false,
      qnaModalOpen: false,
      picModal:false,
    };
  },
  methods: {
    setDeleteCommentModal() {
      this.deleteCommentModal = !this.deleteCommentModal;
    },
    setDeleteCartModal() {
      this.deleteCartModal = !this.deleteCartModal;
    },
    setLeaveModal() {
      this.leaveModal = !this.leaveModal;
    },
    setDeleteLikeModal() {
      this.deleteLikeModal = !this.deleteLikeModal;
    },
    setSearchOpen() {
      this.searchOpen = !this.searchOpen;
    },
    setFindIdOpen() {
      this.findIdModal = !this.findIdModal;
    },
    setFixCommentOpen() {
      this.fixCommentModal = !this.fixCommentModal;
    },
    setDeclareCommentOpen() {
      this.declareCommentModal = !this.declareCommentModal;
    },
    setChangePwdModal(){
    	this.changePwdModal = !this.changePwdModal;
    },
    setPicModal(){
      this.picModal = !this.picModal;
    },
    setDeclarePhotoOpen() {
      this.declarePhotoModal = !this.declarePhotoModal;
    },
    setDeletePhotoOpen() {
      this.deletePhotoModal = !this.deletePhotoModal;
    },
    setApplyModal() {
        this.applyModalOpen = !this.applyModalOpen;
    },
    setQnaModal() {
        this.qnaModalOpen = !this.qnaModalOpen;
    },
  },
});


//개인정보관리
document.querySelector("#img-select").addEventListener("click", () => {
  document.querySelector("#image-input").click();
});
document.querySelector("#image-input").addEventListener("change", (e) => {
	 var startIndex = (e.target.value.indexOf('\\') >= 0 ? e.target.value.lastIndexOf('\\') : e.target.value.lastIndexOf('/'));
        var filename = e.target.value.substring(startIndex);
        if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
            filename = filename.substring(1);
        }
        
    //    console.log(filename);
      document.querySelector("#userAvatarSrc").value = filename;
        
  document.querySelector("#image-input-value").innerText = filename;
});


//개인정보관리 - 미리보기
function loadImg(inputFile) {
  if (inputFile.files.length == 1) {
    var reader = new FileReader();
    reader.readAsDataURL(inputFile.files[0]);
    reader.onload = function (e) {
      console.log(e);
      document.querySelector("#title-img").src = e.target.result;
    };
  } else {
    document.querySelector("#title-img").src = null;
  }
}
