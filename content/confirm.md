---
title: "Bestätigung"
type: special
layout: simple
---

<p id="beachtowel_confirm">Bitte warten, Ihre Anfrage wird verarbeitet...</p><br><br>


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
        const bt = new Beachtowel(organizerId, eventid);
        try {
            bt.cancel(id, token)
            const dest = document.getElementById('beachtowel_confirm');
            dest.innerHMTL = "Reservation storniert."
        } catch (error) {
            console.log("did not work")
        }

    });
</script>
