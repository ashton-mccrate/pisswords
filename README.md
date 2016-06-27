# Pisswords

Are you writing an electronic journal you don't want your mom to find? Are you planning a birthday party for your roommate that constantly creeps through the emails you send yourself? Pisswords may be the terrible solution you're looking for.

Encode sensitive information into dirty jibberish no one will ever ask you about. Decode it later if you want.

Example:

```ruby
party_plans = "Meet at Dave & Busters at 7pm sharp. Pre-order jello shots by Friday."

> encoded = Pissword.encode( party_plans )
=> "lol reek reek yolo plug milk yolo plug wood milk rofl reek plug poke plug feta omfg chub yolo reek ham chub plug milk yolo plug wart wank jive plug chub pee milk ham wank mom plug beef ham reek dad hot ham twat reek ham plug junk reek punk punk hot plug chub pee hot yolo chub plug worm lulz plug fuzz ham glob twat milk lulz mom"

> Pissword.decode( encoded )
=> "Meet at Dave & Busters at 7pm sharp. Pre-order jello shots by Friday."
```


