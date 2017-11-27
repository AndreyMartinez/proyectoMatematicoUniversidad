sabernivel={
  "init":function (){
      window.addEventListener('load',sabernivel.sabernivel);
  } ,"sabernivel":function (e){
  var nombre =$('#nombre').val();
     console.log(nombre);
     
      $.ajax({
          'url':'sabernivel',
          'type':'post',
          'data':{'nombre':nombre},
          'success':function (data){
           if(data.sabernivel === 0){
               $('button#nivel1').attr('disabled',false);
               $('button#nivel2').css('background-color','gray');
               $('button#nive2').css('background-color','gray');
                $('button#nivel3').css('background-color','gray');
               $('button#nive3').css('background-color','gray');
           $('button#niv3').css('background-color','gray');
          
              }
           else if(data.sabernivel === 1){
               $('button#nivel1').attr('disabled',false);
               $('button#nivel2').attr('disabled',false);
                 $('button#nive2').attr('disabled',false);
                   $('button#nivel3').css('background-color','gray');
               $('button#nive3').css('background-color','gray');
           $('button#niv3').css('background-color','gray');
          
               
           }
           else if(data.sabernivel === 2){
               $('button#nivel1').attr('disabled',false);
               $('button#nivel2').attr('disabled',false);
                 $('button#nive2').attr('disabled',false);
                   $('button#nivel3').css('background-color','gray');
               $('button#nive3').css('background-color','gray');
           $('button#niv3').css('background-color','gray');
          
             
              
          }
      },
          'beforeSend':function (){
               
          },error:function (e){
              console.log(e);
          }
      })
  } 
};
sabernivel.init();