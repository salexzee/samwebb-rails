/*
 Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.md or http://ckeditor.com/license
*/
!function(){CKEDITOR.dialog.add("codeSnippet",function(e){var t,n=e._.codesnippet.langs,a=e.lang.codesnippet,i=document.documentElement.clientHeight,l=[];l.push([e.lang.common.notSet,""]);for(t in n)l.push([n[t],t]);return n=CKEDITOR.document.getWindow().getViewPaneSize(),e=Math.min(n.width-70,800),n=n.height/1.5,650>i&&(n=i-220),{title:a.title,minHeight:200,resizable:CKEDITOR.DIALOG_RESIZE_NONE,contents:[{id:"info",elements:[{id:"lang",type:"select",label:a.language,items:l,setup:function(e){e.ready&&e.data.lang&&this.setValue(e.data.lang),!CKEDITOR.env.gecko||e.data.lang&&e.ready||(this.getInputElement().$.selectedIndex=-1)},commit:function(e){e.setData("lang",this.getValue())}},{id:"code",type:"textarea",label:a.codeContents,setup:function(e){this.setValue(e.data.code)},commit:function(e){e.setData("code",this.getValue())},required:!0,validate:CKEDITOR.dialog.validate.notEmpty(a.emptySnippetError),inputStyle:"cursor:auto;width:"+e+"px;height:"+n+"px;tab-size:4;text-align:left;","class":"cke_source"}]}]}})}();