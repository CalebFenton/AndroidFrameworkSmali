.class public final Landroid/hardware/radio/V1_5/EutranBands;
.super Ljava/lang/Object;
.source "EutranBands.java"


# static fields
.field public static final blacklist BAND_1:I = 0x1

.field public static final blacklist BAND_10:I = 0xa

.field public static final blacklist BAND_11:I = 0xb

.field public static final blacklist BAND_12:I = 0xc

.field public static final blacklist BAND_13:I = 0xd

.field public static final blacklist BAND_14:I = 0xe

.field public static final blacklist BAND_17:I = 0x11

.field public static final blacklist BAND_18:I = 0x12

.field public static final blacklist BAND_19:I = 0x13

.field public static final blacklist BAND_2:I = 0x2

.field public static final blacklist BAND_20:I = 0x14

.field public static final blacklist BAND_21:I = 0x15

.field public static final blacklist BAND_22:I = 0x16

.field public static final blacklist BAND_23:I = 0x17

.field public static final blacklist BAND_24:I = 0x18

.field public static final blacklist BAND_25:I = 0x19

.field public static final blacklist BAND_26:I = 0x1a

.field public static final blacklist BAND_27:I = 0x1b

.field public static final blacklist BAND_28:I = 0x1c

.field public static final blacklist BAND_3:I = 0x3

.field public static final blacklist BAND_30:I = 0x1e

.field public static final blacklist BAND_31:I = 0x1f

.field public static final blacklist BAND_33:I = 0x21

.field public static final blacklist BAND_34:I = 0x22

.field public static final blacklist BAND_35:I = 0x23

.field public static final blacklist BAND_36:I = 0x24

.field public static final blacklist BAND_37:I = 0x25

.field public static final blacklist BAND_38:I = 0x26

.field public static final blacklist BAND_39:I = 0x27

.field public static final blacklist BAND_4:I = 0x4

.field public static final blacklist BAND_40:I = 0x28

.field public static final blacklist BAND_41:I = 0x29

.field public static final blacklist BAND_42:I = 0x2a

.field public static final blacklist BAND_43:I = 0x2b

.field public static final blacklist BAND_44:I = 0x2c

.field public static final blacklist BAND_45:I = 0x2d

.field public static final blacklist BAND_46:I = 0x2e

.field public static final blacklist BAND_47:I = 0x2f

.field public static final blacklist BAND_48:I = 0x30

.field public static final blacklist BAND_49:I = 0x31

.field public static final blacklist BAND_5:I = 0x5

.field public static final blacklist BAND_50:I = 0x32

.field public static final blacklist BAND_51:I = 0x33

.field public static final blacklist BAND_52:I = 0x34

.field public static final blacklist BAND_53:I = 0x35

.field public static final blacklist BAND_6:I = 0x6

.field public static final blacklist BAND_65:I = 0x41

.field public static final blacklist BAND_66:I = 0x42

.field public static final blacklist BAND_68:I = 0x44

.field public static final blacklist BAND_7:I = 0x7

.field public static final blacklist BAND_70:I = 0x46

.field public static final blacklist BAND_71:I = 0x47

.field public static final blacklist BAND_72:I = 0x48

.field public static final blacklist BAND_73:I = 0x49

.field public static final blacklist BAND_74:I = 0x4a

.field public static final blacklist BAND_8:I = 0x8

.field public static final blacklist BAND_85:I = 0x55

.field public static final blacklist BAND_87:I = 0x57

.field public static final blacklist BAND_88:I = 0x58

.field public static final blacklist BAND_9:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 252
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 253
    const-string v2, "BAND_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    or-int/lit8 v1, v1, 0x1

    .line 256
    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 257
    const-string v2, "BAND_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    or-int/lit8 v1, v1, 0x2

    .line 260
    :cond_1e
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    .line 261
    const-string v2, "BAND_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    or-int/lit8 v1, v1, 0x3

    .line 264
    :cond_2a
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_36

    .line 265
    const-string v2, "BAND_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    or-int/lit8 v1, v1, 0x4

    .line 268
    :cond_36
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_42

    .line 269
    const-string v2, "BAND_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    or-int/lit8 v1, v1, 0x5

    .line 272
    :cond_42
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4e

    .line 273
    const-string v2, "BAND_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    or-int/lit8 v1, v1, 0x6

    .line 276
    :cond_4e
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5a

    .line 277
    const-string v2, "BAND_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    or-int/lit8 v1, v1, 0x7

    .line 280
    :cond_5a
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_67

    .line 281
    const-string v2, "BAND_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    or-int/lit8 v1, v1, 0x8

    .line 284
    :cond_67
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_74

    .line 285
    const-string v2, "BAND_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    or-int/lit8 v1, v1, 0x9

    .line 288
    :cond_74
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_81

    .line 289
    const-string v2, "BAND_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    or-int/lit8 v1, v1, 0xa

    .line 292
    :cond_81
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_8e

    .line 293
    const-string v2, "BAND_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    or-int/lit8 v1, v1, 0xb

    .line 296
    :cond_8e
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9b

    .line 297
    const-string v2, "BAND_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    or-int/lit8 v1, v1, 0xc

    .line 300
    :cond_9b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_a8

    .line 301
    const-string v2, "BAND_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    or-int/lit8 v1, v1, 0xd

    .line 304
    :cond_a8
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_b5

    .line 305
    const-string v2, "BAND_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    or-int/lit8 v1, v1, 0xe

    .line 308
    :cond_b5
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_c2

    .line 309
    const-string v2, "BAND_17"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    or-int/lit8 v1, v1, 0x11

    .line 312
    :cond_c2
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_cf

    .line 313
    const-string v2, "BAND_18"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    or-int/lit8 v1, v1, 0x12

    .line 316
    :cond_cf
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_dc

    .line 317
    const-string v2, "BAND_19"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    or-int/lit8 v1, v1, 0x13

    .line 320
    :cond_dc
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_e9

    .line 321
    const-string v2, "BAND_20"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    or-int/lit8 v1, v1, 0x14

    .line 324
    :cond_e9
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_f6

    .line 325
    const-string v2, "BAND_21"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    or-int/lit8 v1, v1, 0x15

    .line 328
    :cond_f6
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_103

    .line 329
    const-string v2, "BAND_22"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    or-int/lit8 v1, v1, 0x16

    .line 332
    :cond_103
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_110

    .line 333
    const-string v2, "BAND_23"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    or-int/lit8 v1, v1, 0x17

    .line 336
    :cond_110
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_11d

    .line 337
    const-string v2, "BAND_24"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    or-int/lit8 v1, v1, 0x18

    .line 340
    :cond_11d
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_12a

    .line 341
    const-string v2, "BAND_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    or-int/lit8 v1, v1, 0x19

    .line 344
    :cond_12a
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_137

    .line 345
    const-string v2, "BAND_26"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    or-int/lit8 v1, v1, 0x1a

    .line 348
    :cond_137
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_144

    .line 349
    const-string v2, "BAND_27"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    or-int/lit8 v1, v1, 0x1b

    .line 352
    :cond_144
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_151

    .line 353
    const-string v2, "BAND_28"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    or-int/lit8 v1, v1, 0x1c

    .line 356
    :cond_151
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_15e

    .line 357
    const-string v2, "BAND_30"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    or-int/lit8 v1, v1, 0x1e

    .line 360
    :cond_15e
    and-int/lit8 v2, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_16b

    .line 361
    const-string v2, "BAND_31"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    or-int/lit8 v1, v1, 0x1f

    .line 364
    :cond_16b
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_178

    .line 365
    const-string v2, "BAND_33"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    or-int/lit8 v1, v1, 0x21

    .line 368
    :cond_178
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_185

    .line 369
    const-string v2, "BAND_34"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    or-int/lit8 v1, v1, 0x22

    .line 372
    :cond_185
    and-int/lit8 v2, p0, 0x23

    const/16 v3, 0x23

    if-ne v2, v3, :cond_192

    .line 373
    const-string v2, "BAND_35"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    or-int/lit8 v1, v1, 0x23

    .line 376
    :cond_192
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_19f

    .line 377
    const-string v2, "BAND_36"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    or-int/lit8 v1, v1, 0x24

    .line 380
    :cond_19f
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_1ac

    .line 381
    const-string v2, "BAND_37"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    or-int/lit8 v1, v1, 0x25

    .line 384
    :cond_1ac
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1b9

    .line 385
    const-string v2, "BAND_38"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    or-int/lit8 v1, v1, 0x26

    .line 388
    :cond_1b9
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_1c6

    .line 389
    const-string v2, "BAND_39"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    or-int/lit8 v1, v1, 0x27

    .line 392
    :cond_1c6
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1d3

    .line 393
    const-string v2, "BAND_40"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    or-int/lit8 v1, v1, 0x28

    .line 396
    :cond_1d3
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1e0

    .line 397
    const-string v2, "BAND_41"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    or-int/lit8 v1, v1, 0x29

    .line 400
    :cond_1e0
    and-int/lit8 v2, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1ed

    .line 401
    const-string v2, "BAND_42"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    or-int/lit8 v1, v1, 0x2a

    .line 404
    :cond_1ed
    and-int/lit8 v2, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1fa

    .line 405
    const-string v2, "BAND_43"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    or-int/lit8 v1, v1, 0x2b

    .line 408
    :cond_1fa
    and-int/lit8 v2, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_207

    .line 409
    const-string v2, "BAND_44"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    or-int/lit8 v1, v1, 0x2c

    .line 412
    :cond_207
    and-int/lit8 v2, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_214

    .line 413
    const-string v2, "BAND_45"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    or-int/lit8 v1, v1, 0x2d

    .line 416
    :cond_214
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_221

    .line 417
    const-string v2, "BAND_46"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    or-int/lit8 v1, v1, 0x2e

    .line 420
    :cond_221
    and-int/lit8 v2, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_22e

    .line 421
    const-string v2, "BAND_47"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    or-int/lit8 v1, v1, 0x2f

    .line 424
    :cond_22e
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_23b

    .line 425
    const-string v2, "BAND_48"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    or-int/lit8 v1, v1, 0x30

    .line 428
    :cond_23b
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_248

    .line 429
    const-string v2, "BAND_65"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    or-int/lit8 v1, v1, 0x41

    .line 432
    :cond_248
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_255

    .line 433
    const-string v2, "BAND_66"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    or-int/lit8 v1, v1, 0x42

    .line 436
    :cond_255
    and-int/lit8 v2, p0, 0x44

    const/16 v3, 0x44

    if-ne v2, v3, :cond_262

    .line 437
    const-string v2, "BAND_68"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    or-int/lit8 v1, v1, 0x44

    .line 440
    :cond_262
    and-int/lit8 v2, p0, 0x46

    const/16 v3, 0x46

    if-ne v2, v3, :cond_26f

    .line 441
    const-string v2, "BAND_70"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    or-int/lit8 v1, v1, 0x46

    .line 444
    :cond_26f
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_27c

    .line 445
    const-string v2, "BAND_49"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    or-int/lit8 v1, v1, 0x31

    .line 448
    :cond_27c
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_289

    .line 449
    const-string v2, "BAND_50"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    or-int/lit8 v1, v1, 0x32

    .line 452
    :cond_289
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_296

    .line 453
    const-string v2, "BAND_51"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    or-int/lit8 v1, v1, 0x33

    .line 456
    :cond_296
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_2a3

    .line 457
    const-string v2, "BAND_52"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    or-int/lit8 v1, v1, 0x34

    .line 460
    :cond_2a3
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_2b0

    .line 461
    const-string v2, "BAND_53"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    or-int/lit8 v1, v1, 0x35

    .line 464
    :cond_2b0
    and-int/lit8 v2, p0, 0x47

    const/16 v3, 0x47

    if-ne v2, v3, :cond_2bd

    .line 465
    const-string v2, "BAND_71"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    or-int/lit8 v1, v1, 0x47

    .line 468
    :cond_2bd
    and-int/lit8 v2, p0, 0x48

    const/16 v3, 0x48

    if-ne v2, v3, :cond_2ca

    .line 469
    const-string v2, "BAND_72"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    or-int/lit8 v1, v1, 0x48

    .line 472
    :cond_2ca
    and-int/lit8 v2, p0, 0x49

    const/16 v3, 0x49

    if-ne v2, v3, :cond_2d7

    .line 473
    const-string v2, "BAND_73"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    or-int/lit8 v1, v1, 0x49

    .line 476
    :cond_2d7
    and-int/lit8 v2, p0, 0x4a

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_2e4

    .line 477
    const-string v2, "BAND_74"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    or-int/lit8 v1, v1, 0x4a

    .line 480
    :cond_2e4
    and-int/lit8 v2, p0, 0x55

    const/16 v3, 0x55

    if-ne v2, v3, :cond_2f1

    .line 481
    const-string v2, "BAND_85"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    or-int/lit8 v1, v1, 0x55

    .line 484
    :cond_2f1
    and-int/lit8 v2, p0, 0x57

    const/16 v3, 0x57

    if-ne v2, v3, :cond_2fe

    .line 485
    const-string v2, "BAND_87"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    or-int/lit8 v1, v1, 0x57

    .line 488
    :cond_2fe
    and-int/lit8 v2, p0, 0x58

    const/16 v3, 0x58

    if-ne v2, v3, :cond_30b

    .line 489
    const-string v2, "BAND_88"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    or-int/lit8 v1, v1, 0x58

    .line 492
    :cond_30b
    if-eq p0, v1, :cond_329

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_329
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 66
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 67
    const-string v0, "BAND_1"

    return-object v0

    .line 69
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 70
    const-string v0, "BAND_2"

    return-object v0

    .line 72
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 73
    const-string v0, "BAND_3"

    return-object v0

    .line 75
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 76
    const-string v0, "BAND_4"

    return-object v0

    .line 78
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 79
    const-string v0, "BAND_5"

    return-object v0

    .line 81
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 82
    const-string v0, "BAND_6"

    return-object v0

    .line 84
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    .line 85
    const-string v0, "BAND_7"

    return-object v0

    .line 87
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    .line 88
    const-string v0, "BAND_8"

    return-object v0

    .line 90
    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    .line 91
    const-string v0, "BAND_9"

    return-object v0

    .line 93
    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    .line 94
    const-string v0, "BAND_10"

    return-object v0

    .line 96
    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    .line 97
    const-string v0, "BAND_11"

    return-object v0

    .line 99
    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    .line 100
    const-string v0, "BAND_12"

    return-object v0

    .line 102
    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    .line 103
    const-string v0, "BAND_13"

    return-object v0

    .line 105
    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    .line 106
    const-string v0, "BAND_14"

    return-object v0

    .line 108
    :cond_5b
    const/16 v0, 0x11

    if-ne p0, v0, :cond_62

    .line 109
    const-string v0, "BAND_17"

    return-object v0

    .line 111
    :cond_62
    const/16 v0, 0x12

    if-ne p0, v0, :cond_69

    .line 112
    const-string v0, "BAND_18"

    return-object v0

    .line 114
    :cond_69
    const/16 v0, 0x13

    if-ne p0, v0, :cond_70

    .line 115
    const-string v0, "BAND_19"

    return-object v0

    .line 117
    :cond_70
    const/16 v0, 0x14

    if-ne p0, v0, :cond_77

    .line 118
    const-string v0, "BAND_20"

    return-object v0

    .line 120
    :cond_77
    const/16 v0, 0x15

    if-ne p0, v0, :cond_7e

    .line 121
    const-string v0, "BAND_21"

    return-object v0

    .line 123
    :cond_7e
    const/16 v0, 0x16

    if-ne p0, v0, :cond_85

    .line 124
    const-string v0, "BAND_22"

    return-object v0

    .line 126
    :cond_85
    const/16 v0, 0x17

    if-ne p0, v0, :cond_8c

    .line 127
    const-string v0, "BAND_23"

    return-object v0

    .line 129
    :cond_8c
    const/16 v0, 0x18

    if-ne p0, v0, :cond_93

    .line 130
    const-string v0, "BAND_24"

    return-object v0

    .line 132
    :cond_93
    const/16 v0, 0x19

    if-ne p0, v0, :cond_9a

    .line 133
    const-string v0, "BAND_25"

    return-object v0

    .line 135
    :cond_9a
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_a1

    .line 136
    const-string v0, "BAND_26"

    return-object v0

    .line 138
    :cond_a1
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_a8

    .line 139
    const-string v0, "BAND_27"

    return-object v0

    .line 141
    :cond_a8
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_af

    .line 142
    const-string v0, "BAND_28"

    return-object v0

    .line 144
    :cond_af
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_b6

    .line 145
    const-string v0, "BAND_30"

    return-object v0

    .line 147
    :cond_b6
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_bd

    .line 148
    const-string v0, "BAND_31"

    return-object v0

    .line 150
    :cond_bd
    const/16 v0, 0x21

    if-ne p0, v0, :cond_c4

    .line 151
    const-string v0, "BAND_33"

    return-object v0

    .line 153
    :cond_c4
    const/16 v0, 0x22

    if-ne p0, v0, :cond_cb

    .line 154
    const-string v0, "BAND_34"

    return-object v0

    .line 156
    :cond_cb
    const/16 v0, 0x23

    if-ne p0, v0, :cond_d2

    .line 157
    const-string v0, "BAND_35"

    return-object v0

    .line 159
    :cond_d2
    const/16 v0, 0x24

    if-ne p0, v0, :cond_d9

    .line 160
    const-string v0, "BAND_36"

    return-object v0

    .line 162
    :cond_d9
    const/16 v0, 0x25

    if-ne p0, v0, :cond_e0

    .line 163
    const-string v0, "BAND_37"

    return-object v0

    .line 165
    :cond_e0
    const/16 v0, 0x26

    if-ne p0, v0, :cond_e7

    .line 166
    const-string v0, "BAND_38"

    return-object v0

    .line 168
    :cond_e7
    const/16 v0, 0x27

    if-ne p0, v0, :cond_ee

    .line 169
    const-string v0, "BAND_39"

    return-object v0

    .line 171
    :cond_ee
    const/16 v0, 0x28

    if-ne p0, v0, :cond_f5

    .line 172
    const-string v0, "BAND_40"

    return-object v0

    .line 174
    :cond_f5
    const/16 v0, 0x29

    if-ne p0, v0, :cond_fc

    .line 175
    const-string v0, "BAND_41"

    return-object v0

    .line 177
    :cond_fc
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_103

    .line 178
    const-string v0, "BAND_42"

    return-object v0

    .line 180
    :cond_103
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_10a

    .line 181
    const-string v0, "BAND_43"

    return-object v0

    .line 183
    :cond_10a
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_111

    .line 184
    const-string v0, "BAND_44"

    return-object v0

    .line 186
    :cond_111
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_118

    .line 187
    const-string v0, "BAND_45"

    return-object v0

    .line 189
    :cond_118
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_11f

    .line 190
    const-string v0, "BAND_46"

    return-object v0

    .line 192
    :cond_11f
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_126

    .line 193
    const-string v0, "BAND_47"

    return-object v0

    .line 195
    :cond_126
    const/16 v0, 0x30

    if-ne p0, v0, :cond_12d

    .line 196
    const-string v0, "BAND_48"

    return-object v0

    .line 198
    :cond_12d
    const/16 v0, 0x41

    if-ne p0, v0, :cond_134

    .line 199
    const-string v0, "BAND_65"

    return-object v0

    .line 201
    :cond_134
    const/16 v0, 0x42

    if-ne p0, v0, :cond_13b

    .line 202
    const-string v0, "BAND_66"

    return-object v0

    .line 204
    :cond_13b
    const/16 v0, 0x44

    if-ne p0, v0, :cond_142

    .line 205
    const-string v0, "BAND_68"

    return-object v0

    .line 207
    :cond_142
    const/16 v0, 0x46

    if-ne p0, v0, :cond_149

    .line 208
    const-string v0, "BAND_70"

    return-object v0

    .line 210
    :cond_149
    const/16 v0, 0x31

    if-ne p0, v0, :cond_150

    .line 211
    const-string v0, "BAND_49"

    return-object v0

    .line 213
    :cond_150
    const/16 v0, 0x32

    if-ne p0, v0, :cond_157

    .line 214
    const-string v0, "BAND_50"

    return-object v0

    .line 216
    :cond_157
    const/16 v0, 0x33

    if-ne p0, v0, :cond_15e

    .line 217
    const-string v0, "BAND_51"

    return-object v0

    .line 219
    :cond_15e
    const/16 v0, 0x34

    if-ne p0, v0, :cond_165

    .line 220
    const-string v0, "BAND_52"

    return-object v0

    .line 222
    :cond_165
    const/16 v0, 0x35

    if-ne p0, v0, :cond_16c

    .line 223
    const-string v0, "BAND_53"

    return-object v0

    .line 225
    :cond_16c
    const/16 v0, 0x47

    if-ne p0, v0, :cond_173

    .line 226
    const-string v0, "BAND_71"

    return-object v0

    .line 228
    :cond_173
    const/16 v0, 0x48

    if-ne p0, v0, :cond_17a

    .line 229
    const-string v0, "BAND_72"

    return-object v0

    .line 231
    :cond_17a
    const/16 v0, 0x49

    if-ne p0, v0, :cond_181

    .line 232
    const-string v0, "BAND_73"

    return-object v0

    .line 234
    :cond_181
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_188

    .line 235
    const-string v0, "BAND_74"

    return-object v0

    .line 237
    :cond_188
    const/16 v0, 0x55

    if-ne p0, v0, :cond_18f

    .line 238
    const-string v0, "BAND_85"

    return-object v0

    .line 240
    :cond_18f
    const/16 v0, 0x57

    if-ne p0, v0, :cond_196

    .line 241
    const-string v0, "BAND_87"

    return-object v0

    .line 243
    :cond_196
    const/16 v0, 0x58

    if-ne p0, v0, :cond_19d

    .line 244
    const-string v0, "BAND_88"

    return-object v0

    .line 246
    :cond_19d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
