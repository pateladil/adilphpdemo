<script>
    $('#update').click(function(e) {
        e.preventDefault()
        let tr=$("tr.tb-product");
        tr = [...tr];
        let allcart=[];
        tr.forEach((e)=>{
            let larr=[];
            larr.push($(e).attr("data-cid"));
            larr.push($(e).attr("data-pid"));
            larr.push($(e).attr("data-uid"));
            larr.push($(e).find('.quantity').val());
            allcart.push(larr);
        });

        $.ajax({
            method: 'POST',
            url: './ajax/updateCartDetail.php',
            data: {allC: allcart},
            success: function(e){
                
            }
        })
    });

</script>
<tr data-cid="<?php echo $qrows['id'] ?>" data-pid="<?php echo $qrows['product_id']?>" data-uid="<?php echo $qrows['user_id'] ?>">
class="vertical-quantity form-control quantity"