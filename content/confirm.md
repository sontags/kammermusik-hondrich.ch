---
title: "Bestätigung"
type: special
layout: simple
---

<p class="usher_confirm">Bitte warten, Ihre Anfrage wird verarbeitet...</p><br><br>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="https://beachtowel.terrible.services/client.js"></script>
<script>
    'use strict';

    document.addEventListener("DOMContentLoaded", function(event) {
        const urlParams = new URLSearchParams(window.location.search);
        const eventId = urlParams.get('eid');
        const organizerId = urlParams.get('oid');
        const id = urlParams.get('id');
        const token = urlParams.get('token');
        console.log(eventId);
        console.log(organizerId);
        console.log(id);
        console.log(token);

        //const bt = new Beachtowel("o-clms63hch710uk3e6v80", eventid);


    });
</script>
