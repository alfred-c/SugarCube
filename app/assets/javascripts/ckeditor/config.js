/**
 * Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
    // config.uiColor = '#AADC6E';

    config.toolbar_Title = [
    { name: 'basicstyles', items: ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'SuperScript', '-', 'SpecialChar'] },
    '/',
    { name: 'styles', items: ['Format', 'Font', 'FontSize', '-', 'TextColor'] },
    ];

    config.toolbar_Content = [
        { name: 'basicstyles', items: ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'SuperScript', '-', 'SpecialChar'] },
        { name: 'paragraph', items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote'] },
        '/',
        { name: 'styles', items: ['Format', 'Font', 'FontSize','-','TextColor' ] },
    ];
};

