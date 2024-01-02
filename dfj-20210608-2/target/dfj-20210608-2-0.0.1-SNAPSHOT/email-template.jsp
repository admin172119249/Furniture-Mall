
<!DOCTYPE html>
<html>
<head>
    <title>Receipt Email - Divano Furniture</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />

    <style type="text/css">
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        /****** EMAIL CLIENT BUG FIXES - BEST NOT TO CHANGE THESE ********/

        .ExternalClass {
            width: 100%;
        }
            /* Forces Outlook.com to display emails at full width */
            .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {
                line-height: 100%;
            }

        /* Forces Outlook.com to display normal line spacing, here is more on that*/

        body {
            -webkit-text-size-adjust: none;
            -ms-text-size-adjust: none;
        }

        /* Prevents Webkit and Windows Mobile platforms from changing default font sizes. */

        html,
        body {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0;
        }

        /* Resets all body margins and padding to 0 for good measure */

        table td {
            border-collapse: collapse;
            border-spacing: 0px;
            border: 0px none;
            vertical-align: middle;
            width: auto;
        }

        /*This resolves the Outlook 07, 10, and Gmail td padding issue. Heres more info */
        /****** END BUG FIXES ********/
        /****** RESETTING DEFAULTS, IT IS BEST TO OVERWRITE THESE STYLES INLINE ********/

        .table-mobile {
            width: 600px;
            margin: 0 auto;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            background-color: white;
            margin-top: 50px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
        }

        .table-mobile-small {
            width: 560px !important;
        }

        body, p {
            font-family: Arial, Helvetica, sans-serif;
            line-height: 1.5;
            color: #222222;
            font-size: 12px;
            margin: 0;
            padding: 0;
        }

        p {
            margin: 0;
        }

        a {
            color: #ffbb00;
            text-decoration: none;
            display: inline-block;
        }

        img {
            border: 0 none;
            display: block;
        }

        @media(min-width:480px) {
            .product-header td {
                padding: 25px;
            }

            .product-image,
            .product-title,
            .product-price {
                border-bottom: 1px solid #eeeeee;
            }

            .product-title {
                padding-left: 15px;
            }

            .product-price {
                padding-right: 25px;
            }
        }

        @media (max-width:479px) {
            body {
                padding-left: 10px;
                padding-right: 10px;
            }

            table,
            table > tbody,
            table > tr,
            table > tbody > tr,
            table > tr > td,
            table > tbody > tr > td {
                width: 100% !important;
                max-width: 100% !important;
                display: block !important;
                overflow: hidden !important;
                box-sizing: border-box;
                /*height: auto !important;*/
            }

            .table-mobile-small {
                width: 95% !important;
                max-width: 100% !important;
                display: block !important;
                overflow: hidden !important;
                box-sizing: border-box;
                height: auto !important;
            }

            .full-image {
                width: 100% !important;
            }

            .footer-content p {
                text-align: left !important;
            }

            .product-title,
            .product-price {
                width: 50% !important;
                float: left;
                border-bottom: 1px solid #eeeeee;
            }

            .product-image,
            .product-title,
            .product-price {
                padding: 10px;
            }

                .product-image img {
                    width: 100% !important;
                }

                .product-price p {
                    text-align: right !important;
                }

            .product-header {
                display: none !important;
            }

            .header-item {
                display: table-cell !important;
                float: none !important;
                width: 50% !important;
            }

            .table-mobile {
                box-shadow: none !important;
                margin: 0;
                border-radius: 0;
            }
        }
    </style>

</head>
<body>

    <table width="100%" cellpadding="0" cellspacing="0">

        <tr>
            <td style="background-color:#dddddd">

                <!-- ========= Table content ========= -->


                <table cellpadding="0" cellspacing="0" width="600" class="table-mobile" align="center">
                    <tr>
                        <td height="25"></td>
                    </tr>

                    <!-- ========= Header ========= -->

                    <tr>
                        <td>

                            <table cellpadding="0" cellspacing="0" class="table-mobile-small" align="center">
                                <tr>
                                    <td class="header-item">
                                        <img src="assets/images/divano-logo.png" alt="" width="150"/>
                                    </td>
                                    <td class="header-item">
                                        <p style="font-family:sans-serif;font-size:20px;font-weight:bold;text-transform:uppercase;margin-top:0;margin-bottom:0;color:#484848;text-align:right;">
                                            Invoice
                                        </p>
                                        <p style="font-family:sans-serif;font-size:12px;font-weight:normal;text-transform:uppercase;margin-top:0;margin-bottom:0;color:#484848;text-align:right;">
                                            WEB8974635
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <!-- ========= Divider ========= -->

                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" width="100%" align="center">
                                <tr>
                                    <td height="20"></td>
                                </tr>
                                <tr>
                                    <td style="border-bottom:1px solid #f8f8f8;" height="1"></td>
                                </tr>
                            </table>

                        </td>
                    </tr>

                    <!-- ========= Intro text ========= -->

                    <tr>
                        <td style="background:#f7f7f7;padding:35px 0;border-top:1px solid #eeeeee;">
                            <table cellpadding="0" cellspacing="0" class="table-mobile-small" align="center">

                                <tr>
                                    <td colspan="2">
                                        <p style="font-family:sans-serif;font-size:22px;font-weight:bold;text-transform:none;margin-top:0;margin-bottom:10px;color:#464951;text-align:left;">
                                            Your order is completed!!
                                        </p>
                                        <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:20px;color:#464951;text-align:left;">
                                            Dear costumer, your payment for your online order placed on Divano Furniture Store order and has been approved order reference number: <strong>WEB8974635</strong>.
                                            Please note that we will appear on your card statement. To get further payment support for your purchase, please sign-up
                                            using your email address at
                                            <a href="#" style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:0;color:#3a3d45;text-decoration:underline;">
                                                Divano Furniture Store
                                            </a>
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <!-- ========= User info ========= -->

                    <tr>
                        <td style="background:#ffffff;padding:35px 0;border-top:1px solid #eeeeee;border-bottom:1px solid #eeeeee;">
                            <table cellpadding="0" cellspacing="0" class="table-mobile-small" align="center">
                                <tr>
                                    <td width="50%" valign="top">
                                        <table cellpadding="0" cellspacing="0" width="100%" align="center">
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:22px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>Shipping info</strong>
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>Name:</strong> John Doe
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>Phone:</strong> +122 523 352
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>Email:</strong> johndoe@company.com
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>Address:</strong> 795 Folsom Ave, Suite 600
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>City:</strong> San Francisco, California
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>Zip:</strong> 94107
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table cellpadding="0" cellspacing="0" width="100%" align="center">
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:22px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>Order details</strong>
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>Order no.:</strong> 52522-63259226
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>Order date :</strong> 06/30/2017
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>Transaction ID :</strong> 2265996
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>Transaction time :</strong> 06/30/2017 at 00:59
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>Cart details:</strong> **** **** **** 5446
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #f5f5f5;">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#3a3d45;text-align:left;">
                                                        <strong>Invoice total:</strong> $ 1259,00
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <!-- ========= Booking details ========= -->

                    <tr>
                        <td style="background-color:#ffffff;">

                            <table cellpadding="0" cellspacing="0" width="100%" align="center">

                                <tbody>

                                    <!----------- product table header ----------->

                                    <tr class="product-header">
                                        <td width="180" valign="middle" style="background-color:#f7f7f7;width:180px;">
                                            <p style="font-family:sans-serif;font-size:10px;font-weight:bold;text-transform:uppercase;margin:0;color:#3a3d45;text-align:left;">
                                                Product
                                            </p>
                                        </td>
                                        <td valign="middle" style="background-color:#f7f7f7;">
                                            <p style="font-family:sans-serif;font-size:10px;font-weight:bold;text-transform:uppercase;margin:0;color:#3a3d45;text-align:left;">
                                                Quantity
                                            </p>
                                        </td>
                                        <td valign="middle" align="right" style="background-color:#f7f7f7;">
                                            <p style="font-family:sans-serif;font-size:10px;font-weight:bold;text-transform:uppercase;margin:0;color:#3a3d45;text-align:right;">
                                                Price
                                            </p>
                                        </td>
                                    </tr>

                                    <!--product-->

                                    <tr>
                                        <td width="200" valign="middle" class="product-image" style="width:200px;">
                                            <a href="#" style="margin:0;padding:0;text-decoration:none;">
                                                <img src="assets/images/product-1.jpg" alt="" width="180" />
                                            </a>
                                        </td>
                                        <td width="300" valign="middle" class="product-title">
                                            <p style="font-family:sans-serif;font-size:18px;font-weight:bold;text-transform:uppercase;margin:0;color:#3a3d45;text-align:left;">
                                                Sophie Sofa  
                                            </p>
                                            <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#60636b;text-align:left;">
                                                Category item
                                            </p>
                                        </td>
                                        <td width="100" valign="middle" class="product-price">
                                            <p style="font-family:sans-serif;font-size:18px;font-weight:bold;text-transform:uppercase;margin:0;color:#3a3d45;text-align:right;">
                                                $ 1.998
                                            </p>
                                            <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#60636b;text-align:right;text-decoration:line-through;">
                                                $ 2.666
                                            </p>
                                        </td>
                                    </tr>

                                    <!--product-->

                                    <tr>
                                        <td width="200" valign="middle" class="product-image" style="width:200px;">
                                            <a href="#" style="margin:0;padding:0;text-decoration:none;">
                                                <img src="assets/images/product-2.jpg" alt="" width="180" />
                                            </a>
                                        </td>
                                        <td width="300" valign="middle" class="product-title">
                                            <p style="font-family:sans-serif;font-size:18px;font-weight:bold;text-transform:uppercase;margin:0;color:#3a3d45;text-align:left;">
                                                Chair Nora
                                            </p>
                                            <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#60636b;text-align:left;">
                                                Category item
                                            </p>
                                        </td>
                                        <td width="100" valign="middle" class="product-price">
                                            <p style="font-family:sans-serif;font-size:18px;font-weight:bold;text-transform:uppercase;margin:0;color:#3a3d45;text-align:right;">
                                                $ 1.998
                                            </p>
                                            <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#60636b;text-align:right;text-decoration:line-through;">
                                                $ 2.666
                                            </p>
                                        </td>
                                    </tr>

                                    <!--product-->

                                    <tr>
                                        <td width="200" valign="middle" class="product-image" style="width:200px;">
                                            <a href="#" style="margin:0;padding:0;text-decoration:none;">
                                                <img src="assets/images/product-3.jpg" alt="" width="180" />
                                            </a>

                                        </td>
                                        <td width="300" valign="middle" class="product-title">
                                            <p style="font-family:sans-serif;font-size:18px;font-weight:bold;text-transform:uppercase;margin:0;color:#3a3d45;text-align:left;">
                                                Grace Kitchen
                                            </p>
                                            <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#60636b;text-align:left;">
                                                Category item
                                            </p>
                                        </td>
                                        <td width="100" valign="middle" class="product-price">
                                            <p style="font-family:sans-serif;font-size:18px;font-weight:bold;text-transform:uppercase;margin:0;color:#3a3d45;text-align:right;">
                                                $ 1.998
                                            </p>
                                            <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin:0;color:#60636b;text-align:right;text-decoration:line-through;">
                                                $ 2.666
                                            </p>
                                        </td>
                                    </tr>
                                </tbody>


                            </table>
                        </td>
                    </tr>

                    <!-- ========= Booking price ========= -->

                    <tr>
                        <td style="background-color:#f7f7f7;color:#3a3d45;padding:25px 0;" class="footer-content">

                            <table cellpadding="0" cellspacing="0" class="table-mobile-small" align="center">

                                <tr>
                                    <td style="padding-bottom:20px;">
                                        <table cellpadding="0" cellspacing="0" width="100%" align="center">
                                            <tr>
                                                <td width="50%" valign="top">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:0;padding:3px 0;color:#3a3d45;text-align:left;">
                                                        <strong>Discount 15%</strong>
                                                    </p>
                                                </td>
                                                <td width="50%" valign="top">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:0;padding:3px 0;color:#3a3d45;text-align:right;">
                                                        $ 159,00
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="50%" valign="top">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:0;padding:3px 0;color:#3a3d45;text-align:left;">
                                                        <strong>Shipping</strong>
                                                    </p>
                                                </td>
                                                <td width="50%" valign="top">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:0;padding:3px 0;color:#3a3d45;text-align:right;">
                                                        $ 30,00
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="50%" valign="top">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:0;padding:3px 0;color:#3a3d45;text-align:left;">
                                                        <strong>VAT / TAX</strong>
                                                    </p>
                                                </td>
                                                <td width="50%" valign="top">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:0;padding:3px 0;color:#3a3d45;text-align:right;">
                                                        $ 59,00
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>

                                <tr>
                                    <td style="padding-top:20px; border-top:1px solid #dddddd">
                                        <table cellpadding="0" cellspacing="0" width="100%" align="center">
                                            <tr>
                                                <td width="50%" valign="top">
                                                    <p style="font-family:sans-serif;font-size:28px;font-weight:bold;text-transform:none;margin-top:0;margin-bottom:0;padding:0;color:#3a3d45;text-align:left;">
                                                        <strong>Total price</strong>
                                                    </p>
                                                </td>
                                                <td width="50%" valign="top">
                                                    <p style="font-family:sans-serif;font-size:28px;font-weight:bold;text-transform:none;margin-top:0;margin-bottom:0;padding:0;color:#3a3d45;text-align:right;">
                                                        $ 1259,00
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="50%" valign="top">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:0;padding:0;color:#a6acbb;text-align:left;">
                                                        <strong>You save</strong>
                                                    </p>
                                                </td>
                                                <td width="50%" valign="top">
                                                    <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:0;padding:0;color:#a6acbb;text-align:right;">
                                                        $ 159,00
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>


                            </table>
                        </td>
                    </tr>

                    <tr>
                        <td style="padding-top:20px;">

                            <table cellpadding="0" cellspacing="0" class="table-mobile-small" align="center">
                                <tr>
                                    <td>
                                        <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:20px;padding:0;color:#484848;text-align:center;">
                                            Payments should be made within 30 days with one of the options below, or you can enter any note here if necessary, you have much space:
                                        </p>
                                        <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:0;padding:0;color:#484848;text-align:center;">
                                            <strong>Payment Methods:</strong> Cheque, PayPal, WesternUnion <br />
                                            <strong>We accept:</strong> MasterCard, Visa, AmericanExpress <br />
                                        </p>
                                    </td>
                                </tr>
                            </table>

                        </td>
                    </tr>

                    <tr>
                        <td height="25"></td>
                    </tr>
                </table>

                <!-- ========= Footer ========= -->

                <table cellpadding="0" cellspacing="0" class="table-mobile-small" align="center">
                    <tr>
                        <td style="padding:25px 0;">
                            <p style="font-family:sans-serif;font-size:14px;font-weight:bold;text-transform:none;margin-top:0;margin-bottom:20px;padding:0;color:#3a3d45;text-align:center;">
                                THANK YOU VERY MUCH FOR CHOOSING OUR PRODUCT
                            </p>
                            <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:20px;padding:0;color:#aaaaaa;text-align:center;">
                                You are receiving this because you are a current subscriber, <br />or have bought from our website.
                            </p>
                            <p style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:20px;padding:0;color:#3a3d45;text-align:center;">
                                <a style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:0;color:#3a3d45;text-decoration:underline;" href="#">Subscribe</a> |
                                <a style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:0;color:#3a3d45;text-decoration:underline;" href="#">Unsubscribe</a> |
                                <a style="font-family:sans-serif;font-size:14px;font-weight:normal;text-transform:none;margin-top:0;margin-bottom:0;color:#3a3d45;text-decoration:underline;" href="#">Forward</a>
                            </p>
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
    </table>

    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.include.js"></script>
</body>
</html>
