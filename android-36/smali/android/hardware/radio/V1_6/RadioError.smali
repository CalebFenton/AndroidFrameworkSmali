.class public final Landroid/hardware/radio/V1_6/RadioError;
.super Ljava/lang/Object;
.source "RadioError.java"


# static fields
.field public static final blacklist ABORTED:I = 0x41

.field public static final blacklist ACCESS_BARRED:I = 0x44

.field public static final blacklist BLOCKED_DUE_TO_CALL:I = 0x45

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

.field public static final blacklist NO_RF_CALIBRATION_INFO:I = 0x47

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

.field public static final blacklist RF_HARDWARE_ISSUE:I = 0x46

.field public static final blacklist SIMULTANEOUS_SMS_AND_CALL_NOT_ALLOWED:I = 0x43

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

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 389
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 391
    const-string v2, "RADIO_NOT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    or-int/lit8 v1, v1, 0x1

    .line 394
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 395
    const-string v2, "GENERIC_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    or-int/lit8 v1, v1, 0x2

    .line 398
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 399
    const-string v2, "PASSWORD_INCORRECT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    or-int/lit8 v1, v1, 0x3

    .line 402
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 403
    const-string v2, "SIM_PIN2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    or-int/lit8 v1, v1, 0x4

    .line 406
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 407
    const-string v2, "SIM_PUK2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    or-int/lit8 v1, v1, 0x5

    .line 410
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 411
    const-string v2, "REQUEST_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    or-int/lit8 v1, v1, 0x6

    .line 414
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 415
    const-string v2, "CANCELLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    or-int/lit8 v1, v1, 0x7

    .line 418
    :cond_5f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6c

    .line 419
    const-string v2, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    or-int/lit8 v1, v1, 0x8

    .line 422
    :cond_6c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_79

    .line 423
    const-string v2, "OP_NOT_ALLOWED_BEFORE_REG_TO_NW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    or-int/lit8 v1, v1, 0x9

    .line 426
    :cond_79
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    .line 427
    const-string v2, "SMS_SEND_FAIL_RETRY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    or-int/lit8 v1, v1, 0xa

    .line 430
    :cond_86
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_93

    .line 431
    const-string v2, "SIM_ABSENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    or-int/lit8 v1, v1, 0xb

    .line 434
    :cond_93
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a0

    .line 435
    const-string v2, "SUBSCRIPTION_NOT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    or-int/lit8 v1, v1, 0xc

    .line 438
    :cond_a0
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_ad

    .line 439
    const-string v2, "MODE_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    or-int/lit8 v1, v1, 0xd

    .line 442
    :cond_ad
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_ba

    .line 443
    const-string v2, "FDN_CHECK_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    or-int/lit8 v1, v1, 0xe

    .line 446
    :cond_ba
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c7

    .line 447
    const-string v2, "ILLEGAL_SIM_OR_ME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    or-int/lit8 v1, v1, 0xf

    .line 450
    :cond_c7
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_d4

    .line 451
    const-string v2, "MISSING_RESOURCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    or-int/lit8 v1, v1, 0x10

    .line 454
    :cond_d4
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_e1

    .line 455
    const-string v2, "NO_SUCH_ELEMENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    or-int/lit8 v1, v1, 0x11

    .line 458
    :cond_e1
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_ee

    .line 459
    const-string v2, "DIAL_MODIFIED_TO_USSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    or-int/lit8 v1, v1, 0x12

    .line 462
    :cond_ee
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_fb

    .line 463
    const-string v2, "DIAL_MODIFIED_TO_SS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    or-int/lit8 v1, v1, 0x13

    .line 466
    :cond_fb
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_108

    .line 467
    const-string v2, "DIAL_MODIFIED_TO_DIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    or-int/lit8 v1, v1, 0x14

    .line 470
    :cond_108
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_115

    .line 471
    const-string v2, "USSD_MODIFIED_TO_DIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    or-int/lit8 v1, v1, 0x15

    .line 474
    :cond_115
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_122

    .line 475
    const-string v2, "USSD_MODIFIED_TO_SS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    or-int/lit8 v1, v1, 0x16

    .line 478
    :cond_122
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_12f

    .line 479
    const-string v2, "USSD_MODIFIED_TO_USSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    or-int/lit8 v1, v1, 0x17

    .line 482
    :cond_12f
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_13c

    .line 483
    const-string v2, "SS_MODIFIED_TO_DIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    or-int/lit8 v1, v1, 0x18

    .line 486
    :cond_13c
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_149

    .line 487
    const-string v2, "SS_MODIFIED_TO_USSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    or-int/lit8 v1, v1, 0x19

    .line 490
    :cond_149
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_156

    .line 491
    const-string v2, "SUBSCRIPTION_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    or-int/lit8 v1, v1, 0x1a

    .line 494
    :cond_156
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_163

    .line 495
    const-string v2, "SS_MODIFIED_TO_SS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    or-int/lit8 v1, v1, 0x1b

    .line 498
    :cond_163
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_170

    .line 499
    const-string v2, "LCE_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    or-int/lit8 v1, v1, 0x24

    .line 502
    :cond_170
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_17d

    .line 503
    const-string v2, "NO_MEMORY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    or-int/lit8 v1, v1, 0x25

    .line 506
    :cond_17d
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_18a

    .line 507
    const-string v2, "INTERNAL_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    or-int/lit8 v1, v1, 0x26

    .line 510
    :cond_18a
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_197

    .line 511
    const-string v2, "SYSTEM_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    or-int/lit8 v1, v1, 0x27

    .line 514
    :cond_197
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1a4

    .line 515
    const-string v2, "MODEM_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    or-int/lit8 v1, v1, 0x28

    .line 518
    :cond_1a4
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1b1

    .line 519
    const-string v2, "INVALID_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    or-int/lit8 v1, v1, 0x29

    .line 522
    :cond_1b1
    and-int/lit8 v2, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1be

    .line 523
    const-string v2, "NO_RESOURCES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    or-int/lit8 v1, v1, 0x2a

    .line 526
    :cond_1be
    and-int/lit8 v2, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1cb

    .line 527
    const-string v2, "SIM_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    or-int/lit8 v1, v1, 0x2b

    .line 530
    :cond_1cb
    and-int/lit8 v2, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1d8

    .line 531
    const-string v2, "INVALID_ARGUMENTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    or-int/lit8 v1, v1, 0x2c

    .line 534
    :cond_1d8
    and-int/lit8 v2, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1e5

    .line 535
    const-string v2, "INVALID_SIM_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    or-int/lit8 v1, v1, 0x2d

    .line 538
    :cond_1e5
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1f2

    .line 539
    const-string v2, "INVALID_MODEM_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    or-int/lit8 v1, v1, 0x2e

    .line 542
    :cond_1f2
    and-int/lit8 v2, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1ff

    .line 543
    const-string v2, "INVALID_CALL_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    or-int/lit8 v1, v1, 0x2f

    .line 546
    :cond_1ff
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_20c

    .line 547
    const-string v2, "NO_SMS_TO_ACK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    or-int/lit8 v1, v1, 0x30

    .line 550
    :cond_20c
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_219

    .line 551
    const-string v2, "NETWORK_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    or-int/lit8 v1, v1, 0x31

    .line 554
    :cond_219
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_226

    .line 555
    const-string v2, "REQUEST_RATE_LIMITED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    or-int/lit8 v1, v1, 0x32

    .line 558
    :cond_226
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_233

    .line 559
    const-string v2, "SIM_BUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    or-int/lit8 v1, v1, 0x33

    .line 562
    :cond_233
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_240

    .line 563
    const-string v2, "SIM_FULL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    or-int/lit8 v1, v1, 0x34

    .line 566
    :cond_240
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_24d

    .line 567
    const-string v2, "NETWORK_REJECT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    or-int/lit8 v1, v1, 0x35

    .line 570
    :cond_24d
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_25a

    .line 571
    const-string v2, "OPERATION_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    or-int/lit8 v1, v1, 0x36

    .line 574
    :cond_25a
    and-int/lit8 v2, p0, 0x37

    const/16 v3, 0x37

    if-ne v2, v3, :cond_267

    .line 575
    const-string v2, "EMPTY_RECORD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    or-int/lit8 v1, v1, 0x37

    .line 578
    :cond_267
    and-int/lit8 v2, p0, 0x38

    const/16 v3, 0x38

    if-ne v2, v3, :cond_274

    .line 579
    const-string v2, "INVALID_SMS_FORMAT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    or-int/lit8 v1, v1, 0x38

    .line 582
    :cond_274
    and-int/lit8 v2, p0, 0x39

    const/16 v3, 0x39

    if-ne v2, v3, :cond_281

    .line 583
    const-string v2, "ENCODING_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    or-int/lit8 v1, v1, 0x39

    .line 586
    :cond_281
    and-int/lit8 v2, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_28e

    .line 587
    const-string v2, "INVALID_SMSC_ADDRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    or-int/lit8 v1, v1, 0x3a

    .line 590
    :cond_28e
    and-int/lit8 v2, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_29b

    .line 591
    const-string v2, "NO_SUCH_ENTRY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    or-int/lit8 v1, v1, 0x3b

    .line 594
    :cond_29b
    and-int/lit8 v2, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2a8

    .line 595
    const-string v2, "NETWORK_NOT_READY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    or-int/lit8 v1, v1, 0x3c

    .line 598
    :cond_2a8
    and-int/lit8 v2, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2b5

    .line 599
    const-string v2, "NOT_PROVISIONED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    or-int/lit8 v1, v1, 0x3d

    .line 602
    :cond_2b5
    and-int/lit8 v2, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2c2

    .line 603
    const-string v2, "NO_SUBSCRIPTION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    or-int/lit8 v1, v1, 0x3e

    .line 606
    :cond_2c2
    and-int/lit8 v2, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_2cf

    .line 607
    const-string v2, "NO_NETWORK_FOUND"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    or-int/lit8 v1, v1, 0x3f

    .line 610
    :cond_2cf
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2dc

    .line 611
    const-string v2, "DEVICE_IN_USE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    or-int/lit8 v1, v1, 0x40

    .line 614
    :cond_2dc
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_2e9

    .line 615
    const-string v2, "ABORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    or-int/lit8 v1, v1, 0x41

    .line 618
    :cond_2e9
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_2f6

    .line 619
    const-string v2, "INVALID_RESPONSE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    or-int/lit8 v1, v1, 0x42

    .line 622
    :cond_2f6
    and-int/lit16 v2, p0, 0x1f5

    const/16 v3, 0x1f5

    if-ne v2, v3, :cond_303

    .line 623
    const-string v2, "OEM_ERROR_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    or-int/lit16 v1, v1, 0x1f5

    .line 626
    :cond_303
    and-int/lit16 v2, p0, 0x1f6

    const/16 v3, 0x1f6

    if-ne v2, v3, :cond_310

    .line 627
    const-string v2, "OEM_ERROR_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    or-int/lit16 v1, v1, 0x1f6

    .line 630
    :cond_310
    and-int/lit16 v2, p0, 0x1f7

    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_31d

    .line 631
    const-string v2, "OEM_ERROR_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    or-int/lit16 v1, v1, 0x1f7

    .line 634
    :cond_31d
    and-int/lit16 v2, p0, 0x1f8

    const/16 v3, 0x1f8

    if-ne v2, v3, :cond_32a

    .line 635
    const-string v2, "OEM_ERROR_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    or-int/lit16 v1, v1, 0x1f8

    .line 638
    :cond_32a
    and-int/lit16 v2, p0, 0x1f9

    const/16 v3, 0x1f9

    if-ne v2, v3, :cond_337

    .line 639
    const-string v2, "OEM_ERROR_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    or-int/lit16 v1, v1, 0x1f9

    .line 642
    :cond_337
    and-int/lit16 v2, p0, 0x1fa

    const/16 v3, 0x1fa

    if-ne v2, v3, :cond_344

    .line 643
    const-string v2, "OEM_ERROR_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    or-int/lit16 v1, v1, 0x1fa

    .line 646
    :cond_344
    and-int/lit16 v2, p0, 0x1fb

    const/16 v3, 0x1fb

    if-ne v2, v3, :cond_351

    .line 647
    const-string v2, "OEM_ERROR_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    or-int/lit16 v1, v1, 0x1fb

    .line 650
    :cond_351
    and-int/lit16 v2, p0, 0x1fc

    const/16 v3, 0x1fc

    if-ne v2, v3, :cond_35e

    .line 651
    const-string v2, "OEM_ERROR_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    or-int/lit16 v1, v1, 0x1fc

    .line 654
    :cond_35e
    and-int/lit16 v2, p0, 0x1fd

    const/16 v3, 0x1fd

    if-ne v2, v3, :cond_36b

    .line 655
    const-string v2, "OEM_ERROR_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    or-int/lit16 v1, v1, 0x1fd

    .line 658
    :cond_36b
    and-int/lit16 v2, p0, 0x1fe

    const/16 v3, 0x1fe

    if-ne v2, v3, :cond_378

    .line 659
    const-string v2, "OEM_ERROR_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    or-int/lit16 v1, v1, 0x1fe

    .line 662
    :cond_378
    and-int/lit16 v2, p0, 0x1ff

    const/16 v3, 0x1ff

    if-ne v2, v3, :cond_385

    .line 663
    const-string v2, "OEM_ERROR_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    or-int/lit16 v1, v1, 0x1ff

    .line 666
    :cond_385
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_392

    .line 667
    const-string v2, "OEM_ERROR_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    or-int/lit16 v1, v1, 0x200

    .line 670
    :cond_392
    and-int/lit16 v2, p0, 0x201

    const/16 v3, 0x201

    if-ne v2, v3, :cond_39f

    .line 671
    const-string v2, "OEM_ERROR_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    or-int/lit16 v1, v1, 0x201

    .line 674
    :cond_39f
    and-int/lit16 v2, p0, 0x202

    const/16 v3, 0x202

    if-ne v2, v3, :cond_3ac

    .line 675
    const-string v2, "OEM_ERROR_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    or-int/lit16 v1, v1, 0x202

    .line 678
    :cond_3ac
    and-int/lit16 v2, p0, 0x203

    const/16 v3, 0x203

    if-ne v2, v3, :cond_3b9

    .line 679
    const-string v2, "OEM_ERROR_15"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    or-int/lit16 v1, v1, 0x203

    .line 682
    :cond_3b9
    and-int/lit16 v2, p0, 0x204

    const/16 v3, 0x204

    if-ne v2, v3, :cond_3c6

    .line 683
    const-string v2, "OEM_ERROR_16"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    or-int/lit16 v1, v1, 0x204

    .line 686
    :cond_3c6
    and-int/lit16 v2, p0, 0x205

    const/16 v3, 0x205

    if-ne v2, v3, :cond_3d3

    .line 687
    const-string v2, "OEM_ERROR_17"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    or-int/lit16 v1, v1, 0x205

    .line 690
    :cond_3d3
    and-int/lit16 v2, p0, 0x206

    const/16 v3, 0x206

    if-ne v2, v3, :cond_3e0

    .line 691
    const-string v2, "OEM_ERROR_18"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    or-int/lit16 v1, v1, 0x206

    .line 694
    :cond_3e0
    and-int/lit16 v2, p0, 0x207

    const/16 v3, 0x207

    if-ne v2, v3, :cond_3ed

    .line 695
    const-string v2, "OEM_ERROR_19"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    or-int/lit16 v1, v1, 0x207

    .line 698
    :cond_3ed
    and-int/lit16 v2, p0, 0x208

    const/16 v3, 0x208

    if-ne v2, v3, :cond_3fa

    .line 699
    const-string v2, "OEM_ERROR_20"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    or-int/lit16 v1, v1, 0x208

    .line 702
    :cond_3fa
    and-int/lit16 v2, p0, 0x209

    const/16 v3, 0x209

    if-ne v2, v3, :cond_407

    .line 703
    const-string v2, "OEM_ERROR_21"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    or-int/lit16 v1, v1, 0x209

    .line 706
    :cond_407
    and-int/lit16 v2, p0, 0x20a

    const/16 v3, 0x20a

    if-ne v2, v3, :cond_414

    .line 707
    const-string v2, "OEM_ERROR_22"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    or-int/lit16 v1, v1, 0x20a

    .line 710
    :cond_414
    and-int/lit16 v2, p0, 0x20b

    const/16 v3, 0x20b

    if-ne v2, v3, :cond_421

    .line 711
    const-string v2, "OEM_ERROR_23"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    or-int/lit16 v1, v1, 0x20b

    .line 714
    :cond_421
    and-int/lit16 v2, p0, 0x20c

    const/16 v3, 0x20c

    if-ne v2, v3, :cond_42e

    .line 715
    const-string v2, "OEM_ERROR_24"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    or-int/lit16 v1, v1, 0x20c

    .line 718
    :cond_42e
    and-int/lit16 v2, p0, 0x20d

    const/16 v3, 0x20d

    if-ne v2, v3, :cond_43b

    .line 719
    const-string v2, "OEM_ERROR_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    or-int/lit16 v1, v1, 0x20d

    .line 722
    :cond_43b
    and-int/lit8 v2, p0, 0x43

    const/16 v3, 0x43

    if-ne v2, v3, :cond_448

    .line 723
    const-string v2, "SIMULTANEOUS_SMS_AND_CALL_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    or-int/lit8 v1, v1, 0x43

    .line 726
    :cond_448
    and-int/lit8 v2, p0, 0x44

    const/16 v3, 0x44

    if-ne v2, v3, :cond_455

    .line 727
    const-string v2, "ACCESS_BARRED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    or-int/lit8 v1, v1, 0x44

    .line 730
    :cond_455
    and-int/lit8 v2, p0, 0x45

    const/16 v3, 0x45

    if-ne v2, v3, :cond_462

    .line 731
    const-string v2, "BLOCKED_DUE_TO_CALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    or-int/lit8 v1, v1, 0x45

    .line 734
    :cond_462
    and-int/lit8 v2, p0, 0x46

    const/16 v3, 0x46

    if-ne v2, v3, :cond_46f

    .line 735
    const-string v2, "RF_HARDWARE_ISSUE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    or-int/lit8 v1, v1, 0x46

    .line 738
    :cond_46f
    and-int/lit8 v2, p0, 0x47

    const/16 v3, 0x47

    if-ne v2, v3, :cond_47c

    .line 739
    const-string v2, "NO_RF_CALIBRATION_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    or-int/lit8 v1, v1, 0x47

    .line 742
    :cond_47c
    if-eq p0, v1, :cond_49a

    .line 743
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

    .line 745
    :cond_49a
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 116
    if-nez p0, :cond_5

    .line 117
    const-string v0, "NONE"

    return-object v0

    .line 119
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 120
    const-string v0, "RADIO_NOT_AVAILABLE"

    return-object v0

    .line 122
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 123
    const-string v0, "GENERIC_FAILURE"

    return-object v0

    .line 125
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 126
    const-string v0, "PASSWORD_INCORRECT"

    return-object v0

    .line 128
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 129
    const-string v0, "SIM_PIN2"

    return-object v0

    .line 131
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 132
    const-string v0, "SIM_PUK2"

    return-object v0

    .line 134
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 135
    const-string v0, "REQUEST_NOT_SUPPORTED"

    return-object v0

    .line 137
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 138
    const-string v0, "CANCELLED"

    return-object v0

    .line 140
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 141
    const-string v0, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    return-object v0

    .line 143
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 144
    const-string v0, "OP_NOT_ALLOWED_BEFORE_REG_TO_NW"

    return-object v0

    .line 146
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 147
    const-string v0, "SMS_SEND_FAIL_RETRY"

    return-object v0

    .line 149
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 150
    const-string v0, "SIM_ABSENT"

    return-object v0

    .line 152
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 153
    const-string v0, "SUBSCRIPTION_NOT_AVAILABLE"

    return-object v0

    .line 155
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 156
    const-string v0, "MODE_NOT_SUPPORTED"

    return-object v0

    .line 158
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 159
    const-string v0, "FDN_CHECK_FAILURE"

    return-object v0

    .line 161
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    .line 162
    const-string v0, "ILLEGAL_SIM_OR_ME"

    return-object v0

    .line 164
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    .line 165
    const-string v0, "MISSING_RESOURCE"

    return-object v0

    .line 167
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    .line 168
    const-string v0, "NO_SUCH_ELEMENT"

    return-object v0

    .line 170
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    .line 171
    const-string v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    .line 173
    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    .line 174
    const-string v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    .line 176
    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    .line 177
    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    .line 179
    :cond_8a
    const/16 v0, 0x15

    if-ne p0, v0, :cond_91

    .line 180
    const-string v0, "USSD_MODIFIED_TO_DIAL"

    return-object v0

    .line 182
    :cond_91
    const/16 v0, 0x16

    if-ne p0, v0, :cond_98

    .line 183
    const-string v0, "USSD_MODIFIED_TO_SS"

    return-object v0

    .line 185
    :cond_98
    const/16 v0, 0x17

    if-ne p0, v0, :cond_9f

    .line 186
    const-string v0, "USSD_MODIFIED_TO_USSD"

    return-object v0

    .line 188
    :cond_9f
    const/16 v0, 0x18

    if-ne p0, v0, :cond_a6

    .line 189
    const-string v0, "SS_MODIFIED_TO_DIAL"

    return-object v0

    .line 191
    :cond_a6
    const/16 v0, 0x19

    if-ne p0, v0, :cond_ad

    .line 192
    const-string v0, "SS_MODIFIED_TO_USSD"

    return-object v0

    .line 194
    :cond_ad
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_b4

    .line 195
    const-string v0, "SUBSCRIPTION_NOT_SUPPORTED"

    return-object v0

    .line 197
    :cond_b4
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_bb

    .line 198
    const-string v0, "SS_MODIFIED_TO_SS"

    return-object v0

    .line 200
    :cond_bb
    const/16 v0, 0x24

    if-ne p0, v0, :cond_c2

    .line 201
    const-string v0, "LCE_NOT_SUPPORTED"

    return-object v0

    .line 203
    :cond_c2
    const/16 v0, 0x25

    if-ne p0, v0, :cond_c9

    .line 204
    const-string v0, "NO_MEMORY"

    return-object v0

    .line 206
    :cond_c9
    const/16 v0, 0x26

    if-ne p0, v0, :cond_d0

    .line 207
    const-string v0, "INTERNAL_ERR"

    return-object v0

    .line 209
    :cond_d0
    const/16 v0, 0x27

    if-ne p0, v0, :cond_d7

    .line 210
    const-string v0, "SYSTEM_ERR"

    return-object v0

    .line 212
    :cond_d7
    const/16 v0, 0x28

    if-ne p0, v0, :cond_de

    .line 213
    const-string v0, "MODEM_ERR"

    return-object v0

    .line 215
    :cond_de
    const/16 v0, 0x29

    if-ne p0, v0, :cond_e5

    .line 216
    const-string v0, "INVALID_STATE"

    return-object v0

    .line 218
    :cond_e5
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_ec

    .line 219
    const-string v0, "NO_RESOURCES"

    return-object v0

    .line 221
    :cond_ec
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_f3

    .line 222
    const-string v0, "SIM_ERR"

    return-object v0

    .line 224
    :cond_f3
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_fa

    .line 225
    const-string v0, "INVALID_ARGUMENTS"

    return-object v0

    .line 227
    :cond_fa
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_101

    .line 228
    const-string v0, "INVALID_SIM_STATE"

    return-object v0

    .line 230
    :cond_101
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_108

    .line 231
    const-string v0, "INVALID_MODEM_STATE"

    return-object v0

    .line 233
    :cond_108
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_10f

    .line 234
    const-string v0, "INVALID_CALL_ID"

    return-object v0

    .line 236
    :cond_10f
    const/16 v0, 0x30

    if-ne p0, v0, :cond_116

    .line 237
    const-string v0, "NO_SMS_TO_ACK"

    return-object v0

    .line 239
    :cond_116
    const/16 v0, 0x31

    if-ne p0, v0, :cond_11d

    .line 240
    const-string v0, "NETWORK_ERR"

    return-object v0

    .line 242
    :cond_11d
    const/16 v0, 0x32

    if-ne p0, v0, :cond_124

    .line 243
    const-string v0, "REQUEST_RATE_LIMITED"

    return-object v0

    .line 245
    :cond_124
    const/16 v0, 0x33

    if-ne p0, v0, :cond_12b

    .line 246
    const-string v0, "SIM_BUSY"

    return-object v0

    .line 248
    :cond_12b
    const/16 v0, 0x34

    if-ne p0, v0, :cond_132

    .line 249
    const-string v0, "SIM_FULL"

    return-object v0

    .line 251
    :cond_132
    const/16 v0, 0x35

    if-ne p0, v0, :cond_139

    .line 252
    const-string v0, "NETWORK_REJECT"

    return-object v0

    .line 254
    :cond_139
    const/16 v0, 0x36

    if-ne p0, v0, :cond_140

    .line 255
    const-string v0, "OPERATION_NOT_ALLOWED"

    return-object v0

    .line 257
    :cond_140
    const/16 v0, 0x37

    if-ne p0, v0, :cond_147

    .line 258
    const-string v0, "EMPTY_RECORD"

    return-object v0

    .line 260
    :cond_147
    const/16 v0, 0x38

    if-ne p0, v0, :cond_14e

    .line 261
    const-string v0, "INVALID_SMS_FORMAT"

    return-object v0

    .line 263
    :cond_14e
    const/16 v0, 0x39

    if-ne p0, v0, :cond_155

    .line 264
    const-string v0, "ENCODING_ERR"

    return-object v0

    .line 266
    :cond_155
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_15c

    .line 267
    const-string v0, "INVALID_SMSC_ADDRESS"

    return-object v0

    .line 269
    :cond_15c
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_163

    .line 270
    const-string v0, "NO_SUCH_ENTRY"

    return-object v0

    .line 272
    :cond_163
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_16a

    .line 273
    const-string v0, "NETWORK_NOT_READY"

    return-object v0

    .line 275
    :cond_16a
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_171

    .line 276
    const-string v0, "NOT_PROVISIONED"

    return-object v0

    .line 278
    :cond_171
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_178

    .line 279
    const-string v0, "NO_SUBSCRIPTION"

    return-object v0

    .line 281
    :cond_178
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_17f

    .line 282
    const-string v0, "NO_NETWORK_FOUND"

    return-object v0

    .line 284
    :cond_17f
    const/16 v0, 0x40

    if-ne p0, v0, :cond_186

    .line 285
    const-string v0, "DEVICE_IN_USE"

    return-object v0

    .line 287
    :cond_186
    const/16 v0, 0x41

    if-ne p0, v0, :cond_18d

    .line 288
    const-string v0, "ABORTED"

    return-object v0

    .line 290
    :cond_18d
    const/16 v0, 0x42

    if-ne p0, v0, :cond_194

    .line 291
    const-string v0, "INVALID_RESPONSE"

    return-object v0

    .line 293
    :cond_194
    const/16 v0, 0x1f5

    if-ne p0, v0, :cond_19b

    .line 294
    const-string v0, "OEM_ERROR_1"

    return-object v0

    .line 296
    :cond_19b
    const/16 v0, 0x1f6

    if-ne p0, v0, :cond_1a2

    .line 297
    const-string v0, "OEM_ERROR_2"

    return-object v0

    .line 299
    :cond_1a2
    const/16 v0, 0x1f7

    if-ne p0, v0, :cond_1a9

    .line 300
    const-string v0, "OEM_ERROR_3"

    return-object v0

    .line 302
    :cond_1a9
    const/16 v0, 0x1f8

    if-ne p0, v0, :cond_1b0

    .line 303
    const-string v0, "OEM_ERROR_4"

    return-object v0

    .line 305
    :cond_1b0
    const/16 v0, 0x1f9

    if-ne p0, v0, :cond_1b7

    .line 306
    const-string v0, "OEM_ERROR_5"

    return-object v0

    .line 308
    :cond_1b7
    const/16 v0, 0x1fa

    if-ne p0, v0, :cond_1be

    .line 309
    const-string v0, "OEM_ERROR_6"

    return-object v0

    .line 311
    :cond_1be
    const/16 v0, 0x1fb

    if-ne p0, v0, :cond_1c5

    .line 312
    const-string v0, "OEM_ERROR_7"

    return-object v0

    .line 314
    :cond_1c5
    const/16 v0, 0x1fc

    if-ne p0, v0, :cond_1cc

    .line 315
    const-string v0, "OEM_ERROR_8"

    return-object v0

    .line 317
    :cond_1cc
    const/16 v0, 0x1fd

    if-ne p0, v0, :cond_1d3

    .line 318
    const-string v0, "OEM_ERROR_9"

    return-object v0

    .line 320
    :cond_1d3
    const/16 v0, 0x1fe

    if-ne p0, v0, :cond_1da

    .line 321
    const-string v0, "OEM_ERROR_10"

    return-object v0

    .line 323
    :cond_1da
    const/16 v0, 0x1ff

    if-ne p0, v0, :cond_1e1

    .line 324
    const-string v0, "OEM_ERROR_11"

    return-object v0

    .line 326
    :cond_1e1
    const/16 v0, 0x200

    if-ne p0, v0, :cond_1e8

    .line 327
    const-string v0, "OEM_ERROR_12"

    return-object v0

    .line 329
    :cond_1e8
    const/16 v0, 0x201

    if-ne p0, v0, :cond_1ef

    .line 330
    const-string v0, "OEM_ERROR_13"

    return-object v0

    .line 332
    :cond_1ef
    const/16 v0, 0x202

    if-ne p0, v0, :cond_1f6

    .line 333
    const-string v0, "OEM_ERROR_14"

    return-object v0

    .line 335
    :cond_1f6
    const/16 v0, 0x203

    if-ne p0, v0, :cond_1fd

    .line 336
    const-string v0, "OEM_ERROR_15"

    return-object v0

    .line 338
    :cond_1fd
    const/16 v0, 0x204

    if-ne p0, v0, :cond_204

    .line 339
    const-string v0, "OEM_ERROR_16"

    return-object v0

    .line 341
    :cond_204
    const/16 v0, 0x205

    if-ne p0, v0, :cond_20b

    .line 342
    const-string v0, "OEM_ERROR_17"

    return-object v0

    .line 344
    :cond_20b
    const/16 v0, 0x206

    if-ne p0, v0, :cond_212

    .line 345
    const-string v0, "OEM_ERROR_18"

    return-object v0

    .line 347
    :cond_212
    const/16 v0, 0x207

    if-ne p0, v0, :cond_219

    .line 348
    const-string v0, "OEM_ERROR_19"

    return-object v0

    .line 350
    :cond_219
    const/16 v0, 0x208

    if-ne p0, v0, :cond_220

    .line 351
    const-string v0, "OEM_ERROR_20"

    return-object v0

    .line 353
    :cond_220
    const/16 v0, 0x209

    if-ne p0, v0, :cond_227

    .line 354
    const-string v0, "OEM_ERROR_21"

    return-object v0

    .line 356
    :cond_227
    const/16 v0, 0x20a

    if-ne p0, v0, :cond_22e

    .line 357
    const-string v0, "OEM_ERROR_22"

    return-object v0

    .line 359
    :cond_22e
    const/16 v0, 0x20b

    if-ne p0, v0, :cond_235

    .line 360
    const-string v0, "OEM_ERROR_23"

    return-object v0

    .line 362
    :cond_235
    const/16 v0, 0x20c

    if-ne p0, v0, :cond_23c

    .line 363
    const-string v0, "OEM_ERROR_24"

    return-object v0

    .line 365
    :cond_23c
    const/16 v0, 0x20d

    if-ne p0, v0, :cond_243

    .line 366
    const-string v0, "OEM_ERROR_25"

    return-object v0

    .line 368
    :cond_243
    const/16 v0, 0x43

    if-ne p0, v0, :cond_24a

    .line 369
    const-string v0, "SIMULTANEOUS_SMS_AND_CALL_NOT_ALLOWED"

    return-object v0

    .line 371
    :cond_24a
    const/16 v0, 0x44

    if-ne p0, v0, :cond_251

    .line 372
    const-string v0, "ACCESS_BARRED"

    return-object v0

    .line 374
    :cond_251
    const/16 v0, 0x45

    if-ne p0, v0, :cond_258

    .line 375
    const-string v0, "BLOCKED_DUE_TO_CALL"

    return-object v0

    .line 377
    :cond_258
    const/16 v0, 0x46

    if-ne p0, v0, :cond_25f

    .line 378
    const-string v0, "RF_HARDWARE_ISSUE"

    return-object v0

    .line 380
    :cond_25f
    const/16 v0, 0x47

    if-ne p0, v0, :cond_266

    .line 381
    const-string v0, "NO_RF_CALIBRATION_INFO"

    return-object v0

    .line 383
    :cond_266
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
