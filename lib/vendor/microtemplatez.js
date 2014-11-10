// https://github.com/addyosmani/microtemplatez/blob/9efc0effc21193b51ded113c434dae1658ea4e90/microtemplatez.js
/*!
* Microtemplatez - a compact micro-templating implementation
* Copyright: Addy Osmani, 2011.
* Licensed under a dual-MIT/GPL license
*/
;( function ( window, doc, undef ) {

    templatez = function( tmpl, data ) {
        return tmpl.replace((RegExp("{{\\s*([a-z0-9_][.a-z0-9_]*)\\s*}}", "gi")), function (tag, k) {
            var p = k.split("."),
                len = p.length,
                temp = data,
                i = 0;
            for (; i < len; i++) {
                temp = temp[p[i]];
            }
            return temp;
        });
    };

    getTemplatez = function(){
        return templatez;
    }

    window.templatez = getTemplatez();

} )( this, this.document );
