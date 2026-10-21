# Greek review

Greek (`el`) is shared by Greece and Cyprus. The app normalizes `el-GR` and
`el-CY` to this catalog. The app locale is independent of timezone and currency.

Initial copy uses local neural translation with manual corrections to product
terms, navigation, booking, billing, invoice labels and member journeys. Native
Greek review is pending. Review product terminology, plurals, formal address,
long settings descriptions, access and billing instructions before broad rollout.

Preserve keys, `{{placeholders}}` and markup. Do not translate OhMyDesk or provider
names. Make native corrections here, then import them into the app.

This PR is based on the open Spanish translation branch (PR #3) so it preserves
that work. Merge PR #3 first, then retarget this PR to main. `SOURCE.md` pins the
app catalog commit. Only public translation catalogs are copied from the app.
