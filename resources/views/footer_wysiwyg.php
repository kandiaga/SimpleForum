<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>


        <script src="{{ asset('trumbowyg/dist/trumbowyg.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/langs/fr.min.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/base64/trumbowyg.base64.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/colors/trumbowyg.colors.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/noembed/trumbowyg.noembed.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/pasteimage/trumbowyg.pasteimage.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/template/trumbowyg.template.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/preformatted/trumbowyg.preformatted.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/ruby/trumbowyg.ruby.js') }}"></script>
        <script src="{{ asset('trumbowyg/dist/plugins/upload/trumbowyg.upload.js') }}"></script>
		<script>
    $(document).ready(function() {
        $('#myTextarea').trumbowyg();
    });
</script>
        