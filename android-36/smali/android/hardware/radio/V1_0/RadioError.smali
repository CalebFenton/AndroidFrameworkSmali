.class public final Landroid/hardware/radio/V1_0/RadioError;
.super Ljava/lang/Object;
.source "RadioError.java"


# static fields
.field public static final blacklist ABORTED:I = 0x41

.field public static final blacklist CANCELLED:I = 0x7

.field public static final blacklist DEVICE_IN_USE:I = 0x40

.field public static final blacklist DIAL_MODIFIED_TO_DIAL:I = 0x14

.field public static final blacklist DIAL_MODIFIED_TO_SS:I = 0x13

.field public static final blacklist DIAL_MODIFIED_TO_USSD:I = 0x12

.field public static final blacklist EMPTY_RECORD:I = 0x37

.field public static final blacklist ENCODING_ERR:I = 0x39

.field public static final blacklist FDN_CHECK_FAILURE:I = 0xe

.field public static final blacklist GENERIC_FAILURE:I = 0x2

.field public static final blacklist ILLEGAL_SIM_OR_ME:I = 0xf

.field public static final blacklist INTERNAL_ERR:I = 0x26

.field public static final blacklist INVALID_ARGUMENTS:I = 0x2c

.field public static final blacklist INVALID_CALL_ID:I = 0x2f

.field public static final blacklist INVALID_MODEM_STATE:I = 0x2e

.field public static final blacklist INVALID_RESPONSE:I = 0x42

.field public static final blacklist INVALID_SIM_STATE:I = 0x2d

.field public static final blacklist INVALID_SMSC_ADDRESS:I = 0x3a

.field public static final blacklist INVALID_SMS_FORMAT:I = 0x38

.field public static final blacklist INVALID_STATE:I = 0x29

.field public static final blacklist LCE_NOT_SUPPORTED:I = 0x24

.field public static final blacklist MISSING_RESOURCE:I = 0x10

.field public static final blacklist MODEM_ERR:I = 0x28

.field public static final blacklist MODE_NOT_SUPPORTED:I = 0xd

.field public static final blacklist NETWORK_ERR:I = 0x31

.field public static final blacklist NETWORK_NOT_READY:I = 0x3c

.field public static final blacklist NETWORK_REJECT:I = 0x35

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist NOT_PROVISIONED:I = 0x3d

.field public static final blacklist NO_MEMORY:I = 0x25

.field public static final blacklist NO_NETWORK_FOUND:I = 0x3f

.field public static final blacklist NO_RESOURCES:I = 0x2a

.field public static final blacklist NO_SMS_TO_ACK:I = 0x30

.field public static final blacklist NO_SUBSCRIPTION:I = 0x3e

.field public static final blacklist NO_SUCH_ELEMENT:I = 0x11

.field public static final blacklist NO_SUCH_ENTRY:I = 0x3b

.field public static final blacklist OEM_ERROR_1:I = 0x1f5

.field public static final blacklist OEM_ERROR_10:I = 0x1fe

.field public static final blacklist OEM_ERROR_11:I = 0x1ff

.field public static final blacklist OEM_ERROR_12:I = 0x200

.field public static final blacklist OEM_ERROR_13:I = 0x201

.field public static final blacklist OEM_ERROR_14:I = 0x202

.field public static final blacklist OEM_ERROR_15:I = 0x203

.field public static final blacklist OEM_ERROR_16:I = 0x204

.field public static final blacklist OEM_ERROR_17:I = 0x205

.field public static final blacklist OEM_ERROR_18:I = 0x206

.field public static final blacklist OEM_ERROR_19:I = 0x207

.field public static final blacklist OEM_ERROR_2:I = 0x1f6

.field public static final blacklist OEM_ERROR_20:I = 0x208

.field public static final blacklist OEM_ERROR_21:I = 0x209

.field public static final blacklist OEM_ERROR_22:I = 0x20a

.field public static final blacklist OEM_ERROR_23:I = 0x20b

.field public static final blacklist OEM_ERROR_24:I = 0x20c

.field public static final blacklist OEM_ERROR_25:I = 0x20d

.field public static final blacklist OEM_ERROR_3:I = 0x1f7

.field public static final blacklist OEM_ERROR_4:I = 0x1f8

.field public static final blacklist OEM_ERROR_5:I = 0x1f9

.field public static final blacklist OEM_ERROR_6:I = 0x1fa

.field public static final blacklist OEM_ERROR_7:I = 0x1fb

.field public static final blacklist OEM_ERROR_8:I = 0x1fc

.field public static final blacklist OEM_ERROR_9:I = 0x1fd

.field public static final blacklist OPERATION_NOT_ALLOWED:I = 0x36

.field public static final blacklist OP_NOT_ALLOWED_BEFORE_REG_TO_NW:I = 0x9

.field public static final blacklist OP_NOT_ALLOWED_DURING_VOICE_CALL:I = 0x8

.field public static final blacklist PASSWORD_INCORRECT:I = 0x3

.field public static final blacklist RADIO_NOT_AVAILABLE:I = 0x1

.field public static final blacklist REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final blacklist REQUEST_RATE_LIMITED:I = 0x32

.field public static final blacklist SIM_ABSENT:I = 0xb

.field public static final blacklist SIM_BUSY:I = 0x33

.field public static final blacklist SIM_ERR:I = 0x2b

.field public static final blacklist SIM_FULL:I = 0x34

.field public static final blacklist SIM_PIN2:I = 0x4

.field public static final blacklist SIM_PUK2:I = 0x5

.field public static final blacklist SMS_SEND_FAIL_RETRY:I = 0xa

.field public static final blacklist SS_MODIFIED_TO_DIAL:I = 0x18

.field public static final blacklist SS_MODIFIED_TO_SS:I = 0x1b

.field public static final blacklist SS_MODIFIED_TO_USSD:I = 0x19

.field public static final blacklist SUBSCRIPTION_NOT_AVAILABLE:I = 0xc

.field public static final blacklist SUBSCRIPTION_NOT_SUPPORTED:I = 0x1a

.field public static final blacklist SYSTEM_ERR:I = 0x27

.field public static final blacklist USSD_MODIFIED_TO_DIAL:I = 0x15

.field public static final blacklist USSD_MODIFIED_TO_SS:I = 0x16

.field public static final blacklist USSD_MODIFIED_TO_USSD:I = 0x17


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

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 348
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 350
    const-string v2, "RADIO_NOT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    or-int/lit8 v1, v1, 0x1

    .line 353
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 354
    const-string v2, "GENERIC_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    or-int/lit8 v1, v1, 0x2

    .line 357
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 358
    const-string v2, "PASSWORD_INCORRECT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    or-int/lit8 v1, v1, 0x3

    .line 361
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 362
    const-string v2, "SIM_PIN2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    or-int/lit8 v1, v1, 0x4

    .line 365
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 366
    const-string v2, "SIM_PUK2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    or-int/lit8 v1, v1, 0x5

    .line 369
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 370
    const-string v2, "REQUEST_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    or-int/lit8 v1, v1, 0x6

    .line 373
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 374
    const-string v2, "CANCELLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    or-int/lit8 v1, v1, 0x7

    .line 377
    :cond_5f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6c

    .line 378
    const-string v2, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    or-int/lit8 v1, v1, 0x8

    .line 381
    :cond_6c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_79

    .line 382
    const-string v2, "OP_NOT_ALLOWED_BEFORE_REG_TO_NW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    or-int/lit8 v1, v1, 0x9

    .line 385
    :cond_79
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    .line 386
    const-string v2, "SMS_SEND_FAIL_RETRY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    or-int/lit8 v1, v1, 0xa

    .line 389
    :cond_86
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_93

    .line 390
    const-string v2, "SIM_ABSENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    or-int/lit8 v1, v1, 0xb

    .line 393
    :cond_93
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a0

    .line 394
    const-string v2, "SUBSCRIPTION_NOT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    or-int/lit8 v1, v1, 0xc

    .line 397
    :cond_a0
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_ad

    .line 398
    const-string v2, "MODE_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    or-int/lit8 v1, v1, 0xd

    .line 401
    :cond_ad
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_ba

    .line 402
    const-string v2, "FDN_CHECK_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    or-int/lit8 v1, v1, 0xe

    .line 405
    :cond_ba
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c7

    .line 406
    const-string v2, "ILLEGAL_SIM_OR_ME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    or-int/lit8 v1, v1, 0xf

    .line 409
    :cond_c7
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_d4

    .line 410
    const-string v2, "MISSING_RESOURCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    or-int/lit8 v1, v1, 0x10

    .line 413
    :cond_d4
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_e1

    .line 414
    const-string v2, "NO_SUCH_ELEMENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    or-int/lit8 v1, v1, 0x11

    .line 417
    :cond_e1
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_ee

    .line 418
    const-string v2, "DIAL_MODIFIED_TO_USSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    or-int/lit8 v1, v1, 0x12

    .line 421
    :cond_ee
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_fb

    .line 422
    const-string v2, "DIAL_MODIFIED_TO_SS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    or-int/lit8 v1, v1, 0x13

    .line 425
    :cond_fb
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_108

    .line 426
    const-string v2, "DIAL_MODIFIED_TO_DIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    or-int/lit8 v1, v1, 0x14

    .line 429
    :cond_108
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_115

    .line 430
    const-string v2, "USSD_MODIFIED_TO_DIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    or-int/lit8 v1, v1, 0x15

    .line 433
    :cond_115
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_122

    .line 434
    const-string v2, "USSD_MODIFIED_TO_SS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    or-int/lit8 v1, v1, 0x16

    .line 437
    :cond_122
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_12f

    .line 438
    const-string v2, "USSD_MODIFIED_TO_USSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    or-int/lit8 v1, v1, 0x17

    .line 441
    :cond_12f
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_13c

    .line 442
    const-string v2, "SS_MODIFIED_TO_DIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    or-int/lit8 v1, v1, 0x18

    .line 445
    :cond_13c
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_149

    .line 446
    const-string v2, "SS_MODIFIED_TO_USSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    or-int/lit8 v1, v1, 0x19

    .line 449
    :cond_149
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_156

    .line 450
    const-string v2, "SUBSCRIPTION_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    or-int/lit8 v1, v1, 0x1a

    .line 453
    :cond_156
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_163

    .line 454
    const-string v2, "SS_MODIFIED_TO_SS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    or-int/lit8 v1, v1, 0x1b

    .line 457
    :cond_163
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_170

    .line 458
    const-string v2, "LCE_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    or-int/lit8 v1, v1, 0x24

    .line 461
    :cond_170
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_17d

    .line 462
    const-string v2, "NO_MEMORY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    or-int/lit8 v1, v1, 0x25

    .line 465
    :cond_17d
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_18a

    .line 466
    const-string v2, "INTERNAL_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    or-int/lit8 v1, v1, 0x26

    .line 469
    :cond_18a
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_197

    .line 470
    const-string v2, "SYSTEM_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    or-int/lit8 v1, v1, 0x27

    .line 473
    :cond_197
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1a4

    .line 474
    const-string v2, "MODEM_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    or-int/lit8 v1, v1, 0x28

    .line 477
    :cond_1a4
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1b1

    .line 478
    const-string v2, "INVALID_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    or-int/lit8 v1, v1, 0x29

    .line 481
    :cond_1b1
    and-int/lit8 v2, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1be

    .line 482
    const-string v2, "NO_RESOURCES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    or-int/lit8 v1, v1, 0x2a

    .line 485
    :cond_1be
    and-int/lit8 v2, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1cb

    .line 486
    const-string v2, "SIM_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    or-int/lit8 v1, v1, 0x2b

    .line 489
    :cond_1cb
    and-int/lit8 v2, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1d8

    .line 490
    const-string v2, "INVALID_ARGUMENTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    or-int/lit8 v1, v1, 0x2c

    .line 493
    :cond_1d8
    and-int/lit8 v2, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1e5

    .line 494
    const-string v2, "INVALID_SIM_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    or-int/lit8 v1, v1, 0x2d

    .line 497
    :cond_1e5
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1f2

    .line 498
    const-string v2, "INVALID_MODEM_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    or-int/lit8 v1, v1, 0x2e

    .line 501
    :cond_1f2
    and-int/lit8 v2, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1ff

    .line 502
    const-string v2, "INVALID_CALL_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    or-int/lit8 v1, v1, 0x2f

    .line 505
    :cond_1ff
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_20c

    .line 506
    const-string v2, "NO_SMS_TO_ACK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    or-int/lit8 v1, v1, 0x30

    .line 509
    :cond_20c
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_219

    .line 510
    const-string v2, "NETWORK_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    or-int/lit8 v1, v1, 0x31

    .line 513
    :cond_219
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_226

    .line 514
    const-string v2, "REQUEST_RATE_LIMITED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    or-int/lit8 v1, v1, 0x32

    .line 517
    :cond_226
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_233

    .line 518
    const-string v2, "SIM_BUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    or-int/lit8 v1, v1, 0x33

    .line 521
    :cond_233
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_240

    .line 522
    const-string v2, "SIM_FULL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    or-int/lit8 v1, v1, 0x34

    .line 525
    :cond_240
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_24d

    .line 526
    const-string v2, "NETWORK_REJECT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    or-int/lit8 v1, v1, 0x35

    .line 529
    :cond_24d
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_25a

    .line 530
    const-string v2, "OPERATION_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    or-int/lit8 v1, v1, 0x36

    .line 533
    :cond_25a
    and-int/lit8 v2, p0, 0x37

    const/16 v3, 0x37

    if-ne v2, v3, :cond_267

    .line 534
    const-string v2, "EMPTY_RECORD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    or-int/lit8 v1, v1, 0x37

    .line 537
    :cond_267
    and-int/lit8 v2, p0, 0x38

    const/16 v3, 0x38

    if-ne v2, v3, :cond_274

    .line 538
    const-string v2, "INVALID_SMS_FORMAT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    or-int/lit8 v1, v1, 0x38

    .line 541
    :cond_274
    and-int/lit8 v2, p0, 0x39

    const/16 v3, 0x39

    if-ne v2, v3, :cond_281

    .line 542
    const-string v2, "ENCODING_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    or-int/lit8 v1, v1, 0x39

    .line 545
    :cond_281
    and-int/lit8 v2, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_28e

    .line 546
    const-string v2, "INVALID_SMSC_ADDRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    or-int/lit8 v1, v1, 0x3a

    .line 549
    :cond_28e
    and-int/lit8 v2, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_29b

    .line 550
    const-string v2, "NO_SUCH_ENTRY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    or-int/lit8 v1, v1, 0x3b

    .line 553
    :cond_29b
    and-int/lit8 v2, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2a8

    .line 554
    const-string v2, "NETWORK_NOT_READY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    or-int/lit8 v1, v1, 0x3c

    .line 557
    :cond_2a8
    and-int/lit8 v2, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2b5

    .line 558
    const-string v2, "NOT_PROVISIONED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    or-int/lit8 v1, v1, 0x3d

    .line 561
    :cond_2b5
    and-int/lit8 v2, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2c2

    .line 562
    const-string v2, "NO_SUBSCRIPTION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    or-int/lit8 v1, v1, 0x3e

    .line 565
    :cond_2c2
    and-int/lit8 v2, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_2cf

    .line 566
    const-string v2, "NO_NETWORK_FOUND"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    or-int/lit8 v1, v1, 0x3f

    .line 569
    :cond_2cf
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2dc

    .line 570
    const-string v2, "DEVICE_IN_USE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    or-int/lit8 v1, v1, 0x40

    .line 573
    :cond_2dc
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_2e9

    .line 574
    const-string v2, "ABORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    or-int/lit8 v1, v1, 0x41

    .line 577
    :cond_2e9
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_2f6

    .line 578
    const-string v2, "INVALID_RESPONSE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    or-int/lit8 v1, v1, 0x42

    .line 581
    :cond_2f6
    and-int/lit16 v2, p0, 0x1f5

    const/16 v3, 0x1f5

    if-ne v2, v3, :cond_303

    .line 582
    const-string v2, "OEM_ERROR_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    or-int/lit16 v1, v1, 0x1f5

    .line 585
    :cond_303
    and-int/lit16 v2, p0, 0x1f6

    const/16 v3, 0x1f6

    if-ne v2, v3, :cond_310

    .line 586
    const-string v2, "OEM_ERROR_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    or-int/lit16 v1, v1, 0x1f6

    .line 589
    :cond_310
    and-int/lit16 v2, p0, 0x1f7

    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_31d

    .line 590
    const-string v2, "OEM_ERROR_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    or-int/lit16 v1, v1, 0x1f7

    .line 593
    :cond_31d
    and-int/lit16 v2, p0, 0x1f8

    const/16 v3, 0x1f8

    if-ne v2, v3, :cond_32a

    .line 594
    const-string v2, "OEM_ERROR_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    or-int/lit16 v1, v1, 0x1f8

    .line 597
    :cond_32a
    and-int/lit16 v2, p0, 0x1f9

    const/16 v3, 0x1f9

    if-ne v2, v3, :cond_337

    .line 598
    const-string v2, "OEM_ERROR_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    or-int/lit16 v1, v1, 0x1f9

    .line 601
    :cond_337
    and-int/lit16 v2, p0, 0x1fa

    const/16 v3, 0x1fa

    if-ne v2, v3, :cond_344

    .line 602
    const-string v2, "OEM_ERROR_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    or-int/lit16 v1, v1, 0x1fa

    .line 605
    :cond_344
    and-int/lit16 v2, p0, 0x1fb

    const/16 v3, 0x1fb

    if-ne v2, v3, :cond_351

    .line 606
    const-string v2, "OEM_ERROR_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    or-int/lit16 v1, v1, 0x1fb

    .line 609
    :cond_351
    and-int/lit16 v2, p0, 0x1fc

    const/16 v3, 0x1fc

    if-ne v2, v3, :cond_35e

    .line 610
    const-string v2, "OEM_ERROR_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    or-int/lit16 v1, v1, 0x1fc

    .line 613
    :cond_35e
    and-int/lit16 v2, p0, 0x1fd

    const/16 v3, 0x1fd

    if-ne v2, v3, :cond_36b

    .line 614
    const-string v2, "OEM_ERROR_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    or-int/lit16 v1, v1, 0x1fd

    .line 617
    :cond_36b
    and-int/lit16 v2, p0, 0x1fe

    const/16 v3, 0x1fe

    if-ne v2, v3, :cond_378

    .line 618
    const-string v2, "OEM_ERROR_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    or-int/lit16 v1, v1, 0x1fe

    .line 621
    :cond_378
    and-int/lit16 v2, p0, 0x1ff

    const/16 v3, 0x1ff

    if-ne v2, v3, :cond_385

    .line 622
    const-string v2, "OEM_ERROR_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    or-int/lit16 v1, v1, 0x1ff

    .line 625
    :cond_385
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_392

    .line 626
    const-string v2, "OEM_ERROR_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    or-int/lit16 v1, v1, 0x200

    .line 629
    :cond_392
    and-int/lit16 v2, p0, 0x201

    const/16 v3, 0x201

    if-ne v2, v3, :cond_39f

    .line 630
    const-string v2, "OEM_ERROR_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    or-int/lit16 v1, v1, 0x201

    .line 633
    :cond_39f
    and-int/lit16 v2, p0, 0x202

    const/16 v3, 0x202

    if-ne v2, v3, :cond_3ac

    .line 634
    const-string v2, "OEM_ERROR_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    or-int/lit16 v1, v1, 0x202

    .line 637
    :cond_3ac
    and-int/lit16 v2, p0, 0x203

    const/16 v3, 0x203

    if-ne v2, v3, :cond_3b9

    .line 638
    const-string v2, "OEM_ERROR_15"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    or-int/lit16 v1, v1, 0x203

    .line 641
    :cond_3b9
    and-int/lit16 v2, p0, 0x204

    const/16 v3, 0x204

    if-ne v2, v3, :cond_3c6

    .line 642
    const-string v2, "OEM_ERROR_16"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    or-int/lit16 v1, v1, 0x204

    .line 645
    :cond_3c6
    and-int/lit16 v2, p0, 0x205

    const/16 v3, 0x205

    if-ne v2, v3, :cond_3d3

    .line 646
    const-string v2, "OEM_ERROR_17"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    or-int/lit16 v1, v1, 0x205

    .line 649
    :cond_3d3
    and-int/lit16 v2, p0, 0x206

    const/16 v3, 0x206

    if-ne v2, v3, :cond_3e0

    .line 650
    const-string v2, "OEM_ERROR_18"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    or-int/lit16 v1, v1, 0x206

    .line 653
    :cond_3e0
    and-int/lit16 v2, p0, 0x207

    const/16 v3, 0x207

    if-ne v2, v3, :cond_3ed

    .line 654
    const-string v2, "OEM_ERROR_19"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    or-int/lit16 v1, v1, 0x207

    .line 657
    :cond_3ed
    and-int/lit16 v2, p0, 0x208

    const/16 v3, 0x208

    if-ne v2, v3, :cond_3fa

    .line 658
    const-string v2, "OEM_ERROR_20"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    or-int/lit16 v1, v1, 0x208

    .line 661
    :cond_3fa
    and-int/lit16 v2, p0, 0x209

    const/16 v3, 0x209

    if-ne v2, v3, :cond_407

    .line 662
    const-string v2, "OEM_ERROR_21"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    or-int/lit16 v1, v1, 0x209

    .line 665
    :cond_407
    and-int/lit16 v2, p0, 0x20a

    const/16 v3, 0x20a

    if-ne v2, v3, :cond_414

    .line 666
    const-string v2, "OEM_ERROR_22"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    or-int/lit16 v1, v1, 0x20a

    .line 669
    :cond_414
    and-int/lit16 v2, p0, 0x20b

    const/16 v3, 0x20b

    if-ne v2, v3, :cond_421

    .line 670
    const-string v2, "OEM_ERROR_23"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    or-int/lit16 v1, v1, 0x20b

    .line 673
    :cond_421
    and-int/lit16 v2, p0, 0x20c

    const/16 v3, 0x20c

    if-ne v2, v3, :cond_42e

    .line 674
    const-string v2, "OEM_ERROR_24"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    or-int/lit16 v1, v1, 0x20c

    .line 677
    :cond_42e
    and-int/lit16 v2, p0, 0x20d

    const/16 v3, 0x20d

    if-ne v2, v3, :cond_43b

    .line 678
    const-string v2, "OEM_ERROR_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    or-int/lit16 v1, v1, 0x20d

    .line 681
    :cond_43b
    if-eq p0, v1, :cond_459

    .line 682
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

    .line 684
    :cond_459
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 90
    if-nez p0, :cond_5

    .line 91
    const-string v0, "NONE"

    return-object v0

    .line 93
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 94
    const-string v0, "RADIO_NOT_AVAILABLE"

    return-object v0

    .line 96
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 97
    const-string v0, "GENERIC_FAILURE"

    return-object v0

    .line 99
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 100
    const-string v0, "PASSWORD_INCORRECT"

    return-object v0

    .line 102
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 103
    const-string v0, "SIM_PIN2"

    return-object v0

    .line 105
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 106
    const-string v0, "SIM_PUK2"

    return-object v0

    .line 108
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 109
    const-string v0, "REQUEST_NOT_SUPPORTED"

    return-object v0

    .line 111
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 112
    const-string v0, "CANCELLED"

    return-object v0

    .line 114
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 115
    const-string v0, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    return-object v0

    .line 117
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 118
    const-string v0, "OP_NOT_ALLOWED_BEFORE_REG_TO_NW"

    return-object v0

    .line 120
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 121
    const-string v0, "SMS_SEND_FAIL_RETRY"

    return-object v0

    .line 123
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 124
    const-string v0, "SIM_ABSENT"

    return-object v0

    .line 126
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 127
    const-string v0, "SUBSCRIPTION_NOT_AVAILABLE"

    return-object v0

    .line 129
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 130
    const-string v0, "MODE_NOT_SUPPORTED"

    return-object v0

    .line 132
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 133
    const-string v0, "FDN_CHECK_FAILURE"

    return-object v0

    .line 135
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    .line 136
    const-string v0, "ILLEGAL_SIM_OR_ME"

    return-object v0

    .line 138
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    .line 139
    const-string v0, "MISSING_RESOURCE"

    return-object v0

    .line 141
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    .line 142
    const-string v0, "NO_SUCH_ELEMENT"

    return-object v0

    .line 144
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    .line 145
    const-string v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    .line 147
    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    .line 148
    const-string v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    .line 150
    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    .line 151
    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    .line 153
    :cond_8a
    const/16 v0, 0x15

    if-ne p0, v0, :cond_91

    .line 154
    const-string v0, "USSD_MODIFIED_TO_DIAL"

    return-object v0

    .line 156
    :cond_91
    const/16 v0, 0x16

    if-ne p0, v0, :cond_98

    .line 157
    const-string v0, "USSD_MODIFIED_TO_SS"

    return-object v0

    .line 159
    :cond_98
    const/16 v0, 0x17

    if-ne p0, v0, :cond_9f

    .line 160
    const-string v0, "USSD_MODIFIED_TO_USSD"

    return-object v0

    .line 162
    :cond_9f
    const/16 v0, 0x18

    if-ne p0, v0, :cond_a6

    .line 163
    const-string v0, "SS_MODIFIED_TO_DIAL"

    return-object v0

    .line 165
    :cond_a6
    const/16 v0, 0x19

    if-ne p0, v0, :cond_ad

    .line 166
    const-string v0, "SS_MODIFIED_TO_USSD"

    return-object v0

    .line 168
    :cond_ad
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_b4

    .line 169
    const-string v0, "SUBSCRIPTION_NOT_SUPPORTED"

    return-object v0

    .line 171
    :cond_b4
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_bb

    .line 172
    const-string v0, "SS_MODIFIED_TO_SS"

    return-object v0

    .line 174
    :cond_bb
    const/16 v0, 0x24

    if-ne p0, v0, :cond_c2

    .line 175
    const-string v0, "LCE_NOT_SUPPORTED"

    return-object v0

    .line 177
    :cond_c2
    const/16 v0, 0x25

    if-ne p0, v0, :cond_c9

    .line 178
    const-string v0, "NO_MEMORY"

    return-object v0

    .line 180
    :cond_c9
    const/16 v0, 0x26

    if-ne p0, v0, :cond_d0

    .line 181
    const-string v0, "INTERNAL_ERR"

    return-object v0

    .line 183
    :cond_d0
    const/16 v0, 0x27

    if-ne p0, v0, :cond_d7

    .line 184
    const-string v0, "SYSTEM_ERR"

    return-object v0

    .line 186
    :cond_d7
    const/16 v0, 0x28

    if-ne p0, v0, :cond_de

    .line 187
    const-string v0, "MODEM_ERR"

    return-object v0

    .line 189
    :cond_de
    const/16 v0, 0x29

    if-ne p0, v0, :cond_e5

    .line 190
    const-string v0, "INVALID_STATE"

    return-object v0

    .line 192
    :cond_e5
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_ec

    .line 193
    const-string v0, "NO_RESOURCES"

    return-object v0

    .line 195
    :cond_ec
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_f3

    .line 196
    const-string v0, "SIM_ERR"

    return-object v0

    .line 198
    :cond_f3
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_fa

    .line 199
    const-string v0, "INVALID_ARGUMENTS"

    return-object v0

    .line 201
    :cond_fa
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_101

    .line 202
    const-string v0, "INVALID_SIM_STATE"

    return-object v0

    .line 204
    :cond_101
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_108

    .line 205
    const-string v0, "INVALID_MODEM_STATE"

    return-object v0

    .line 207
    :cond_108
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_10f

    .line 208
    const-string v0, "INVALID_CALL_ID"

    return-object v0

    .line 210
    :cond_10f
    const/16 v0, 0x30

    if-ne p0, v0, :cond_116

    .line 211
    const-string v0, "NO_SMS_TO_ACK"

    return-object v0

    .line 213
    :cond_116
    const/16 v0, 0x31

    if-ne p0, v0, :cond_11d

    .line 214
    const-string v0, "NETWORK_ERR"

    return-object v0

    .line 216
    :cond_11d
    const/16 v0, 0x32

    if-ne p0, v0, :cond_124

    .line 217
    const-string v0, "REQUEST_RATE_LIMITED"

    return-object v0

    .line 219
    :cond_124
    const/16 v0, 0x33

    if-ne p0, v0, :cond_12b

    .line 220
    const-string v0, "SIM_BUSY"

    return-object v0

    .line 222
    :cond_12b
    const/16 v0, 0x34

    if-ne p0, v0, :cond_132

    .line 223
    const-string v0, "SIM_FULL"

    return-object v0

    .line 225
    :cond_132
    const/16 v0, 0x35

    if-ne p0, v0, :cond_139

    .line 226
    const-string v0, "NETWORK_REJECT"

    return-object v0

    .line 228
    :cond_139
    const/16 v0, 0x36

    if-ne p0, v0, :cond_140

    .line 229
    const-string v0, "OPERATION_NOT_ALLOWED"

    return-object v0

    .line 231
    :cond_140
    const/16 v0, 0x37

    if-ne p0, v0, :cond_147

    .line 232
    const-string v0, "EMPTY_RECORD"

    return-object v0

    .line 234
    :cond_147
    const/16 v0, 0x38

    if-ne p0, v0, :cond_14e

    .line 235
    const-string v0, "INVALID_SMS_FORMAT"

    return-object v0

    .line 237
    :cond_14e
    const/16 v0, 0x39

    if-ne p0, v0, :cond_155

    .line 238
    const-string v0, "ENCODING_ERR"

    return-object v0

    .line 240
    :cond_155
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_15c

    .line 241
    const-string v0, "INVALID_SMSC_ADDRESS"

    return-object v0

    .line 243
    :cond_15c
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_163

    .line 244
    const-string v0, "NO_SUCH_ENTRY"

    return-object v0

    .line 246
    :cond_163
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_16a

    .line 247
    const-string v0, "NETWORK_NOT_READY"

    return-object v0

    .line 249
    :cond_16a
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_171

    .line 250
    const-string v0, "NOT_PROVISIONED"

    return-object v0

    .line 252
    :cond_171
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_178

    .line 253
    const-string v0, "NO_SUBSCRIPTION"

    return-object v0

    .line 255
    :cond_178
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_17f

    .line 256
    const-string v0, "NO_NETWORK_FOUND"

    return-object v0

    .line 258
    :cond_17f
    const/16 v0, 0x40

    if-ne p0, v0, :cond_186

    .line 259
    const-string v0, "DEVICE_IN_USE"

    return-object v0

    .line 261
    :cond_186
    const/16 v0, 0x41

    if-ne p0, v0, :cond_18d

    .line 262
    const-string v0, "ABORTED"

    return-object v0

    .line 264
    :cond_18d
    const/16 v0, 0x42

    if-ne p0, v0, :cond_194

    .line 265
    const-string v0, "INVALID_RESPONSE"

    return-object v0

    .line 267
    :cond_194
    const/16 v0, 0x1f5

    if-ne p0, v0, :cond_19b

    .line 268
    const-string v0, "OEM_ERROR_1"

    return-object v0

    .line 270
    :cond_19b
    const/16 v0, 0x1f6

    if-ne p0, v0, :cond_1a2

    .line 271
    const-string v0, "OEM_ERROR_2"

    return-object v0

    .line 273
    :cond_1a2
    const/16 v0, 0x1f7

    if-ne p0, v0, :cond_1a9

    .line 274
    const-string v0, "OEM_ERROR_3"

    return-object v0

    .line 276
    :cond_1a9
    const/16 v0, 0x1f8

    if-ne p0, v0, :cond_1b0

    .line 277
    const-string v0, "OEM_ERROR_4"

    return-object v0

    .line 279
    :cond_1b0
    const/16 v0, 0x1f9

    if-ne p0, v0, :cond_1b7

    .line 280
    const-string v0, "OEM_ERROR_5"

    return-object v0

    .line 282
    :cond_1b7
    const/16 v0, 0x1fa

    if-ne p0, v0, :cond_1be

    .line 283
    const-string v0, "OEM_ERROR_6"

    return-object v0

    .line 285
    :cond_1be
    const/16 v0, 0x1fb

    if-ne p0, v0, :cond_1c5

    .line 286
    const-string v0, "OEM_ERROR_7"

    return-object v0

    .line 288
    :cond_1c5
    const/16 v0, 0x1fc

    if-ne p0, v0, :cond_1cc

    .line 289
    const-string v0, "OEM_ERROR_8"

    return-object v0

    .line 291
    :cond_1cc
    const/16 v0, 0x1fd

    if-ne p0, v0, :cond_1d3

    .line 292
    const-string v0, "OEM_ERROR_9"

    return-object v0

    .line 294
    :cond_1d3
    const/16 v0, 0x1fe

    if-ne p0, v0, :cond_1da

    .line 295
    const-string v0, "OEM_ERROR_10"

    return-object v0

    .line 297
    :cond_1da
    const/16 v0, 0x1ff

    if-ne p0, v0, :cond_1e1

    .line 298
    const-string v0, "OEM_ERROR_11"

    return-object v0

    .line 300
    :cond_1e1
    const/16 v0, 0x200

    if-ne p0, v0, :cond_1e8

    .line 301
    const-string v0, "OEM_ERROR_12"

    return-object v0

    .line 303
    :cond_1e8
    const/16 v0, 0x201

    if-ne p0, v0, :cond_1ef

    .line 304
    const-string v0, "OEM_ERROR_13"

    return-object v0

    .line 306
    :cond_1ef
    const/16 v0, 0x202

    if-ne p0, v0, :cond_1f6

    .line 307
    const-string v0, "OEM_ERROR_14"

    return-object v0

    .line 309
    :cond_1f6
    const/16 v0, 0x203

    if-ne p0, v0, :cond_1fd

    .line 310
    const-string v0, "OEM_ERROR_15"

    return-object v0

    .line 312
    :cond_1fd
    const/16 v0, 0x204

    if-ne p0, v0, :cond_204

    .line 313
    const-string v0, "OEM_ERROR_16"

    return-object v0

    .line 315
    :cond_204
    const/16 v0, 0x205

    if-ne p0, v0, :cond_20b

    .line 316
    const-string v0, "OEM_ERROR_17"

    return-object v0

    .line 318
    :cond_20b
    const/16 v0, 0x206

    if-ne p0, v0, :cond_212

    .line 319
    const-string v0, "OEM_ERROR_18"

    return-object v0

    .line 321
    :cond_212
    const/16 v0, 0x207

    if-ne p0, v0, :cond_219

    .line 322
    const-string v0, "OEM_ERROR_19"

    return-object v0

    .line 324
    :cond_219
    const/16 v0, 0x208

    if-ne p0, v0, :cond_220

    .line 325
    const-string v0, "OEM_ERROR_20"

    return-object v0

    .line 327
    :cond_220
    const/16 v0, 0x209

    if-ne p0, v0, :cond_227

    .line 328
    const-string v0, "OEM_ERROR_21"

    return-object v0

    .line 330
    :cond_227
    const/16 v0, 0x20a

    if-ne p0, v0, :cond_22e

    .line 331
    const-string v0, "OEM_ERROR_22"

    return-object v0

    .line 333
    :cond_22e
    const/16 v0, 0x20b

    if-ne p0, v0, :cond_235

    .line 334
    const-string v0, "OEM_ERROR_23"

    return-object v0

    .line 336
    :cond_235
    const/16 v0, 0x20c

    if-ne p0, v0, :cond_23c

    .line 337
    const-string v0, "OEM_ERROR_24"

    return-object v0

    .line 339
    :cond_23c
    const/16 v0, 0x20d

    if-ne p0, v0, :cond_243

    .line 340
    const-string v0, "OEM_ERROR_25"

    return-object v0

    .line 342
    :cond_243
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
