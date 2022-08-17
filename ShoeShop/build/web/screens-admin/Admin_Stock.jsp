<c:if test="${detail.getIsFeedback() != 'yes'}">
    <div class="w-100">

        <div class=" mt-4 w-100">
            <div id="rating_1_${feedback.getOrderDetails().getOrderDetailsId()}" class="w-100" style="display: none;">
                <div class="d-flex justify-content-center w-100">
                    <div class="btn btn-light"
                         style="border: 1px solid rgba(0,0,0,.09);border-radius:13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating1">Poor product quality.
                    </div>
                    <div class="btn btn-light px-4 ml-3"
                         style="border: 1px solid rgba(0,0,0,.09);border-radius: 13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating1">Slow delivery time.
                    </div>
                    <div class="btn btn-light px-4 ml-3"
                         style="border: 1px solid rgba(0,0,0,.09);border-radius: 13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating1">Poor service shop.
                    </div>
                </div>
                <div class="w-100 d-flex justify-content-center">
                    <div class="mt-4" style="width: 85%;">
                        <textarea class="form-control" onchange="showMessage(this)"
                                  id="comment_${feedback.getOrderDetails().getOrderDetailsId()}_rating1" rows="4"
                                  style="border: 1px solid rgba(0,0,0,.14);"
                                  placeholder="Share what you like about this product"></textarea>
                        <div class="d-flex justify-content-end">
                            <p class="mt-2" id="message1">The limit is 100 characters</p>
                        </div>
                        <div class="d-flex justify-content-between py-2">
                            <a class="btn btn-danger border px-4 text-white"
                               onclick="cancel(${feedback.getOrderDetails().getOrderDetailsId()}, '1')">Cancel</a>
                            <a class="btn btn-success border px-4 text-white"
                               onclick="complete(${feedback.getOrderDetails().getOrderDetailsId()}, '1')">Complete</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="rating_2_${feedback.getOrderDetails().getOrderDetailsId()}" class="w-100" style="display: none;">
                <div class="d-flex justify-content-center w-100">
                    <div class="btn btn-light "
                         style="border: 1px solid rgba(0,0,0,.09);border-radius:13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating2">Poor product quality.
                    </div>
                    <div class="btn btn-light px-4 ml-3"
                         style="border: 1px solid rgba(0,0,0,.09);border-radius: 13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating2">Slow delivery time.
                    </div>
                    <div class="btn btn-light px-4 ml-3"
                         style="border: 1px solid rgba(0,0,0,.09);border-radius: 13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating2">Poor service shop.
                    </div>
                </div>
                <div class="w-100 d-flex justify-content-center">
                    <div class="mt-4" style="width: 85%;">
                        <textarea class="form-control" id="comment_${feedback.getOrderDetails().getOrderDetailsId()}_rating2" rows="4"
                                  style="border: 1px solid rgba(0,0,0,.14);"
                                  placeholder="Share what you like about this product"></textarea>
                        <div class="d-flex justify-content-end">
                            <p class="mt-2" id="message">The limit is 100 characters</p>
                        </div>
                        <div class="d-flex justify-content-between py-2">
                            <a class="btn btn-danger border px-4 text-white"
                               onclick="cancel(${feedback.getOrderDetails().getOrderDetailsId()}, '2')">Cancel</a>
                            <a class="btn btn-success border px-4 text-white"
                               onclick="complete(${feedback.getOrderDetails().getOrderDetailsId()}, '2')">Complete</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="rating_3_${feedback.getOrderDetails().getOrderDetailsId()}" class="w-100" style="display: none;">
                <div class="d-flex justify-content-center w-100">
                    <div class="btn btn-light "
                         style="border: 1px solid rgba(0,0,0,.09);border-radius:13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating3">Product quality is
                        temporary.
                    </div>
                    <div class="btn btn-light px-4 ml-3"
                         style="border: 1px solid rgba(0,0,0,.09);border-radius: 13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating3">Normal delivery time.
                    </div>
                    <div class="btn btn-light px-4 ml-3"
                         style="border: 1px solid rgba(0,0,0,.09);border-radius: 13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating3">Shop serves
                        temporarily.
                    </div>
                </div>
                <div class="w-100 d-flex justify-content-center">
                    <div class="mt-4" style="width: 85%;">
                        <textarea class="form-control" id="comment_${feedback.getOrderDetails().getOrderDetailsId()}_rating3" rows="4"
                                  style="border: 1px solid rgba(0,0,0,.14);"
                                  placeholder="Share what you like about this product"></textarea>
                        <div class="d-flex justify-content-end">
                            <p class="mt-2" id="message">The limit is 100 characters</p>
                        </div>
                        <div class="d-flex justify-content-between py-2">
                            <a class="btn btn-danger border px-5 text-white"
                               onclick="cancel(${feedback.getOrderDetails().getOrderDetailsId()}, '3')">Cancel</a>
                            <a class="btn btn-success border px-5 text-white"
                               onclick="complete(${feedback.getOrderDetails().getOrderDetailsId()}, '3')">Complete</a>
                        </div>


                    </div>
                </div>
            </div>
            <div id="rating_4_${feedback.getOrderDetails().getOrderDetailsId()}" class="w-100" style="display: none;">
                <div class="d-flex justify-content-center w-100">
                    <div class="btn btn-light "
                         style="border: 1px solid rgba(0,0,0,.09);border-radius:13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating4">Good product quality.
                    </div>
                    <div class="btn btn-light px-4 ml-3"
                         style="border: 1px solid rgba(0,0,0,.09);border-radius: 13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating4">Fast delivery.
                    </div>
                    <div class="btn btn-light px-4 ml-3"
                         style="border: 1px solid rgba(0,0,0,.09);border-radius: 13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating4">Good service shop.
                    </div>
                </div>
                <div class="w-100 d-flex justify-content-center">
                    <div class="mt-4" style="width: 85%;">
                        <textarea class="form-control" id="comment_${feedback.getOrderDetails().getOrderDetailsId()}_rating4" rows="4"
                                  style="border: 1px solid rgba(0,0,0,.14);"
                                  placeholder="Share what you like about this product"></textarea>
                        <div class="d-flex justify-content-end">
                            <p class="mt-2" id="message">The limit is 100 characters</p>
                        </div>
                        <div class="d-flex justify-content-between py-2">
                            <a class="btn btn-danger border px-5 text-white"
                               onclick="cancel(${feedback.getOrderDetails().getOrderDetailsId()}, '4')">Cancel</a>
                            <a class="btn btn-success border px-5 text-white"
                               onclick="complete(${feedback.getOrderDetails().getOrderDetailsId()}, '4')">Complete</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="rating_5_${feedback.getOrderDetails().getOrderDetailsId()}" class="w-100" style="display: none;">
                <div class="d-flex justify-content-center w-100">
                    <div class="btn btn-light "
                         style="border: 1px solid rgba(0,0,0,.09);border-radius:13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating5">Good product quality.
                    </div>
                    <div class="btn btn-light px-4 ml-3"
                         style="border: 1px solid rgba(0,0,0,.09);border-radius: 13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating5">Fast delivery.
                    </div>
                    <div class="btn btn-light px-4 ml-3"
                         style="border: 1px solid rgba(0,0,0,.09);border-radius: 13px;font-size: 95%;"
                         onclick="getComment(this, ${feedback.getOrderDetails().getOrderDetailsId()})" name="rating5">Good service shop.
                    </div>
                </div>
                <div class="w-100 d-flex justify-content-center">
                    <div class="mt-4" style="width: 85%;">
                        <textarea class="form-control" id="comment_${feedback.getOrderDetails().getOrderDetailsId()}_rating5" rows="4"
                                  style="border: 1px solid rgba(0,0,0,.14);"
                                  placeholder="Share what you like about this product"></textarea>
                        <div class="d-flex justify-content-end">
                            <p class="mt-2" id="message">The limit is 100 characters</p>
                        </div>
                        <div class="d-flex justify-content-between py-2">
                            <a class="btn btn-danger border px-5 text-white"
                               onclick="cancel(${feedback.getOrderDetails().getOrderDetailsId()}, '5')">Cancel</a>
                            <a class="btn btn-success border px-5 text-white"
                               onclick="complete(${feedback.getOrderDetails().getOrderDetailsId()}, '5')">Complete</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:if>