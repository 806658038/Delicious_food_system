<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="https://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="https://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<style>

    table{
        font-size: 12px;
        font-family: Arial;
    }
    a{
        color:#999;
    }
    a:hover{
        text-decoration:none;
        color: #C40000;
    }
    div.productParamter {
        color: #999999;
        font-weight: bold;
        margin-bottom: 20px;
    }
    img.cateye {
        margin-left: 20px;
    }
    div.categorySortBar {
        background-color: #FAF9F9;
        margin: 40px 20px 20px 20px;
        padding: 4px;
    }

    div.orderListItemPriceWithTransport {
        color: #6C6C6C;
        font-size: 12px;
    }
    td.orderListItemProductRealPriceTD {
        text-align: center;
    }
    td.registerTableLeftTD {
        width: 300px;
        text-align: right;
    }
    tbody.productListTableTbody td {
        text-align: center;
    }

    div.productUnit span.productReview {
        border-left-width: 1px;
        border-left-style: solid;
        border-left-color: #EEEEEE;
        border-right-width: 1px;
        border-right-style: solid;
        border-right-color: #EEEEEE;
    }
    span.cartProductItemOringalPrice {
        text-decoration: line-through;
        color: #9C9C9C;
        display: block;
        font-weight: bold;
        font-size: 14px;
    }
    div.productsAsideCategorys div.row div.seperator {
        margin-top: 20px;
        border-bottom-style: dashed;
        border-bottom-width: 1px;
        border-bottom-color: #e7e7e7;
    }
    img.tmallbuy {
        width: 15px;
    }
    div.infoInimgAndInfo span.promotionPriceDesc {
        color: #999999;
        display: inline-block;
        width: 68px;
        position: relative;
        left: 0px;
        top: -10px;
    }
    button.orderListItemConfirm:hover {
        background-color: #118ADB;
    }
    div.reviewDiv {
        max-width: 1013px;
        margin: 10px auto;
    }
    a.cartProductLink {
        color: #3C3C3C;
    }
    button.confirmPayButton {
        margin: 20px 80px;
        width: 67px;
        height: 30px;
        border: 1px solid #E67C00;
        background-color: #F4A21D;
        border-radius: 4px;
        color: white;
    }
    span.orderItemProductPrice, span.orderItemProductNumber {
        color: #000000;
    }
    div.reviewStasticsLeftFoot {
        height: 6px;
        border-left: 1px solid #D5D4D4;
        border-bottom: 1px solid #D5D4D4;
        background-color: #F6F5F1;
    }
    div.reviewProductInfoRightDiv {
        overflow: hidden;
        border-top: 1px solid #E7E7E7;
        padding: 30px 20px;
    }
    div.footer_desc {
        border-top-style: solid;
        border-top-width: 1px;
        border-top-color: #e7e7e7;
        padding-top: 30px;
        margin: 0px 20px;
    }
    div.footer_desc div.descColumn span.descColumnTitle {
        color: #646464;
        font-weight: bold;
        font-size: 16px;
    }
    tr.orderItemTR td {
        padding: 10px 0px;
    }
    div.loginInput input {
        display: inline-block;
        border: 0px solid transparent;
        width: 244px;
        height: 30px;
        position: relative;
        left: 6px;
        top: 6px;
    }
    div.registerErrorMessageDiv {
        width: 600px;
        margin: 0px auto;
        height: 50px;
        visibility: hidden;
    }
    table.categorySortBarTable td.grayColumn {
        background-color: #F1EDEC;
    }
    div.paedCheckLinkDiv {
        margin-left: 38px;
    }
    table.categorySortTable td:hover {
        background-color: #F1EDEC;
    }
    div.productReviewItemDate {
        margin: 15px 0px 0px 0px;
        color: #CCCCCC;
    }
    span.userInfoGrayPart {
        color: #999999;
    }
    div.cartTitle button {
        background-color: #AAAAAA;
        border: 1px solid #AAAAAA;
        color: white;
        width: 53px;
        height: 25px;
        border-radius: 2px;
    }
    div.infoInimgAndInfo span.serviceCommitmentLink a {
        color: #666666;
    }
    div.cartFoot {
        background-color: #E5E5E5;
        line-height: 50px;
        margin: 20px 0px;
        color: black;
        padding-left: 20px;
    }
    div.infoInimgAndInfo div.productSubTitle {
        color: #DD2727;
        font-size: 12px;
        margin: 0px 10px;
    }
    a.orderItemProductLink:hover {
        color: #666666;
        text-decoration: underline;
    }
    a.productLink {
        height: 34px;
    }
    div.footer_desc div.descColumn {
        width: 20%;
        float: left;
        padding-left: 15px;
    }
    td.orderItemOrderInfoPartTD {
        border: solid 1px #ECECEC;
    }
    div.productNumber span.arrow {
        display: inline-block;
        width: 22px;
        height: 32px;
        position: relative;
        top: 8px;
    }
    span.confirmMoney {
        display: block;
        color: #FF6600;
        font-weight: bold;
        font-size: 20px;
        margin: 10px;
    }
    div.homepageCategoryProducts {
        background-color: #F5F5F5;
        padding: 50px 10px 50px 10px;
        margin: 10px auto;
        max-width: 1013px;
    }
    div.reviewStasticsRight {
        overflow: hidden;
    }
    div.reviewDivlistReviewsEach {
        padding: 20px;
        border-bottom: 1px solid #ECECEC;
    }
    div.infoInimgAndInfo span.originalPriceYuan {
        font-family: Arial;
        font-size: 12px;
    }
    img.orderItemImg {
        width: 50px;
        height: 50px;
        border: 1px solid #E9E9E9;
    }

    div.orderListItemProductLinkInnerDiv {
        position: absolute;
        bottom: 0px;
    }
    table.addressTable {
        margin: 20px 20px;
        width: 600px;
    }
    div.imgAndInfo div.smallImageDiv {
        width: 80%;
        margin: 20px auto;
    }
    div.reviewStasticsLeftContent {
        line-height: 29px;
        border-left: 1px solid #D5D4D4;
        border-right: 1px solid #D5D4D4;
        background-color: #F6F5F1;
        text-align: center;
        font-size: 14px;
        color: #363535;
        font-weight: bold;
    }
    button.redButton {
        color: white;
        background-color: #C40000;
        font-size: 14px;
        font-weight: bold;
    }
    table.addressTable td input {
        border: 1px solid #AFAFAF;
        width: 200px;
    }
    div.orderItemTotalSumDiv {
        margin: 40px;
        height: 40px;
    }
    div.orderListItemProductLinkOutDiv {
        position: relative;
        height: 80px;
    }
    a.marketLink:hover {
        color: black;
        font-size: 12px;
        text-decoration: underline;
        font-family: 宋体;
        font-weight: normal;
    }
    div.license {
        margin-left: 10px;
        padding-bottom: 30px;
    }
    div.aliPayPageLogo {
        margin: 20px;
    }
    div.productReviewItem {
        border-bottom: 1px solid #E3E3E3;
        margin: 10px 0px;
    }
    a.payedCheckLink:hover {
        color: #2D8CBA;
        text-decoration: underline;
    }
    span.reviewProductInfoTablePrice {
        color: #C40000;
        font-size: 20px;
        font-weight: bold;
    }
    div.reviewStasticsLeft {
        width: 180px;
        float: left;
    }
    div.categoryWithCarousel {
        width: 100%;
    }
    div.categoryWithCarousel div.categoryMenu {
        width: 200px;
        background-color: #e2e2e3;
        margin-left: 20px;
        position: absolute;
        left: 0;
        top: 0;
        z-index: 1;
    }
    div.productParamterPart {
        border: 1px solid #DFDFDF;
        padding: 40px;
    }
    span.cartTitlePrice {
        color: #C40000;
        font-size: 14px;
        font-weight: bold;
        margin-left: 5px;
        margin-right: 3px;
    }
    div.orderType div.selectedOrderType {
        border-bottom: 2px solid #C40000;
    }
    div.infoInimgAndInfo div.productNumber {
        color: #999999;
    }
    td.orderItemDeleteTD {
        text-align: right;
    }
    div.confirmPayOrderItemDiv {
        margin: 0px 20px;
    }
    div.productUnit:hover {
        width: 225px;
        border: 3px solid #C40000;
        padding: 0px;
    }
    table.addressTable td textarea {
        border: 1px solid #AFAFAF;
        margin-bottom: 10px;
        width: 400px;
    }
    div.categoryWithCarousel div.eachCategory:hover {
        background-color: white;
    }
    div.imgAndInfo img.smallImage {
        width: 60px;
        height: 60px;
        border: 2px solid white;
    }
    div.categoryWithCarousel div.headbar {
        background-color: #DD2727;
    }
    div.productUnitFrame:hover{
        border:1px solid #C40000;
    }
    a.noRightborder {
        border-right-width: 0px !important;
    }
    div.makeReviewText {
        font-size: 16px;
        color: #333333;
        font-weight: bold;
        margin: 20px 40px;
    }
    div.productsAsideCategorys a {
        color: #999;
        font-size: 14px;
        margin: 8px;
    }
    div.imgAndInfo img.smallImage:hover {
        border: 2px solid black;
    }
    a.productItemDescLink {
        display: inline-block;
        height: 66px;
    }
    nav.top div.row div {
        margin: 5px 0px;
    }
    div.productItem  img:hover {
        opacity: 0.7;
        filter: alpha(opacity = 70);
    }

    div.reviewStasticsDiv {
        margin-top: 20px;
    }
    div.buyPageDiv {
        margin: 20px auto;
        max-width: 1013px;
    }
    div.infoInimgAndInfo span.serviceCommitmentDesc {
        color: #999999;
    }
    div.productDetailDiv {
        width: 790px;
        margin: 40px auto;
    }
    table.cartProductTable {
        width: 100%;
        font-size:12px;
    }
    table.orderListTitleTable {
        border: 1px solid #E8E8E8;
        width: 100%;
        margin: 20px 0px;
        background-color: #F5F5F5;
        text-align: center;
    }
    div.productReviewItem div.productReviewItemUserInfo {
        color: #404040;
        margin: 5px 20px;
        overflow: hidden;
        padding: 20px 0;
    }
    div.loginDivInProductPageModalDiv {
        width: 350px;
    }
    span.productReviewTopReviewLinkNumber {
        color: #3355B9;
    }
    div.productUnit img.productImage {
        width: 100%;
        height: 190px;
    }
    div.reviewUserInfo {
        color: #333333;
    }
    div.productItem:hover {
        border: 1px solid #C40000;
    }
    div.license span {
        color: #A4A4A4;
    }
    a.selected:after {
        border-color: #b00000 transparent transparent;
        border-style: solid;
        border-width: 5px;
        content: "";
        display: block;
        width: 0;
        height: 0;
        position: absolute;
        top: -1px;
        left: 50%;
        margin-left: -5px;
    }
    button.addCartButton span.glyphicon {
        font-size: 12px;
        margin-right: 8px;
    }
    td.orderItemProductInfo img {
        height: 16px;
    }
    a.payedCheckLink {
        color: #2D8CBA;
    }
    div.buyDiv {
        margin: 20px auto;
        text-align: center;
    }
    div.warningDiv {
        color: black;
    }
    table.makeReviewTable td {
        border: 1px solid #E7E7E7;
        padding: 10px;
        background-color: white;
    }
    div.categoryPageDiv {
        max-width: 1013px;
        margin: 10px auto;
    }
    div.reviewStasticsLeftTop {
        background-color: #C40000;
        height: 6px;
    }
    table.registerTable input {
        border: 1px solid #DEDEDE;
        width: 213px;
        height: 36px;
        font-size: 14px;
    }
    span.cartProductItemSmallSumPrice {
        font-family: Arial;
        font-size: 14px;
        font-weight: bold;
        color: #C40000;
    }
    table.confirmPayOrderItemTable {
        border: 1px solid #DDDDDD;
        width: 100%;
    }
    div.reviewProductInfoRightText {
        color: black;
        font-size: 16px;
        font-weight: bold;
    }
    div.searchDiv button {
        width: 110px;
        border: 1px solid transparent;
        background-color: #C40000;
        color: white;
        font-size: 20px;
        font-weight: bold;
    }
    div.infoInimgAndInfo div.originalDiv {
        margin-top: 5px;
    }
    div.payedTextDiv span {
        font-weight: bold;
        font-size: 14px;
        margin-left: 10px;
    }
    div.cartFoot button {
        background-color: #AAAAAA;
        border: 0px solid #AAAAAA;
        color: white;
        width: 120px;
        height: 50px;
        font-size: 20px;
        text-align: center;
    }
    div.confirmPayPageDiv {
        max-width: 1013px;
        margin: 10px auto;
    }
    table.cartProductTable th {
        font-weight: normal;
        color: #3C3C3C;
        padding: 20px 20px;
    }
    div.categoryWithCarousel div.rightMenu a {
        font-size: 16px;
        color: white;
    }
    td.orderItemFirstTD, td.orderItemLastTD {
        border-bottom: 0px solid black !important;
    }
    div.license div.copyRightYear {
        margin: 10px 0px;
        color: #686868;
    }
    div.orderType a:hover {
        color: #C40000;
        text-decoration: none;
    }
    button.orderListItemConfirm {
        background-color: #66B6FF;
        border-radius: 2px;
        color: white;
        font-size: 12px;
        font-weight: bold;
        border-width: 0px;
        padding: 6px 12px;
    }
    div.searchDiv input {
        width: 275px;
        border: 1px solid transparent;
        height: 36px;
        margin: 1px;
    }
    div.infoInimgAndInfo span.originalPrice {
        font-family: Arial;
        font-size: 12px;
        color: #333333;
        text-decoration: line-through;
    }
    div.footer {
        margin: 0px 0px;
        border-top-style: solid;
        border-top-width: 1px;
        border-top-color: #e7e7e7;
    }

    div.buyPageDiv button {
        display: inline-block;
        margin: 0px 10px;
        width: 180px;
        height: 40px;
    }
    td.orderItemProductInfoPartTD {
        border-bottom: solid 1px #ECECEC;
    }
    div.orderType a {
        border-right: 1px solid #E8E8E8;
        float: left;
        font-size: 16px;
        font-weight: bold;
        color: black;
        margin-bottom: 10px;
        padding: 0px 20px;
        text-decoration: none;
    }
    img.simpleLogo {
        position: absolute;
        left: 10px;
        top: 50px;
        width: 140px;
    }
    table.cartProductTable th.operation{
        width:30px;
    }
    div.infoInimgAndInfo span.productNumberSettingSpan {
        border: 1px solid #999;
        display: inline-block;
        width: 43px;
        height: 32px;
        padding: 6px 0;
    }
    div.reviewProductInfoRightBelowDiv {
        border: 1px solid #F6F5F3;
        background-color: #FDFBFA;
        height: 166px;
        padding: 16px 81px;
    }
    div.warningDiv {
        margin: 23px 45px;
    }
    span.confirmPayOrderItemSumPrice {
        color: #C40000;
    }
    div.confirmPayOrderDetailDiv {
        margin: 40px;
    }
    img.cartProductItemIfSelected, img.selectAllItem {
        cursor: pointer;
    }
    div.orderType div {
        border-bottom: 2px solid #E8E8E8;
        float: left;
    }
    div.infoInimgAndInfo div.productPriceDiv {
        height: 102px;
        padding: 10px;
        color: #666666;
    }
    div.categoryWithCarousel div.eachCategory {
        line-height: 30px;
        padding-left: 10px;
        font-size: 14px;
    }
    div.carousel-of-product {
        max-width: 100%;
        height: 510px;
    }
    div.productItem span.productPrice {
        font-size: 16px;
        color: #FF003A;
        display: block;
        padding-left: 16px;
        margin-top: -10px;
    }
    table.reviewProductInfoTable {
        margin: 20px 10px;
    }
    div.reviewProductInfoImg {
        border: 1px solid #E7E7E7;
        width: 464px;
        text-align: center;
        float: left;
    }
    div.productUnit span.productUnitDesc {
        font-size: 12px;
        color: #666666;
        display: block;
        padding: 16px;
    }
    table.categorySortBarTable td a {
        color: #806F66;
    }
    img.logo {
        position: absolute;
        left: 0px;
        top: 30px;
    }
    div.eachHomepageCategoryProducts {
        margin: 0px 0px 40px 0px;
    }
    div.orderItemSumDiv span {
        color: #999999;
    }
    img.cartProductImg {
        padding: 1px;
        border: 1px solid #EEEEEE;
        width: 80px;
        height: 80px;
    }
    div.loginErrorMessageDiv div.alert {
        padding: 5px !important;
    }
    div.left-mark {
        display: inline-block;
        height: 20px;
        vertical-align: top;
        width: 5px;
        background-color: #19C8A9;
    }
    div.loginInput span.loginInputIcon {
        margin: 0px;
        background-color: #CBCBCB;
        width: 40px;
        height: 40px;
    }
    div.productReviewContentPart {
        padding-top: 50px;
    }
    a.cartProductLink:hover {
        color: #C40000;
        text-decoration: underline;
    }
    div.productUnit {
        width: 225px;
        height: 338px;
        border: 3px solid #fff;
        background-color: white;
        margin: 12px 5px;
        float: left;
        padding: 0px;
    }
    div.simpleSearchDiv {
        background-color: #C40000;
        width: 300px;
        margin: 10px 20px 40px;
        padding: 1px;
        height: 40px;
        display: block;
    }
    div.aliPayPageDiv {
        text-align: center;
        padding-bottom: 40px;
        max-width: 1013px;
        margin: 10px auto;
    }
    button.buyButton {
        border: 1px solid #C40000;
        background-color: #FFEDED;
        text-align: center;
        line-height: 40px;
        font-size: 16px;
        color: #C40000;
        font-family: arial;
    }
    span.reviewStasticsNumber {
        color: #284CA5;
    }
    span.cartSumPrice {
        color: #C40000;
        font-weight: bold;
        font-size: 20px;
    }
    div.categoryWithCarousel div.rightMenu img {
        height: 30px;
    }
    table.productListTable {
        width: 100%;
        border-collapse: separate;
    }
    div.productReviewDiv {
        width: 790px;
        margin: 40px auto;
    }
    table.orderListTitleTable td {
        padding: 12px 0px;
    }
    table.reviewProductInfoTable td {
        padding-bottom: 5px;
        color: #999999;
    }
    div.categoryWithCarousel div.head {
        width: 200px;
        background-color: #C60A0A;
        height: 36px;
        line-height: 36px;
        font-size: 16px;
        font-weight: bold;
        color: white;
        margin-left: 20px;
        display: inline-block;
    }
    div.orderFinishDiv {
        border: 1px solid #E5E5E5;
        padding: 40px;
        max-width: 1013px;
        margin: 10px auto;
    }
    nav.top a:hover {
        color: #C40000;
    }
    div.infoInimgAndInfo span.originalPriceDesc {
        color: #999999;
        display: inline-block;
        width: 68px;
    }
    a.selected:before {
        border-color: #b00000;
        border-style: solid;
        border-width: 1px;
        content: "";
        display: block;
        width: 90px;
        height: 0;
        position: absolute;
        top: -1px;
        margin-left: -1px;
    }
    div.orderFinishDiv span {
        font-size: 14px;
        color: black;
        font-weight: bold;
        margin-left: 20px;
        padding-top: 20px;
    }
    div.payedAddressInfo {
        padding: 26px 35px;
    }
    table.orderListItemTable {
        border: 2px solid #ECECEC;
        width: 100%;
        margin: 20px 0px;
    }
    div.searchDiv {
        background-color: #C40000;
        width: 400px;
        margin: 50px auto;
        padding: 1px;
        height: 40px;
        display: block;
    }
    div.productUnit span.productDealNumber {
        font-weight: bold;
        color: #B57C5B;
    }
    div.confirmPayTime2 {
        position: absolute;
        top: 100px;
        left: 190px;
    }
    table.cartProductTable th.selectAndImage{
        width:100px;
    }
    .show {
        border: 1px dotted skyblue !important;
    }
    div.categoryWithCarousel div.eachCategory span {
        margin-right: 10px;
    }
    table.categorySortBarTable {
        border-collapse: collapse;
        display: inline-table;
    }
    div.orderItemSumDiv {
        padding: 20px;
        border-top: 2px solid #B4D0FF;
        background-color: #F2F6FF;
        height: 50px;
    }
    div.registerDiv {
        margin: 10px 20px;
        text-align: center;
    }
    div.productUnit a.productLink {
        margin: 10px 0px;
        color: #333333;

        display: block;
    }
    .redColor {
        color: #C40000;
    }
    div.makeReviewDiv {
        border: 1px solid #D1CCC8;
        margin: 20px 0px;
        background-color: #EFEFEF;
    }
    div.productNumber span.updownMiddle {
        height: 4px;
        display: block;
    }
    table.orderListItemTable td {
        padding: 8px 10px;
    }
    span.reviewProductInfoTableSellNumber {
        color: #C40000;
        font-size: 14px;
        font-weight: bold;
    }
    span.orderItemUnitSum {
        color: #CC0000;
        font-weight: bold;
    }
    a.orderItemProductLink {
        color: #666666;
        display: block;
    }
    div.footer_desc a {
        display: block;
        padding-top: 3px;
    }
    td.orderListItemNumberTD {
        text-align: center;
    }
    div.productUnit div.productInfo {
        border-top-width: 1px;
        border-top-style: solid;
        border-top-color: #EEEEEE;
    }
    div.categoryMenu a {
        color: #000;
    }
    nav.top {
        padding-top: 5px;
        padding-bottom: 5px;
        border-bottom-style: solid;
        border-bottom-width: 1px;
        border-bottom-color: #e7e7e7;
    }
    div.searchBelow {
        margin-top: 3px;
        margin-left: -20px;
    }
    div.buyDiv button {
        display: inline-block;
        margin: 0px 10px;
        width: 180px;
        height: 40px;
    }
    div.productsAsideCategorys div.row {
        margin: 20px 80px 0px 80px;
    }
    span.redStar {
        color: red;
        font-size: 8px;
    }
    div.loginInput span, div.loginInput input {
        display: inline-block;
    }
    div.cartProductChangeNumberDiv a {
        width: 14px;
        display: inline-block;
        text-align: center;
        color: black;
        text-decoration: none;
    }
    div.productDetailTopPart {
        border: 1px solid #DFDFDF;
        border-left-width: 0px;
    }
    div.infoInimgAndInfo div.productSaleAndReviewNumber div {
        display: inline-block;
        width: 49%;
        text-align: center;
        color: #999999;
        font-size: 12px;
    }
    div.address {
        margin: 20px 5px;
        text-align: left;
    }
    a.productDetailTopReviewLink {
        padding: 0px 20px;
        border-right: 1px dotted #D2D2D2;
        color: #333333;
    }
    span.wangwangGif {
        display: inline-block;
        width: 25px;
        height: 25px;
        background-repeat: no-repeat;
        background-color: transparent;
        background-attachment: scroll;
        background-position: -83px -0px;
        position: relative;
        top: 8px;
        left: 2px;
    }
    table.categorySortBarTable td a:hover {
        color: #C40000;
    }
    div.confirmPayTime3 {
        position: absolute;
        top: 100px;
        left: 400px;
    }
    span.loginInputIcon span.glyphicon {
        font-size: 22px;
        position: relative;
        left: 9px;
        top: 9px;
        color: #606060;
    }
    div.cartProductChangeNumberDiv input {
        border: solid 1px #AAAAAA;
        width: 42px;
        display: inline-block;
    }
    div.copyright span.slash {
        color: white;
    }
    div.infoInimgAndInfo input.productNumberSetting {
        border: 0px;
        height: 80%;
        width: 80%;
    }
    div.registerSuccessDiv {
        margin: 10px 20px;
        background-color: #F3FDF6;
        border: 1px solid #DEF3E6;
        font-size: 16px;
        color: #3C3C3C;
        padding: 20px 130px;
    }
    div.infoInimgAndInfo span.promotionPrice {
        color: #c40000;
        font-family: Arial;
        font-size: 30px;
        font-weight: bold;
    }
    div.confirmPayOrderItemText {
        margin: 20px 10px;
        font-size: 14px;
        font-weight: bold;
        color: black;
    }
    nav.top span, nav.top a {
        color: #999;
        margin: 0px 10px 0px 10px;
    }
    table.categorySortBarTable input {
        border-width: 0px;
        height: 100%;
        width: 50px;
    }
    div.reviewStasticsRightEmpty {
        height: 35px;
    }
    div.orderType div.selectedOrderType a {
        color: #C40000;
    }
    div.confirmPayOrderInfoText {
        margin: 10px 10px 0px 10px;
        font-size: 16px;
        font-weight: bold;
        color: black;
        padding-bottom: 15px;
        border-bottom: 1px solid #ADC8E6;
    }
    div.confirmPayOrderItemText {
        color: black;
        font-weight: normal;
    }
    div.productUnit a.productLink:hover {
        text-decoration: underline;
        color: #C40000;
    }
    div.infoInimgAndInfo div.productTitle {
        color: black;
        font-size: 16px;
        font-weight: bold;
        margin: 0px 10px;
    }
    table.productListTable tr.rowborder td {
        background-color: #b2d1ff;
        border-right: 2px solid #fff;
        height: 3px;
    }
    span.cartSumNumber {
        color: #C40000;
        font-weight: bold;
        font-size: 16px;
    }
    td.registerButtonTD {
        text-align: center;
    }
    div.deleteConfirmModalDiv {
        width: 350px;
    }
    div.confirmPayTime1 {
        position: absolute;
        top: 100px;
        left: -20px;
    }
    div.productNumber span.glyphicon {
        font-size: 6px;
    }
    span.confirmMoneyText {
        color: #4D4D4D;
    }
    span.cartProductItemPromotionPrice {
        font-family: Arial;
        font-size: 14px;
        font-weight: bold;
        color: #C40000;
    }
    table.confirmPayOrderDetailTable td {
        padding: 8px;
        color: black;
        font-size: 14px;
    }
    button.orderListItemReview {
        border: 1px solid #DCDCDC;
        background-color: #fff;
        border-radius: 2px;
        color: #3C3C3C;
        font-size: 12px;
        font-weight: bold;
        padding: 6px 12px;
    }
    div.cartProductLinkInnerDiv {
        position: absolute;
        bottom: 0;
        height: 20px;
    }
    img.endpng {
        display: block;
        width: 82px;
        margin: 0 auto;
    }
    div.productUnit span.wangwang {
        padding-left: 3px;
    }
    nav.top {
        background-color: #f2f2f2;
    }
    table.confirmPayOrderItemTable th, table.confirmPayOrderItemTable td {
        text-align: center;
    }
    textarea.leaveMessageTextarea {
        border: 1px solid #FFAD35;
        width: 250px;
        height: 60px;
        resize: none;
    }
    div.productReviewTopPart {
        border: 1px solid #DFDFDF;
    }
    div.categoryPictureInProductPageDiv {
        width: 100%;
        margin: 10px auto;
        text-align: center;
    }
    table.confirmPayOrderItemTable tr {
        border: 1px solid #DDDDDD;
    }
    div.categoryWithCarousel div.rightMenu span {
        margin: 0px 20px 0px 20px;
    }
    div.makeReviewButtonDiv {
        background-color: white;
        text-align: center;
        padding: 15px;
    }
    div.orderItemTotalSumDiv span {
        color: #999999;
    }
    tbody.productListTableTbody td.orderItemProductInfo {
        text-align: left;
    }
    span.orderListItemNumber {
        color: #3C3C3C;
    }
    div.loginInput {
        border: 1px solid #CBCBCB;
        margin: 20px 0px;
    }
    div.payedTextDiv {
        height: 61px;
        background-color: #ECFFDC;
        padding: 17px 0px 0px 25px;
    }
    nav.top div.row div {
        background-color: lightgray;
        border: 1px solid gray;
        text-align: center;
    }
    div.simpleSearchDiv input {
        width: 225px;
        border: 1px solid transparent;
        height: 34px;
        margin: 2px;
    }
    table.registerTable td {
        padding: 10px 30px;
    }
    table.registerTable button {
        width: 170px;
        height: 36px;
        border-radius: 2px;
        color: white;
        background-color: #C40000;
        border-width: 0px;
    }
    tr.cartProductItemTR {
        border: 1px solid #CCCCCC;
    }
    div.infoInimgAndInfo {
        padding: 0px 20px;
        overflow: hidden;
    }
    tr.orderItemTR td {
        border-bottom: 1px solid #E5E5E5;
    }
    div.searchBelow span {
        color: #999;
    }
    div.confirmPayImageDiv div {
        color: #999999;
    }
    button.confirmPayButton:hover {
        background-color: #F6AE30;
    }
    div.orderListItemProductRealPrice {
        color: #3C3C3C;
        font-size: 14px;
        font-weight: bold;
    }
    div.cartProductChangeNumberDiv a {
        text-decoration: none;
    }
    div.reviewDivlistReviewsEach div {
        display: inline-block;
    }
    table.addressTable td {
        color: #333333;
        text-align: right;
        vertical-align: top;
        padding-right: 5px;
        text-align: left;
        height: 30px;
    }
    table.registerTable {
        color: #3C3C3C;
        font-size: 16px;
        table-layout: fixed;
        margin-top: 50px;
    }
    div.productsAsideCategorys a:hover {
        color: #C40000;
        text-decoration: none;
    }
    span.categoryTitle {
        font-size: 16px;
        margin-left: 30px;
        color: #646464;
        font-weight: bold;
    }
    table.addressTable td.firstColumn {
        width: 100px;
    }
    div.imgInimgAndInfo {
        width: 400px;
        float: left;
    }
    tr.cartProductItemTR td {
        padding: 20px 20px;
    }
    div.loginDivInProductPage {
        background-color: white;
        width: 350px;
        height: 400px;
        padding: 60px 25px 80px 25px;
    }
    div.footer div.copyright div.white_link {
        padding: 10px 0px;
        margin-left: 10px;
    }
    div.productReviewItemContent {
    }
    label.orderItemDeliveryLabel {
        color: #666666;
        font-family: 宋体;
        font-size: 12px;
        font-weight: normal;
    }
    img.loginBackgroundImg {
        display: block;
        margin: 0px auto;
    }
    div.categoryWithCarousel div.productsAsideCategorys {
        width: 800px;
        height: 510px;
        background-color: white;
        margin-left: 220px;
        display: none;
        position: absolute;
        left: 0;
        top: 0;
        z-index: 1;
    }

    div.categoryMenu a:hover {
        color: lightskyblue;
        text-decoration: none;
    }
    td.confirmPayOrderItemProductLink {
        text-align: left !important;
    }
    div.reviewStasticsFoot {
        background-color: #F6F5F1;
        border: 1px solid #D5D4D4;
        border-left-width: 0px;
        height: 6px;
    }
    td.registerTip {
        font-weight: bold;
    }
    span.orderItemTotalSumSpan {
        color: #C40000 !important;
        font-size: 22px;
        font-weight: bold;
        border-bottom: 1px dotted #F2F6FF;
    }
    div.productUnit span.productReviewNumber {
        font-weight: bold;
        color: #3388BB;
    }
    div.imgAndInfo {
        margin: 40px 20px;
    }
    table.categorySortBarTable td.priceMiddleColumn {
        width: 10px;
        vertical-align: middle;
        color: #CCCCCC;
    }
    div.infoInimgAndInfo span.juhuasuanTime {
        color: #FFC057;
        font-weight: bold;
    }
    select.orderItemDeliverySelect {
        width: 100px;
        height: 23px;
    }
    span.productDetailTopReviewLinkNumber {
        color: #3355B9;
    }
    table.confirmPayOrderItemTable thead {
        background-color: #E8F2FF;
        height: 33px;
    }
    span.orderListItemDelete {
        display: inline-block;
        margin: 0px 10px;
        color: #999999;
        font-size: 16px;
    }
    div.confirmPayButtonDiv {
        border: 1px solid #F58B0F;
        margin: 20px;
    }
    div.confirmPayImageDiv {
        margin: 40px auto 80px auto;
        width: 900px;
        position: relative;
    }
    img.carouselImage {
        height: 510px !important;
    }
    div.simpleLogo {
        padding: 32px 0px;
    }
    td.registerTableRightTD {
        width: 300px;
        text-align: left;
    }
    button.orderListItemReview:hover {
        border-color: #C40000;
        color: #C40000;
    }
    div.reviewDate {
        width: 100px;
    }
    nav.top span {
        margin-right: 20px;
    }
    div.infoInimgAndInfo span.juhuasuanBig {
        font-size: 18px;
        font-weight: bold;
        font-family: 黑体;
    }
    table.productListTable th {
        color: #999999;
        font-family: 宋体;
        font-weight: normal;
        font-size: 12px;
        text-align: center;
        padding-bottom: 5px;
    }
    button.addCartButton {
        border: 1px solid #C40000;
        background-color: #C40000;
        text-align: center;
        line-height: 40px;
        font-size: 16px;
        color: white;
        font-family: arial;
    }

    div.infoInimgAndInfo div.productSaleAndReviewNumber div:first-child {
        border-right-width: 1px;
        border-right-style: solid;
        border-right-color: #E5DFDA;
    }
    table.makeReviewTable textarea {
        border-width: 0px;
        resize: none;
        width: 420px;
        height: 120px;
    }
    table.orderListItemTable:hover {
        border: 2px solid #aaa !important;
    }
    table.makeReviewTable {
        margin: 20px 40px;
    }
    table.registerTable {
    }
    div.productNumber span.updown {
        border: 1px solid #999;
        display: block;
        width: 20px;
        height: 14px;
        text-align: center;
        line-height: 8px;
    }
    div.searchResultDiv {
        max-width: 1013px;
        margin: 10px auto;
        min-height: 300px;
    }
    img.catear {
        position: absolute;
        height: 15px;
        display: none;
    }
    div.payedSeperateLine {
        border-top: 1px dotted #D4D4D4;
        margin: 0px 31px;
    }
    div.infoInimgAndInfo div.promotionDiv {
        margin-top: 0px;
    }
    button.confirmPay {
        background-color: #00AAEE;
        border: 1px solid #00AAEE;
        text-align: center;
        line-height: 31px;
        font-size: 14px;
        font-weight: 700;
        color: white;
        width: 107px;
        margin-top: 20px;
    }
    span.reviewUserInfoAnonymous {
        color: #CCCCDD;
        margin-left: 5px;
    }
    div.addressTip, div.productListTip {
        color: #333333;
        font-size: 16px;
        font-weight: bold;
        text-align: left;
        margin-bottom: 30px;
    }
    div.serviceCommitment {
        margin: 20px 0px;
    }
    div.submitOrderDiv {
        height: 40px;
        margin: 20px 0px;
    }
    div.productItem span.productItemDesc {
        font-size: 12px;
        color: #666666;
        display: block;
        padding: 16px;
    }
    div.login_acount_text {
        color: #3C3C3C;
        font-size: 16px;
        font-weight: bold;
    }
    td.makeReviewTableFirstTD {
        background-color: #F6F6F6;
    }
    div.productUnit a.tmallLink {
        margin: 10px 0px;
        color: #999999;
        display: block;
        text-decoration: underline;
    }
    td.orderListItemButtonTD {
        text-align: center;
    }
    div.infoInimgAndInfo div.gouwujuanDiv {
        margin-top: 5px;
    }
    div.footer div.copyright div.white_link a {
        color: white;
        padding: 0px 5px;
    }
    table.confirmPayOrderDetailTable {
        width: 100%;
        border-top: 1px solid #DDDDDD;
    }
    div.productItem {
        width: 189px;
        height: 285px;
        border: 1px solid white;
        background-color: white;
        margin: 8px 4px;
        float: left;
        cursor: pointer;
    }
    div.productParamterList span {
        display: block;
        width: 220px;
        float: left;
        padding: 8px 0px;
        color: #666666;
    }
    div.infoInimgAndInfo div.productSaleAndReviewNumber {
        margin: 20px 0px;
        border-top-style: dotted;
        border-top-color: #C9C9C9;
        border-top-width: 1px;
        border-bottom-style: dotted;
        border-bottom-color: #C9C9C9;
        border-bottom-width: 1px;
        padding: 10px;
    }
    div.cartProductChangeNumberDiv {
        border: solid 1px #E5E5E5;
        width: 80px;
    }
    div.categoryProducts {
        padding: 0px 20px 40px 20px;
    }
    th.productListTableFirstColumn {
        text-align: left !important;
    }
    div.productUnitFrame{
        border:1px solid #eee;
    }
    div.noMatch {
        font-size: 20px;
        width: 200px;
        margin: 100px auto;
        color: #888;
    }
    div.orderListItemProductPrice {
        color: #3C3C3C;
        font-size: 14px;
    }
    div.productDetailImagesPart img {
        display: block; margin: 20px 0px;

        width: 790px;
    }
    div.productUnit a.tmallLink:hover {
        text-decoration: underline;
        color: #C40000;
    }
    a.productReviewTopPartSelectedLink {
        padding: 0px 20px;
        color: #333333;
    }
    div.makeReviewButtonDiv button {
        width: 72px;
        height: 26px;
        border-radius: 2px;
        background-color: #C40000;
        color: white;
        border-width: 0px;
        font-weight: bold;
    }
    div.loginErrorMessageDiv {
        width: 300px;
        position: absolute;
        top: 20px;
        display: none;
    }
    div.reviewContent {
        color: #333333;
        width: 698px;
    }
    tr.orderListItemFirstTR {
        background-color: #F1F1F1;
    }
    a.marketLink {
        color: black;
        font-size: 12px;
        font-family: 宋体;
        font-weight: normal;
    }
    div.boughtDiv {
        max-width: 1013px;
        margin: 10px auto;
    }
    span.conformPayProductPrice {
        font-size: 18px;
        font-weight: bold;
        color: #666666;
    }
    table.categorySortBarTable span.glyphicon {
        font-size: 10px;
    }
    button.submitOrderButton {
        border: 1px solid #C40000;
        background-color: #C40000;
        text-align: center;
        line-height: 40px;
        font-size: 14px;
        font-weight: 700;
        color: white;
        float: right;
    }
    div.payedDiv {
        border: 1px solid #D4D4D4;
        max-width: 1013px;
        margin: 10px auto 20px auto;
    }
    table.confirmPayOrderItemTable td {
        padding: 20px;
    }
    div.productUnit span.productPrice {
        font-size: 20px;
        color: #CC0000;
        display: block;
        padding-left: 4px;
    }
    td.orderItemProductInfo {
        text-align: left;
    }
    span.payedInfoPrice {
        color: #B10000;
        font-weight: bold;
        font-size: 14px;
        font-family: arial;
    }
    div.reviewDate {
        color: #CCCCDD;
    }
    div.loginSmallDiv {
        background-color: white;
        position: absolute;
        left: 780px;
        top: 180px;
        width: 350px;
        height: 400px;
        padding: 60px 25px 80px 25px;
    }
    table.categorySortBarTable td {
        border: 1px solid #CCCCCC;
        padding: 3px;
        height: 23px;
    }
    div.productReviewDiv {
        display: none;
    }
    div.orderTypeLastOne {
        overflow: hidden;
        float: none !important;
        border-bottom: 2px solid #E8E8E8;
        height:35px;
    }
    div.infoInimgAndInfo span.promotionPriceYuan {
        font-family: Arial;
        font-size: 18px;
        color: #C40000;
    }
    div.confirmPayWarning {
        margin: 20px 80px;
        font-size: 18px;
        color: red;
        font-weight: bold;
    }
    div.productReviewItem div.productReviewItemDesc {
        width: 80%;
        display: inline-block;
        color: #333333;
        height: 100%;
        margin: 5px 20px;
        float: left;
    }
    tbody.productListTableTbody td.orderItemFirstTD {
        text-align: left;
    }
    div.categoryWithCarousel div.rightMenu {
        display: inline-block;
    }
    img.aliPayImg {
    }
    div.simpleSearchDiv button {
        width: 60px;
        border: 1px solid transparent;
        background-color: #C40000;
        color: white;
        font-size: 14px;
    }
    div.infoInimgAndInfo div.juhuasuan {
        background-color: #2DA77A;
        color: white;
        text-align: center;
        line-height: 40px;
        margin-top: 10px;
    }
    div.orderListItemProductOriginalPrice {
        color: #999999;
        font-size: 14px;
    }
    .boldWord {
        font-weight: bold;
    }
    a.selected {
        border-left: 1px solid #cfbfb1;
        border-right: 1px solid #cfbfb1;
        color: #b10000;
        display: inline-block;
        font-weight: bold;
        line-height: 46px;
        width: 90px;
        text-align: center;
        position: relative;
    }
    span.reviewProductInfoRightBelowText {
        border: 1px solid #EFEFEF;
        display: inline-block;
        width: 200px;
        height: 42px;
        padding: 4px;
        position: relative;
        left: -4px;
        top: -7px;
        color: #666666;
    }
    div.imgAndInfo img.bigImg {
        width: 400px;
        height: 400px;
        padding: 20px;
        border: 1px solid #F2F2F2;
    }
    div.productPageDiv {
        max-width: 1013px;
        margin: 10px auto;
    }
    div.searchBelow a {
        padding: 0px 20px 0px 20px;
        font-size: 14px;
    }
    div.productItem img {
        width: 187px;
        height: 190px;
    }
    div.footer_ensure {
        margin-top: 24px;
        margin-bottom: 24px;
        text-align: center;
    }
    div.productUnit div.productInfo {
        color: #999999;
    }

    div.cartDiv {
        max-width: 1013px;
        margin: 10px auto;
        color: black;
    }
    div.productUnit span.monthDeal, div.productUnit span.productReview {
        display: inline-block;
        width: 90px;
        height: 30px;
        padding-top: 5px;
        padding-left: 5px;
    }
</style>
<script>

    function checkOrder() {
        var a = window.confirm( " 确定要删除该订单吗？" );
        if (a){
            return true;
        }else{
            return false;
        }
    }
</script>
<div class="boughtDiv">
    <div class="orderType">
        <div class="selectedOrderType"><a href="#nowhere" orderstatus="all">所有订单</a></div>
        <div class=""><a href="/food/showSomefoods">回到首页</a></div>
        <div class="orderTypeLastOne"><a class="noRightborder"> </a></div>
    </div>
    <div style="clear:both"></div>
    <div class="orderListTitle">
        <table class="orderListTitleTable">
            <tbody><tr>
                <td>宝贝</td>
                <td width="100px">单价</td>
                <td width="100px">数量</td>
                <td width="120px">实付款</td>
                <td width="100px">交易操作</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="orderListItem">

        <c:forEach items="${orderInfo}" var="orders">
        <table  orderstatus="waitReview" class="orderListItemTable" style="display: table;">
            <tbody><tr class="orderListItemFirstTR">
                <td colspan="2">
                    <b>${orders.time}</b>
                    <span>订单号: ${orders.id}
                    </span>
                </td>
                <td colspan="2">糕点之家</td>
                <td colspan="1">
                    <a href="#" class="wangwanglink">
                        <div class="orderItemWangWangGif"></div>
                    </a>
                </td>
                <td class="orderItemDeleteTD">
                    <a href="/order/delOrderByid?id=${orders.id}&&uid=${customerInfo.id}" class="wangwanglink" onclick="return checkOrder()">
                        <span class="orderListItemDelete glyphicon glyphicon-trash"></span>
                    </a>
                </td>
            </tr>
            <tr class="orderItemProductInfoPartTR">
                <td class="orderItemProductInfoPartTD"><img width="80" height="80" src="/view/${orders.img}"></td>
                <td class="orderItemProductInfoPartTD">
                    <div class="orderListItemProductLinkOutDiv">
                        <a href="#nowhere">${orders.foodName}</a>
                        <div class="orderListItemProductLinkInnerDiv">
                            <img title="支持信用卡支付" src="https://how2j.cn/tmall/img/site/creditcard.png">
                            <img title="消费者保障服务,承诺7天退货" src="https://how2j.cn/tmall/img/site/7day.png">
                            <img title="消费者保障服务,承诺如实描述" src="https://how2j.cn/tmall/img/site/promise.png">
                        </div>
                    </div>
                </td>
                <td width="100px" class="orderItemProductInfoPartTD">
                    <div class="orderListItemProductOriginalPrice">￥${orders.unitprice}</div>
                </td>
                <td width="100px" valign="top" class="orderListItemNumberTD orderItemOrderInfoPartTD" rowspan="1" style="padding-top: 35px;">
                    <span class="orderListItemNumber">${orders.ordnumber}</span>
                </td>
                <td width="120px" valign="top" class="orderListItemProductRealPriceTD orderItemOrderInfoPartTD" rowspan="1" style="padding-top: 35px;">
                    <div class="orderListItemProductRealPrice">￥${orders.unitprice*orders.ordnumber}</div>
                    <div class="orderListItemPriceWithTransport">(含运费：￥0.00)</div>
                </td>
                <td width="100px" valign="top" class="orderListItemButtonTD orderItemOrderInfoPartTD" rowspan="1" style="padding-top: 35px;">
                    <a href="/food/findFoodInfo?id=${orders.fid}">
                        <button class="orderListItemReview">评价</button>
                    </a>
                </td>
            </tr>
            </tbody>
        </table>
        </c:forEach>

    </div>
</div>