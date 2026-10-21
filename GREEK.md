# Greek review

Greek (`el`) is shared by Greece and Cyprus. The app normalizes `el-GR` and
`el-CY` to this catalog. The app locale is independent of timezone and currency.

The first draft used local neural translation. A key-by-key review against the
English source then corrected 2,842 of 5,634 strings: wrong-sense words, dashes
and arrows dropped from sentences, translated example values and informal wording.
The review was AI-assisted. No native speaker has read the catalogs yet, so native
Greek review is pending. Review product terminology, plurals, formal address,
long settings descriptions, access and billing instructions before broad rollout.

Terms used throughout (change one everywhere or not at all):
plan = πακέτο, draft = προσχέδιο, hot desk = γραφείο κατά ζήτηση, dedicated desk =
σταθερό γραφείο, meeting room = αίθουσα συσκέψεων, lead = υποψήφιος πελάτης,
contract = σύμβαση, charge = χρέωση, member = μέλος, space = χώρος, void invoice =
ακύρωση τιμολογίου. "Concierge" stays in Latin script as the feature name
(θυρωρός means a building doorman). The invoice "Cancel" button reads Πίσω so it
differs from "Void invoice".

Preserve keys, `{{placeholders}}` and markup. Do not translate OhMyDesk or provider
names. Make native corrections here, then import them into the app.

This PR is based on the open Spanish translation branch (PR #3) so it preserves
that work. Merge PR #3 first, then retarget this PR to main. `SOURCE.md` pins the
app catalog commit. Only public translation catalogs are copied from the app.
