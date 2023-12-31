---
title: "Bestätigung"
type: special
layout: simple
---

<p id="beachtowel_confirm">Bitte warten, Ihre Anfrage wird verarbeitet...</p><br><br>


<script type="text/javascript" src="https://beachtowel.terrible.services/client.js"></script>
<script>
    'use strict';

    document.addEventListener("DOMContentLoaded", function(event) {
        const urlParams = new URLSearchParams(window.location.search);
        const eventId = urlParams.get('eid');
        const organizerId = urlParams.get('oid');
        const id = urlParams.get('id');
        const token = urlParams.get('token');

        const config = {
            baseurl: "https://beachtowel.terrible.services/api/v1",
            organizerId: organizerId,
            eventId: eventId,
        }
        const bt = new Beachtowel(config);

        try {
            bt.cancel(id, token);
            let dest = document.getElementById('beachtowel_confirm');
            dest.innerHTML = "Reservation storniert.";
        } catch (error) {
            console.log("did not work");
        }

    });
</script>
