---
title: "Kontakt"
type: special
layout: simple
---

<form id="contact">
    <fieldset>
        <input placeholder="Ihre Emailadresse" type="email" tabindex="1" required autofocus class="postmail_email">
        <div class="postmail_email_info"></div>
    </fieldset>
    <fieldset style="display:none;">
        <input placeholder="Titel" class="postmail_subject" type="text" name="subject" value="Kontaktformular kammermusik-hondrich.ch">
    </fieldset>
    <fieldset>
        <textarea class="postmail_content" placeholder="Schreiben Sie uns Ihr anliegen..." tabindex="2" required></textarea>
        <div class="postmail_content_info"></div>
    </fieldset>
    <fieldset>
        <button class="postmail_send" name="submit" type="submit" id="contact-submit" data-submit="...Senden">Senden</button>
        <div class="postmail_sent_info"></div>
    </fieldset>
</form>
