##### Signed by https://keybase.io/max
```
-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2.0.22 (Darwin)
Comment: GPGTools - https://gpgtools.org

iQEcBAABCgAGBQJTxZ4xAAoJEJgKPw0B/gTfAD4IAI2vZ0uN0W5EvIR3cWAM4mFL
O9SttjoBaEPkHzcTKUjnaBvXZy8uRxuGzj3rSox5SknS4P5ghIjK/yyHaKP8xiWr
5k6aRpI4lkzh+SCyO9Hfv4z/wgm0JIAPOjULu4ZuBysKAS/XIWYwD7NwfDgbtcnC
wDHfFaMswmcXng3gnXEkNKTrJCxRrOFgFgrPqa8u2URe9oeIJumWaBNXQiR6Ne+s
Tu3mcO8lx6OV51jpwnk3SQ5D+0LLW99ZtyR+NQsYc1DUCElV6DQzqLFG2iA0nyIU
esWR6IbBAiCs2pAtbRS1IuByHZhfzVHKhrgV8rEFkp/lnhJ0+i7l+TbH7acHGOg=
=dfUy
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file                contents                                                        
            ./                                                                                  
547           .gitignore        a3260451040bdf523be635eac16d28044d0064c4e8c4c444b0a49b9258851bec
1489          LICENSE           990c16fc0f03b94ef8964c4f9a5e3389798b0b90941e31e5806989356d0e08ef
402           Makefile          f7369cd20efbb30b24b4313272d8464301a57a83279b37b8f8ebec08f43aa8ff
67            README.md         e59a2b93ae3908bc265c87733482255a150861016dbc850833f315019ef39cef
              lib/                                                                              
1305            drain.js        4ea0841d2cf07b872e72048043946a1e016ccf09c917455a2bee9c6a358dd7a9
1261            faucet.js       a83c46e1536626ee2f6700e6ac4ef3aecb967c6d91912504c800bbeccf752b46
327             main.js         c25f53becb57cd57de11eef6392b5643d7fe77014241bad1e9e365610c50d46f
6162            transform.js    929dbf895dc3a6529b5b1e4383f40f1e5b4b24c1071f00095ee173f8d88057bd
660           package.json      441872d73e11ae930f5379e466ef9220c94b20865c3a90252c5db9474ce68a85
              src/                                                                              
988             drain.iced      72d252ab54233c0dc16a94c55d8dc6b2227a03efab73ebf58a29d42919a910a0
913             faucet.iced     5c8c2c3793d1767c701eddfca3848badb31e2261c0b9da67742b0fe3c16a607f
133             main.iced       399e3414ad75f8dade2549f86435aec68a74a390278d5e175755f053acae4206
1202            transform.iced  3ae9a7e476657465d0cd8b4903f9256bfb9cddf3e5979cbf49ca64c48645300f
```

#### Ignore

```
/SIGNED.md
```

#### Presets

```
git      # ignore .git and anything as described by .gitignore files
dropbox  # ignore .dropbox-cache and other Dropbox-related files    
kb       # ignore anything as described by .kbignore files          
```

<!-- summarize version = 0.0.9 -->

### End signed statement

<hr>

#### Notes

With keybase you can sign any directory's contents, whether it's a git repo,
source code distribution, or a personal documents folder. It aims to replace the drudgery of:

  1. comparing a zipped file to a detached statement
  2. downloading a public key
  3. confirming it is in fact the author's by reviewing public statements they've made, using it

All in one simple command:

```bash
keybase dir verify
```

There are lots of options, including assertions for automating your checks.

For more info, check out https://keybase.io/docs/command_line/code_signing