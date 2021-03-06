<?php echo $header; ?>

    <div class="page-wrap">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="wrapper-title d-flex align-items-center justify-content-between">
                        <h1>ОТЗЫВЫ</h1>
                        <?php

                        if (isset($shop_rating_authorized)) {
                            if (isset($customer_id) && $customer_id != 0) {
                                $show_form = true;
                            } else {
                                $show_form = false;
                            }

                        } else {
                            $show_form = true;
                        }
                        ?>
                        <div>
                            <?php if ($show_form) { ?>
                                <?php if (!$rating_send) { ?>
                                    <button class="rating_btn add_rating-button"
                                            data-remodal-target="ratingModal"><?php echo $send_rating; ?></button>
                                <?php } else { ?>
                                    <div class="shop_summary_rating">
                                        <?php if (isset($shop_rating_summary)) { ?>
                                            <div class="shop_summary_general">
                                                <div class="shop_summary_general_title"><?php echo $text_summary; ?></div>
                                                <div class="shop_summary_general_rating"><?php echo $general['summ'] ?></div>
                                                <div class="summary-rate-star-show">
                                                    <div class="summary-rate-star-show star-change"
                                                         style="<?php echo 'width: ' . $general['summ_perc'] . '%'; ?>"></div>
                                                </div>
                                                <div class="shop_summary_general_desc"><?php echo $text_count; ?><?php echo $general['count']; ?></div>
                                            </div>
                                            <div class="shop_summary_detail">
                                                <div class="shop_summary_detail_line">
                                                    <span class="star">5</span>
                                                    <span class="percent_line"
                                                          style=" <?php echo 'width:' . round($general['5'] * 100 / $general['count']) . 'px'; ?>"></span>
                                                    <span><?php echo $general['5']; ?>x</span>
                                                </div>
                                                <div class="shop_summary_detail_line">
                                                    <span class="star">4</span>
                                                    <span class="percent_line"
                                                          style="<?php echo 'width:' . round($general['4'] * 100 / $general['count']) . 'px'; ?>"></span>
                                                    <span><?php echo $general['4']; ?>x</span>
                                                </div>
                                                <div class="shop_summary_detail_line">
                                                    <span class="star">3</span>
                                                    <span class="percent_line"
                                                          style="<?php echo 'width:' . round($general['3'] * 100 / $general['count']) . 'px'; ?>"></span>
                                                    <span><?php echo $general['3']; ?>x</span>
                                                </div>
                                                <div class="shop_summary_detail_line">
                                                    <span class="star">2</span>
                                                    <span class="percent_line"
                                                          style="<?php echo 'width:' . round($general['2'] * 100 / $general['count']) . 'px'; ?>"></span>
                                                    <span><?php echo $general['2']; ?>x</span>
                                                </div>
                                                <div class="shop_summary_detail_line">
                                                    <span class="star">1</span>
                                                    <span class="percent_line"
                                                          style="<?php echo 'width:' . round($general['1'] * 100 / $general['count']) . 'px'; ?>"></span>
                                                    <span><?php echo $general['1']; ?>x</span>
                                                </div>
                                            </div>
                                            <div class="shop_summary_add_rating">

                                                <?php if ($show_form) { ?>
                                                    <?php if (!$rating_send) { ?>
                                                        <button class="rating_btn add_rating-button"
                                                                data-remodal-target="ratingModal"><?php echo $send_rating; ?></button>
                                                    <?php } else { ?>
                                                        <?php echo $text_will_send; ?>
                                                    <?php } ?>
                                                <?php } else { ?>
                                                    <?php echo $text_login; ?>
                                                <?php } ?>
                                            </div>
                                            <div style="clear: both"></div>
                                        <?php } else { ?>
                                            <?php echo $text_will_send; ?>
                                        <?php } ?>
                                    </div>

                                <?php } ?>
                            <?php } else { ?>
                                <?php echo $text_login; ?>

                            <?php } ?>
                        </div>
                    </div>

                    <?php echo $column_left; ?>
                    <?php if ($column_left && $column_right) { ?>
                        <?php $class = 'col-sm-6'; ?>
                    <?php } elseif ($column_left || $column_right) { ?>
                        <?php $class = 'col-sm-9'; ?>
                    <?php } else { ?>
                        <?php $class = 'col-sm-12'; ?>
                    <?php } ?>
                    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>

                        <section class="description-section">
                            <span style="text-align: center;">

                            </span>
                        </section>
                        <?php if ($success != '') { ?>
                            <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
                            </div>
                        <?php } ?>
                        <?php if ($error_name) { ?>
                            <div class="alert alert-danger"><i
                                        class="fa fa-exclamation-circle"></i> <?php echo $error_name; ?>
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                            </div>
                        <?php } ?>
                        <?php if ($error_email) { ?>
                            <div class="alert alert-danger"><i
                                        class="fa fa-exclamation-circle"></i> <?php echo $error_email; ?>
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                            </div>
                        <?php } ?>
                        <?php if ($error_comment) { ?>
                            <div class="alert alert-danger"><i
                                        class="fa fa-exclamation-circle"></i> <?php echo $error_comment; ?>
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                            </div>
                        <?php } ?>
                        <?php if ($error_captcha) { ?>
                            <div class="alert alert-danger"><i
                                        class="fa fa-exclamation-circle"></i> <?php echo $error_captcha; ?>
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                            </div>
                        <?php } ?>


                        <div class="shop_rates_list row  justify-content-between">
                            <?php foreach ($ratings as $rating) { ?>
                                <div class="ratings-item col-lg-5 col-md-12">
                                    <div class="top-block d-flex align-items-center  ">
                                        <img src="/catalog/view/theme/theme/images/new_review.jpg" alt="Изображение">
                                        <div class="text d-flex">
                                            <span><?php echo $rating['customer_name']; ?> </span>,
                                            <span> <?php echo date("d.m.Y", strtotime($rating['date_added'])); ?></span>
                                        </div>

                                    </div>
                                    <?php

                                    if (mb_strlen($rating['comment']) > 200) {
                                        $class = 'hide-block';
                                        $dropDown = true;
                                    } else {
                                        $class = '';
                                        $dropDown = false;
                                    }
                                    ?>
                                    <div class="content-item  <?= $class; ?>">
                                        <div class="ratings-item-comment">
                                            <div>
                                                <?php echo nl2br($rating['comment']); ?>
                                            </div>


                                        </div>
                                        <div class="w-100 d-flex justify-content-end">
                                            <?php if ($dropDown) { ?>
                                                <a href="#" class="link-dropdown">
                                                    Раскрыть
                                                </a>
                                            <?php } ?>
                                        </div>
                                    </div>

                                    <?php if (isset($rating_answers[$rating['rate_id']]) && $rating_answers[$rating['rate_id']] != '') { ?>
                                        <div class="ratings-item-answer">
                                            <div class="ratings-item-answer-title"><?php echo $answer; ?></div>
                                            <div class="ratings-item-answer-content">
                                                <p><?php echo nl2br($rating_answers[$rating['rate_id']]); ?></p></div>

                                        </div>
                                    <?php } ?>

                                </div>


                            <?php } ?>

                        </div>
                        <div class="shop_rates_pagination">
                            <div class="pagination"><?php echo $pagination; ?></div>
                        </div>


                        <?php if ($show_form && !$rating_send) { ?>
                            <div class="remodal newShoprRating" data-remodal-id="ratingModal" role="dialog"
                                 aria-labelledby="ratingModalTitle" aria-describedby="ratingModalDesc">
                                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data"
                                      class="newShopRatingForm">
                                    <button data-remodal-action="close" class="remodal-close"
                                            aria-label="Close"><img src="/catalog/view/theme/theme/images/close-alt.png" alt="иконка"></button>
                                    <div>
                                        <h2 id="ratingModalTitle">Ваш отзыв</h2>
                                        <div id="ratingModalDesc">
                                            <div class="form-row row ">
                                                <div class="row-item col-lg-6 col-md-12">
                                                    <label class="rating-form-label"
                                                           for="input-name"><?php echo $entry_name; ?></label>
                                                    <div class="">
                                                        <input type="text" name="name" value="<?php echo $name; ?>"
                                                               id="input-name" class="form-control" required/>
                                                        <?php if ($error_name) { ?>
                                                            <div class="text-danger"><?php echo $error_name; ?></div>
                                                        <?php } ?>
                                                    </div>
                                                    <label class="rating-form-label"
                                                           for="input-email"><?php echo $entry_email; ?></label>
                                                    <div class="">
                                                        <input type="text" name="email" value="<?php echo $email; ?>"
                                                               id="input-email" class="form-control" required/>
                                                        <?php if ($error_email) { ?>
                                                            <div class="text-danger"><?php echo $error_email; ?></div>
                                                        <?php } ?>
                                                        <div class="field_desc"><?php echo $text_email_desc; ?></div>
                                                    </div>
                                                    <div class="policy-block">
                                                        Нажимая на кнопку, Вы подтверждаете<br>
                                                        свое согласие на обработку <a href="/policy">персональных данных</a>
                                                    </div>
                                                    <button type="submit"
                                                            class="remodal-confirm add_rating-button"><?php echo $button_submit; ?></button>

                                                </div>
                                                <div class="row-item col-lg-6 col-md-12">
                                                    <label class=" control-label"
                                                           for="input-comment"><?php echo $entry_comment; ?></label>
                                                    <div class="">
                                                    <textarea name="comment" rows="6" id="input-comment"
                                                              class="form-control" required
                                                              style="height: 100px"><?php echo $comment; ?></textarea>
                                                        <?php if ($error_comment) { ?>
                                                            <div class="text-danger"><?php echo $error_comment; ?></div>
                                                        <?php } ?>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="grid grid-2">
                                                <?php if (!$form_custom_types) { ?>
                                                    <?php if (isset($shop_rating_shop_rating)) { ?>

                                                        <div class="col">
                                                            <label class="rating-form-label"
                                                                   for="shop_rate-input"><?php echo $entry_rate; ?></label>
                                                            <div class="hidden">
                                                                <input name="shop_rate-input" type="hidden" value="0">
                                                            </div>
                                                            <div class="rate-stars">
                                                                <div class="rate-star" id="shop_rate-1"></div>
                                                                <div class="rate-star" id="shop_rate-2"></div>
                                                                <div class="rate-star" id="shop_rate-3"></div>
                                                                <div class="rate-star" id="shop_rate-4"></div>
                                                                <div class="rate-star" id="shop_rate-5"></div>
                                                            </div>
                                                        </div>
                                                    <?php } ?>
                                                    <?php if (isset($shop_rating_site_rating)) { ?>

                                                        <div class="col">
                                                            <label class="rating-form-label"
                                                                   for="site_rate-input"><?php echo $entry_site_rate; ?></label>
                                                            <div class="">
                                                                <input name="site_rate-input" type="hidden" value="0">
                                                            </div>
                                                            <div class="rate-stars">
                                                                <div class="rate-star" id="site_rate-1"></div>
                                                                <div class="rate-star" id="site_rate-2"></div>
                                                                <div class="rate-star" id="site_rate-3"></div>
                                                                <div class="rate-star" id="site_rate-4"></div>
                                                                <div class="rate-star" id="site_rate-5"></div>
                                                            </div>
                                                        </div>
                                                    <?php } ?>
                                                <?php } else { ?>
                                                    <div class="col">
                                                        <?php if (isset($shop_rating_shop_rating)) { ?>
                                                            <label class="rating-form-label"
                                                                   for="shop_rate-input"><?php echo $entry_rate; ?></label>
                                                            <div class="hidden">
                                                                <input name="shop_rate-input" type="hidden" value="0">
                                                            </div>
                                                            <div class="rate-stars">
                                                                <div class="rate-star" id="shop_rate-1"></div>
                                                                <div class="rate-star" id="shop_rate-2"></div>
                                                                <div class="rate-star" id="shop_rate-3"></div>
                                                                <div class="rate-star" id="shop_rate-4"></div>
                                                                <div class="rate-star" id="shop_rate-5"></div>
                                                            </div>
                                                        <?php } ?>
                                                        <?php if (isset($shop_rating_site_rating)) { ?>
                                                            <label class="rating-form-label"
                                                                   for="site_rate-input"><?php echo $entry_site_rate; ?></label>
                                                            <div class="">
                                                                <input name="site_rate-input" type="hidden" value="0">
                                                            </div>
                                                            <div class="rate-stars">
                                                                <div class="rate-star" id="site_rate-1"></div>
                                                                <div class="rate-star" id="site_rate-2"></div>
                                                                <div class="rate-star" id="site_rate-3"></div>
                                                                <div class="rate-star" id="site_rate-4"></div>
                                                                <div class="rate-star" id="site_rate-5"></div>
                                                            </div>
                                                        <?php } ?>
                                                    </div>
                                                <?php } ?>
                                                <?php if ($form_custom_types) { ?>
                                                    <div class="col">
                                                        <?php foreach ($form_custom_types as $custom) { ?>
                                                            <div class="grid grid-2">
                                                                <div class="col-mb">
                                                                    <label class="rating-form-label custom-types"
                                                                           for="site_rate-input"><?php echo $custom['title']; ?></label>
                                                                    <input name="custom_<?php echo $custom['id'] ?>_rate-input"
                                                                           type="hidden" value="0">
                                                                </div>
                                                                <div class="col-mb">
                                                                    <div class="rate-stars custom-types">
                                                                        <div class="rate-star small-stars"
                                                                             id="custom_<?php echo $custom['id'] ?>_rate-1"></div>
                                                                        <div class="rate-star small-stars"
                                                                             id="custom_<?php echo $custom['id'] ?>_rate-2"></div>
                                                                        <div class="rate-star small-stars"
                                                                             id="custom_<?php echo $custom['id'] ?>_rate-3"></div>
                                                                        <div class="rate-star small-stars"
                                                                             id="custom_<?php echo $custom['id'] ?>_rate-4"></div>
                                                                        <div class="rate-star small-stars"
                                                                             id="custom_<?php echo $custom['id'] ?>_rate-5"></div>
                                                                    </div>
                                                                </div>
                                                                <div style="clear: both"></div>
                                                            </div>
                                                        <?php } ?>
                                                    </div>
                                                <?php } ?>
                                            </div>
                                            <div class="grid"  >

                                            </div>
                                            <?php if (isset($shop_rating_good_bad)) { ?>
                                                <div class="grid grid-2">
                                                    <div class="col">
                                                        <label class="rating-form-label text-success"
                                                               for="input-good"><i
                                                                    class="fa fa-plus fa-fw"></i><?php echo $entry_good; ?>
                                                        </label>
                                                        <div class="">
                                                        <textarea type="text" name="good" id="input-good"
                                                                  class="form-control"
                                                                  style="height: 75px"><?php echo $good; ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <label class="rating-form-label text-danger " for="input-bad"><i
                                                                    class="fa fa-minus fa-fw "></i><?php echo $entry_bad; ?>
                                                        </label>
                                                        <div class="">
                                                        <textarea type="text" name="bad" id="input-bad"
                                                                  class="form-control"
                                                                  style="height: 75px"><?php echo $bad; ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div style="clear: both"></div>
                                                    <div class="field_desc"><?php echo $god_bad_desc; ?></div>
                                                </div>
                                            <?php } ?>

                                            <div class="grid">
                                                <div class="col"><?php echo $captcha; ?></div>
                                            </div>

                                        </div>
                                    </div>
                                </form>
                            </div>
                        <?php } ?>

                        <script src="catalog/view/javascript/jquery/remodal/remodal.min.js"></script>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $('[data-remodal-id=ratingModal]').remodal();
                                var type = "shop_rate";
                                $("input[name=" + type + "-input]").val(5);
                                for (var i = 1; i <= 5; i++) {
                                    $('#' + type + '-' + i).addClass('star-hover');
                                }

                                $('.rate-star').hover(
                                    function () {
                                        var params = this.id.split('-');
                                        var type = params[0];
                                        var id = params[1];
                                        $('[id^=' + type + ']').removeClass('star-hover');

                                        for (var i = 1; i <= id; i++) {
                                            $('#' + type + '-' + i).addClass('star-hover');
                                        }
                                    }, function () {
                                        var params = this.id.split('-');
                                        var type = params[0];
                                        var id = params[1];

                                        $('[id^=' + type + ']').removeClass('star-hover');
                                    }
                                );
                                $('.rate-star').click(function () {
                                    var params = this.id.split('-');
                                    var type = params[0];
                                    var id = params[1];
                                    $('[id^=' + type + ']').removeClass('star-change');

                                    for (var i = 1; i <= id; i++) {
                                        $('#' + type + '-' + i).addClass('star-change');
                                    }
                                    //$("input[name="+type+"-input]").attr('checked', false);
                                    //$("input[name="+type+"-input][value=" + id + "]").attr('checked', true);
                                    $("input[name=" + type + "-input]").val(id);
                                });
                            });

                        </script>
                    </div>
                </div><?php echo $content_bottom; ?>
            </div>
        </div>
    </div>
<?php echo $footer; ?>