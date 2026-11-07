.class public final Landroid/hardware/radio/V1_6/NgranBands;
.super Ljava/lang/Object;
.source "NgranBands.java"


# static fields
.field public static final blacklist BAND_1:I = 0x1

.field public static final blacklist BAND_12:I = 0xc

.field public static final blacklist BAND_14:I = 0xe

.field public static final blacklist BAND_18:I = 0x12

.field public static final blacklist BAND_2:I = 0x2

.field public static final blacklist BAND_20:I = 0x14

.field public static final blacklist BAND_25:I = 0x19

.field public static final blacklist BAND_257:I = 0x101

.field public static final blacklist BAND_258:I = 0x102

.field public static final blacklist BAND_26:I = 0x1a

.field public static final blacklist BAND_260:I = 0x104

.field public static final blacklist BAND_261:I = 0x105

.field public static final blacklist BAND_28:I = 0x1c

.field public static final blacklist BAND_29:I = 0x1d

.field public static final blacklist BAND_3:I = 0x3

.field public static final blacklist BAND_30:I = 0x1e

.field public static final blacklist BAND_34:I = 0x22

.field public static final blacklist BAND_38:I = 0x26

.field public static final blacklist BAND_39:I = 0x27

.field public static final blacklist BAND_40:I = 0x28

.field public static final blacklist BAND_41:I = 0x29

.field public static final blacklist BAND_46:I = 0x2e

.field public static final blacklist BAND_48:I = 0x30

.field public static final blacklist BAND_5:I = 0x5

.field public static final blacklist BAND_50:I = 0x32

.field public static final blacklist BAND_51:I = 0x33

.field public static final blacklist BAND_53:I = 0x35

.field public static final blacklist BAND_65:I = 0x41

.field public static final blacklist BAND_66:I = 0x42

.field public static final blacklist BAND_7:I = 0x7

.field public static final blacklist BAND_70:I = 0x46

.field public static final blacklist BAND_71:I = 0x47

.field public static final blacklist BAND_74:I = 0x4a

.field public static final blacklist BAND_75:I = 0x4b

.field public static final blacklist BAND_76:I = 0x4c

.field public static final blacklist BAND_77:I = 0x4d

.field public static final blacklist BAND_78:I = 0x4e

.field public static final blacklist BAND_79:I = 0x4f

.field public static final blacklist BAND_8:I = 0x8

.field public static final blacklist BAND_80:I = 0x50

.field public static final blacklist BAND_81:I = 0x51

.field public static final blacklist BAND_82:I = 0x52

.field public static final blacklist BAND_83:I = 0x53

.field public static final blacklist BAND_84:I = 0x54

.field public static final blacklist BAND_86:I = 0x56

.field public static final blacklist BAND_89:I = 0x59

.field public static final blacklist BAND_90:I = 0x5a

.field public static final blacklist BAND_91:I = 0x5b

.field public static final blacklist BAND_92:I = 0x5c

.field public static final blacklist BAND_93:I = 0x5d

.field public static final blacklist BAND_94:I = 0x5e

.field public static final blacklist BAND_95:I = 0x5f

.field public static final blacklist BAND_96:I = 0x60


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

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 233
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 234
    const-string v2, "BAND_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    or-int/lit8 v1, v1, 0x1

    .line 237
    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 238
    const-string v2, "BAND_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    or-int/lit8 v1, v1, 0x2

    .line 241
    :cond_1e
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    .line 242
    const-string v2, "BAND_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    or-int/lit8 v1, v1, 0x3

    .line 245
    :cond_2a
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_36

    .line 246
    const-string v2, "BAND_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    or-int/lit8 v1, v1, 0x5

    .line 249
    :cond_36
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_42

    .line 250
    const-string v2, "BAND_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    or-int/lit8 v1, v1, 0x7

    .line 253
    :cond_42
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4f

    .line 254
    const-string v2, "BAND_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    or-int/lit8 v1, v1, 0x8

    .line 257
    :cond_4f
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_5c

    .line 258
    const-string v2, "BAND_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    or-int/lit8 v1, v1, 0xc

    .line 261
    :cond_5c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_69

    .line 262
    const-string v2, "BAND_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    or-int/lit8 v1, v1, 0xe

    .line 265
    :cond_69
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_76

    .line 266
    const-string v2, "BAND_18"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    or-int/lit8 v1, v1, 0x12

    .line 269
    :cond_76
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_83

    .line 270
    const-string v2, "BAND_20"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    or-int/lit8 v1, v1, 0x14

    .line 273
    :cond_83
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_90

    .line 274
    const-string v2, "BAND_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    or-int/lit8 v1, v1, 0x19

    .line 277
    :cond_90
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_9d

    .line 278
    const-string v2, "BAND_28"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    or-int/lit8 v1, v1, 0x1c

    .line 281
    :cond_9d
    and-int/lit8 v2, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_aa

    .line 282
    const-string v2, "BAND_29"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    or-int/lit8 v1, v1, 0x1d

    .line 285
    :cond_aa
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_b7

    .line 286
    const-string v2, "BAND_30"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    or-int/lit8 v1, v1, 0x1e

    .line 289
    :cond_b7
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_c4

    .line 290
    const-string v2, "BAND_34"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    or-int/lit8 v1, v1, 0x22

    .line 293
    :cond_c4
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_d1

    .line 294
    const-string v2, "BAND_38"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    or-int/lit8 v1, v1, 0x26

    .line 297
    :cond_d1
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_de

    .line 298
    const-string v2, "BAND_39"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    or-int/lit8 v1, v1, 0x27

    .line 301
    :cond_de
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_eb

    .line 302
    const-string v2, "BAND_40"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    or-int/lit8 v1, v1, 0x28

    .line 305
    :cond_eb
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_f8

    .line 306
    const-string v2, "BAND_41"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    or-int/lit8 v1, v1, 0x29

    .line 309
    :cond_f8
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_105

    .line 310
    const-string v2, "BAND_48"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    or-int/lit8 v1, v1, 0x30

    .line 313
    :cond_105
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_112

    .line 314
    const-string v2, "BAND_50"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    or-int/lit8 v1, v1, 0x32

    .line 317
    :cond_112
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_11f

    .line 318
    const-string v2, "BAND_51"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    or-int/lit8 v1, v1, 0x33

    .line 321
    :cond_11f
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_12c

    .line 322
    const-string v2, "BAND_65"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    or-int/lit8 v1, v1, 0x41

    .line 325
    :cond_12c
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_139

    .line 326
    const-string v2, "BAND_66"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    or-int/lit8 v1, v1, 0x42

    .line 329
    :cond_139
    and-int/lit8 v2, p0, 0x46

    const/16 v3, 0x46

    if-ne v2, v3, :cond_146

    .line 330
    const-string v2, "BAND_70"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    or-int/lit8 v1, v1, 0x46

    .line 333
    :cond_146
    and-int/lit8 v2, p0, 0x47

    const/16 v3, 0x47

    if-ne v2, v3, :cond_153

    .line 334
    const-string v2, "BAND_71"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    or-int/lit8 v1, v1, 0x47

    .line 337
    :cond_153
    and-int/lit8 v2, p0, 0x4a

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_160

    .line 338
    const-string v2, "BAND_74"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    or-int/lit8 v1, v1, 0x4a

    .line 341
    :cond_160
    and-int/lit8 v2, p0, 0x4b

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_16d

    .line 342
    const-string v2, "BAND_75"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    or-int/lit8 v1, v1, 0x4b

    .line 345
    :cond_16d
    and-int/lit8 v2, p0, 0x4c

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_17a

    .line 346
    const-string v2, "BAND_76"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    or-int/lit8 v1, v1, 0x4c

    .line 349
    :cond_17a
    and-int/lit8 v2, p0, 0x4d

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_187

    .line 350
    const-string v2, "BAND_77"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    or-int/lit8 v1, v1, 0x4d

    .line 353
    :cond_187
    and-int/lit8 v2, p0, 0x4e

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_194

    .line 354
    const-string v2, "BAND_78"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    or-int/lit8 v1, v1, 0x4e

    .line 357
    :cond_194
    and-int/lit8 v2, p0, 0x4f

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_1a1

    .line 358
    const-string v2, "BAND_79"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    or-int/lit8 v1, v1, 0x4f

    .line 361
    :cond_1a1
    and-int/lit8 v2, p0, 0x50

    const/16 v3, 0x50

    if-ne v2, v3, :cond_1ae

    .line 362
    const-string v2, "BAND_80"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    or-int/lit8 v1, v1, 0x50

    .line 365
    :cond_1ae
    and-int/lit8 v2, p0, 0x51

    const/16 v3, 0x51

    if-ne v2, v3, :cond_1bb

    .line 366
    const-string v2, "BAND_81"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    or-int/lit8 v1, v1, 0x51

    .line 369
    :cond_1bb
    and-int/lit8 v2, p0, 0x52

    const/16 v3, 0x52

    if-ne v2, v3, :cond_1c8

    .line 370
    const-string v2, "BAND_82"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    or-int/lit8 v1, v1, 0x52

    .line 373
    :cond_1c8
    and-int/lit8 v2, p0, 0x53

    const/16 v3, 0x53

    if-ne v2, v3, :cond_1d5

    .line 374
    const-string v2, "BAND_83"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    or-int/lit8 v1, v1, 0x53

    .line 377
    :cond_1d5
    and-int/lit8 v2, p0, 0x54

    const/16 v3, 0x54

    if-ne v2, v3, :cond_1e2

    .line 378
    const-string v2, "BAND_84"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    or-int/lit8 v1, v1, 0x54

    .line 381
    :cond_1e2
    and-int/lit8 v2, p0, 0x56

    const/16 v3, 0x56

    if-ne v2, v3, :cond_1ef

    .line 382
    const-string v2, "BAND_86"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    or-int/lit8 v1, v1, 0x56

    .line 385
    :cond_1ef
    and-int/lit8 v2, p0, 0x59

    const/16 v3, 0x59

    if-ne v2, v3, :cond_1fc

    .line 386
    const-string v2, "BAND_89"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    or-int/lit8 v1, v1, 0x59

    .line 389
    :cond_1fc
    and-int/lit8 v2, p0, 0x5a

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_209

    .line 390
    const-string v2, "BAND_90"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    or-int/lit8 v1, v1, 0x5a

    .line 393
    :cond_209
    and-int/lit8 v2, p0, 0x5b

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_216

    .line 394
    const-string v2, "BAND_91"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    or-int/lit8 v1, v1, 0x5b

    .line 397
    :cond_216
    and-int/lit8 v2, p0, 0x5c

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_223

    .line 398
    const-string v2, "BAND_92"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    or-int/lit8 v1, v1, 0x5c

    .line 401
    :cond_223
    and-int/lit8 v2, p0, 0x5d

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_230

    .line 402
    const-string v2, "BAND_93"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    or-int/lit8 v1, v1, 0x5d

    .line 405
    :cond_230
    and-int/lit8 v2, p0, 0x5e

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_23d

    .line 406
    const-string v2, "BAND_94"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    or-int/lit8 v1, v1, 0x5e

    .line 409
    :cond_23d
    and-int/lit8 v2, p0, 0x5f

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_24a

    .line 410
    const-string v2, "BAND_95"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    or-int/lit8 v1, v1, 0x5f

    .line 413
    :cond_24a
    and-int/lit16 v2, p0, 0x101

    const/16 v3, 0x101

    if-ne v2, v3, :cond_257

    .line 414
    const-string v2, "BAND_257"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    or-int/lit16 v1, v1, 0x101

    .line 417
    :cond_257
    and-int/lit16 v2, p0, 0x102

    const/16 v3, 0x102

    if-ne v2, v3, :cond_264

    .line 418
    const-string v2, "BAND_258"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    or-int/lit16 v1, v1, 0x102

    .line 421
    :cond_264
    and-int/lit16 v2, p0, 0x104

    const/16 v3, 0x104

    if-ne v2, v3, :cond_271

    .line 422
    const-string v2, "BAND_260"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    or-int/lit16 v1, v1, 0x104

    .line 425
    :cond_271
    and-int/lit16 v2, p0, 0x105

    const/16 v3, 0x105

    if-ne v2, v3, :cond_27e

    .line 426
    const-string v2, "BAND_261"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    or-int/lit16 v1, v1, 0x105

    .line 429
    :cond_27e
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_28b

    .line 430
    const-string v2, "BAND_26"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    or-int/lit8 v1, v1, 0x1a

    .line 433
    :cond_28b
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_298

    .line 434
    const-string v2, "BAND_46"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    or-int/lit8 v1, v1, 0x2e

    .line 437
    :cond_298
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_2a5

    .line 438
    const-string v2, "BAND_53"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    or-int/lit8 v1, v1, 0x35

    .line 441
    :cond_2a5
    and-int/lit8 v2, p0, 0x60

    const/16 v3, 0x60

    if-ne v2, v3, :cond_2b2

    .line 442
    const-string v2, "BAND_96"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    or-int/lit8 v1, v1, 0x60

    .line 445
    :cond_2b2
    if-eq p0, v1, :cond_2d0

    .line 446
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

    .line 448
    :cond_2d0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 68
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 69
    const-string v0, "BAND_1"

    return-object v0

    .line 71
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 72
    const-string v0, "BAND_2"

    return-object v0

    .line 74
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 75
    const-string v0, "BAND_3"

    return-object v0

    .line 77
    :cond_12
    const/4 v0, 0x5

    if-ne p0, v0, :cond_18

    .line 78
    const-string v0, "BAND_5"

    return-object v0

    .line 80
    :cond_18
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1e

    .line 81
    const-string v0, "BAND_7"

    return-object v0

    .line 83
    :cond_1e
    const/16 v0, 0x8

    if-ne p0, v0, :cond_25

    .line 84
    const-string v0, "BAND_8"

    return-object v0

    .line 86
    :cond_25
    const/16 v0, 0xc

    if-ne p0, v0, :cond_2c

    .line 87
    const-string v0, "BAND_12"

    return-object v0

    .line 89
    :cond_2c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_33

    .line 90
    const-string v0, "BAND_14"

    return-object v0

    .line 92
    :cond_33
    const/16 v0, 0x12

    if-ne p0, v0, :cond_3a

    .line 93
    const-string v0, "BAND_18"

    return-object v0

    .line 95
    :cond_3a
    const/16 v0, 0x14

    if-ne p0, v0, :cond_41

    .line 96
    const-string v0, "BAND_20"

    return-object v0

    .line 98
    :cond_41
    const/16 v0, 0x19

    if-ne p0, v0, :cond_48

    .line 99
    const-string v0, "BAND_25"

    return-object v0

    .line 101
    :cond_48
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_4f

    .line 102
    const-string v0, "BAND_28"

    return-object v0

    .line 104
    :cond_4f
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_56

    .line 105
    const-string v0, "BAND_29"

    return-object v0

    .line 107
    :cond_56
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_5d

    .line 108
    const-string v0, "BAND_30"

    return-object v0

    .line 110
    :cond_5d
    const/16 v0, 0x22

    if-ne p0, v0, :cond_64

    .line 111
    const-string v0, "BAND_34"

    return-object v0

    .line 113
    :cond_64
    const/16 v0, 0x26

    if-ne p0, v0, :cond_6b

    .line 114
    const-string v0, "BAND_38"

    return-object v0

    .line 116
    :cond_6b
    const/16 v0, 0x27

    if-ne p0, v0, :cond_72

    .line 117
    const-string v0, "BAND_39"

    return-object v0

    .line 119
    :cond_72
    const/16 v0, 0x28

    if-ne p0, v0, :cond_79

    .line 120
    const-string v0, "BAND_40"

    return-object v0

    .line 122
    :cond_79
    const/16 v0, 0x29

    if-ne p0, v0, :cond_80

    .line 123
    const-string v0, "BAND_41"

    return-object v0

    .line 125
    :cond_80
    const/16 v0, 0x30

    if-ne p0, v0, :cond_87

    .line 126
    const-string v0, "BAND_48"

    return-object v0

    .line 128
    :cond_87
    const/16 v0, 0x32

    if-ne p0, v0, :cond_8e

    .line 129
    const-string v0, "BAND_50"

    return-object v0

    .line 131
    :cond_8e
    const/16 v0, 0x33

    if-ne p0, v0, :cond_95

    .line 132
    const-string v0, "BAND_51"

    return-object v0

    .line 134
    :cond_95
    const/16 v0, 0x41

    if-ne p0, v0, :cond_9c

    .line 135
    const-string v0, "BAND_65"

    return-object v0

    .line 137
    :cond_9c
    const/16 v0, 0x42

    if-ne p0, v0, :cond_a3

    .line 138
    const-string v0, "BAND_66"

    return-object v0

    .line 140
    :cond_a3
    const/16 v0, 0x46

    if-ne p0, v0, :cond_aa

    .line 141
    const-string v0, "BAND_70"

    return-object v0

    .line 143
    :cond_aa
    const/16 v0, 0x47

    if-ne p0, v0, :cond_b1

    .line 144
    const-string v0, "BAND_71"

    return-object v0

    .line 146
    :cond_b1
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_b8

    .line 147
    const-string v0, "BAND_74"

    return-object v0

    .line 149
    :cond_b8
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_bf

    .line 150
    const-string v0, "BAND_75"

    return-object v0

    .line 152
    :cond_bf
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_c6

    .line 153
    const-string v0, "BAND_76"

    return-object v0

    .line 155
    :cond_c6
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_cd

    .line 156
    const-string v0, "BAND_77"

    return-object v0

    .line 158
    :cond_cd
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_d4

    .line 159
    const-string v0, "BAND_78"

    return-object v0

    .line 161
    :cond_d4
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_db

    .line 162
    const-string v0, "BAND_79"

    return-object v0

    .line 164
    :cond_db
    const/16 v0, 0x50

    if-ne p0, v0, :cond_e2

    .line 165
    const-string v0, "BAND_80"

    return-object v0

    .line 167
    :cond_e2
    const/16 v0, 0x51

    if-ne p0, v0, :cond_e9

    .line 168
    const-string v0, "BAND_81"

    return-object v0

    .line 170
    :cond_e9
    const/16 v0, 0x52

    if-ne p0, v0, :cond_f0

    .line 171
    const-string v0, "BAND_82"

    return-object v0

    .line 173
    :cond_f0
    const/16 v0, 0x53

    if-ne p0, v0, :cond_f7

    .line 174
    const-string v0, "BAND_83"

    return-object v0

    .line 176
    :cond_f7
    const/16 v0, 0x54

    if-ne p0, v0, :cond_fe

    .line 177
    const-string v0, "BAND_84"

    return-object v0

    .line 179
    :cond_fe
    const/16 v0, 0x56

    if-ne p0, v0, :cond_105

    .line 180
    const-string v0, "BAND_86"

    return-object v0

    .line 182
    :cond_105
    const/16 v0, 0x59

    if-ne p0, v0, :cond_10c

    .line 183
    const-string v0, "BAND_89"

    return-object v0

    .line 185
    :cond_10c
    const/16 v0, 0x5a

    if-ne p0, v0, :cond_113

    .line 186
    const-string v0, "BAND_90"

    return-object v0

    .line 188
    :cond_113
    const/16 v0, 0x5b

    if-ne p0, v0, :cond_11a

    .line 189
    const-string v0, "BAND_91"

    return-object v0

    .line 191
    :cond_11a
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_121

    .line 192
    const-string v0, "BAND_92"

    return-object v0

    .line 194
    :cond_121
    const/16 v0, 0x5d

    if-ne p0, v0, :cond_128

    .line 195
    const-string v0, "BAND_93"

    return-object v0

    .line 197
    :cond_128
    const/16 v0, 0x5e

    if-ne p0, v0, :cond_12f

    .line 198
    const-string v0, "BAND_94"

    return-object v0

    .line 200
    :cond_12f
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_136

    .line 201
    const-string v0, "BAND_95"

    return-object v0

    .line 203
    :cond_136
    const/16 v0, 0x101

    if-ne p0, v0, :cond_13d

    .line 204
    const-string v0, "BAND_257"

    return-object v0

    .line 206
    :cond_13d
    const/16 v0, 0x102

    if-ne p0, v0, :cond_144

    .line 207
    const-string v0, "BAND_258"

    return-object v0

    .line 209
    :cond_144
    const/16 v0, 0x104

    if-ne p0, v0, :cond_14b

    .line 210
    const-string v0, "BAND_260"

    return-object v0

    .line 212
    :cond_14b
    const/16 v0, 0x105

    if-ne p0, v0, :cond_152

    .line 213
    const-string v0, "BAND_261"

    return-object v0

    .line 215
    :cond_152
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_159

    .line 216
    const-string v0, "BAND_26"

    return-object v0

    .line 218
    :cond_159
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_160

    .line 219
    const-string v0, "BAND_46"

    return-object v0

    .line 221
    :cond_160
    const/16 v0, 0x35

    if-ne p0, v0, :cond_167

    .line 222
    const-string v0, "BAND_53"

    return-object v0

    .line 224
    :cond_167
    const/16 v0, 0x60

    if-ne p0, v0, :cond_16e

    .line 225
    const-string v0, "BAND_96"

    return-object v0

    .line 227
    :cond_16e
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
