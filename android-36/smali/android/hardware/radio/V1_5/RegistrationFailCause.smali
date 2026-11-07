.class public final Landroid/hardware/radio/V1_5/RegistrationFailCause;
.super Ljava/lang/Object;
.source "RegistrationFailCause.java"


# static fields
.field public static final blacklist CALL_CANNOT_BE_IDENTIFIED:I = 0x26

.field public static final blacklist CONDITIONAL_IE_ERROR:I = 0x64

.field public static final blacklist CONGESTION:I = 0x16

.field public static final blacklist GPRS_AND_NON_GPRS_SERVICES_NOT_ALLOWED:I = 0x8

.field public static final blacklist GPRS_SERVICES_NOT_ALLOWED:I = 0x7

.field public static final blacklist GPRS_SERVICES_NOT_ALLOWED_IN_PLMN:I = 0xe

.field public static final blacklist GSM_AUTHENTICATION_UNACCEPTABLE:I = 0x17

.field public static final blacklist ILLEGAL_ME:I = 0x6

.field public static final blacklist ILLEGAL_MS:I = 0x3

.field public static final blacklist IMEI_NOT_ACCEPTED:I = 0x5

.field public static final blacklist IMPLICITLY_DETACHED:I = 0xa

.field public static final blacklist IMSI_UNKNOWN_IN_HLR:I = 0x2

.field public static final blacklist IMSI_UNKNOWN_IN_VLR:I = 0x4

.field public static final blacklist INFORMATION_ELEMENT_NON_EXISTENT_OR_NOT_IMPLEMENTED:I = 0x63

.field public static final blacklist INVALID_MANDATORY_INFORMATION:I = 0x60

.field public static final blacklist LOCATION_AREA_NOT_ALLOWED:I = 0xc

.field public static final blacklist MAC_FAILURE:I = 0x14

.field public static final blacklist MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:I = 0x65

.field public static final blacklist MESSAGE_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED:I = 0x61

.field public static final blacklist MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:I = 0x62

.field public static final blacklist MSC_TEMPORARILY_NOT_REACHABLE:I = 0xf

.field public static final blacklist MS_IDENTITY_CANNOT_BE_DERIVED_BY_NETWORK:I = 0x9

.field public static final blacklist NETWORK_FAILURE:I = 0x11

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist NOT_AUTHORIZED_FOR_THIS_CSG:I = 0x19

.field public static final blacklist NO_PDP_CONTEXT_ACTIVATED:I = 0x28

.field public static final blacklist NO_SUITABLE_CELLS:I = 0xf

.field public static final blacklist PLMN_NOT_ALLOWED:I = 0xb

.field public static final blacklist PROTOCOL_ERROR_UNSPECIFIED:I = 0x6f

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_1:I = 0x30

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_10:I = 0x39

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_11:I = 0x3a

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_12:I = 0x3b

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_13:I = 0x3c

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_14:I = 0x3d

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_15:I = 0x3e

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_16:I = 0x3f

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_2:I = 0x31

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_3:I = 0x32

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_4:I = 0x33

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_5:I = 0x34

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_6:I = 0x35

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_7:I = 0x36

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_8:I = 0x37

.field public static final blacklist RETRY_UPON_ENTRY_INTO_NEW_CELL_9:I = 0x38

.field public static final blacklist ROAMING_NOT_ALLOWED:I = 0xd

.field public static final blacklist SEMANTICALLY_INCORRECT_MESSAGE:I = 0x5f

.field public static final blacklist SERVICE_OPTION_NOT_SUBSCRIBED:I = 0x21

.field public static final blacklist SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field public static final blacklist SERVICE_OPTION_TEMPORARILY_OUT_OF_ORDER:I = 0x22

.field public static final blacklist SMS_PROVIDED_BY_GPRS_IN_ROUTING_AREA:I = 0x1a

.field public static final blacklist SYNC_FAILURE:I = 0x15


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

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 331
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    .line 333
    const-string v2, "IMSI_UNKNOWN_IN_HLR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    or-int/lit8 v1, v1, 0x2

    .line 336
    :cond_17
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 337
    const-string v2, "ILLEGAL_MS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    or-int/lit8 v1, v1, 0x3

    .line 340
    :cond_23
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2f

    .line 341
    const-string v2, "IMSI_UNKNOWN_IN_VLR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    or-int/lit8 v1, v1, 0x4

    .line 344
    :cond_2f
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3b

    .line 345
    const-string v2, "IMEI_NOT_ACCEPTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    or-int/lit8 v1, v1, 0x5

    .line 348
    :cond_3b
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_47

    .line 349
    const-string v2, "ILLEGAL_ME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    or-int/lit8 v1, v1, 0x6

    .line 352
    :cond_47
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_53

    .line 353
    const-string v2, "GPRS_SERVICES_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    or-int/lit8 v1, v1, 0x7

    .line 356
    :cond_53
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_60

    .line 357
    const-string v2, "GPRS_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    or-int/lit8 v1, v1, 0x8

    .line 360
    :cond_60
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_6d

    .line 361
    const-string v2, "MS_IDENTITY_CANNOT_BE_DERIVED_BY_NETWORK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    or-int/lit8 v1, v1, 0x9

    .line 364
    :cond_6d
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7a

    .line 365
    const-string v2, "IMPLICITLY_DETACHED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    or-int/lit8 v1, v1, 0xa

    .line 368
    :cond_7a
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_87

    .line 369
    const-string v2, "PLMN_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    or-int/lit8 v1, v1, 0xb

    .line 372
    :cond_87
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_94

    .line 373
    const-string v2, "LOCATION_AREA_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    or-int/lit8 v1, v1, 0xc

    .line 376
    :cond_94
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_a1

    .line 377
    const-string v2, "ROAMING_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    or-int/lit8 v1, v1, 0xd

    .line 380
    :cond_a1
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_ae

    .line 381
    const-string v2, "GPRS_SERVICES_NOT_ALLOWED_IN_PLMN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    or-int/lit8 v1, v1, 0xe

    .line 384
    :cond_ae
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_bb

    .line 385
    const-string v2, "NO_SUITABLE_CELLS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    or-int/lit8 v1, v1, 0xf

    .line 388
    :cond_bb
    and-int/lit8 v2, p0, 0xf

    if-ne v2, v3, :cond_c6

    .line 389
    const-string v2, "MSC_TEMPORARILY_NOT_REACHABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    or-int/lit8 v1, v1, 0xf

    .line 392
    :cond_c6
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_d3

    .line 393
    const-string v2, "NETWORK_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    or-int/lit8 v1, v1, 0x11

    .line 396
    :cond_d3
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_e0

    .line 397
    const-string v2, "MAC_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    or-int/lit8 v1, v1, 0x14

    .line 400
    :cond_e0
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_ed

    .line 401
    const-string v2, "SYNC_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    or-int/lit8 v1, v1, 0x15

    .line 404
    :cond_ed
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_fa

    .line 405
    const-string v2, "CONGESTION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    or-int/lit8 v1, v1, 0x16

    .line 408
    :cond_fa
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_107

    .line 409
    const-string v2, "GSM_AUTHENTICATION_UNACCEPTABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    or-int/lit8 v1, v1, 0x17

    .line 412
    :cond_107
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_114

    .line 413
    const-string v2, "NOT_AUTHORIZED_FOR_THIS_CSG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    or-int/lit8 v1, v1, 0x19

    .line 416
    :cond_114
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_121

    .line 417
    const-string v2, "SMS_PROVIDED_BY_GPRS_IN_ROUTING_AREA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    or-int/lit8 v1, v1, 0x1a

    .line 420
    :cond_121
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_12e

    .line 421
    const-string v2, "SERVICE_OPTION_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    or-int/lit8 v1, v1, 0x20

    .line 424
    :cond_12e
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_13b

    .line 425
    const-string v2, "SERVICE_OPTION_NOT_SUBSCRIBED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    or-int/lit8 v1, v1, 0x21

    .line 428
    :cond_13b
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_148

    .line 429
    const-string v2, "SERVICE_OPTION_TEMPORARILY_OUT_OF_ORDER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    or-int/lit8 v1, v1, 0x22

    .line 432
    :cond_148
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_155

    .line 433
    const-string v2, "CALL_CANNOT_BE_IDENTIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    or-int/lit8 v1, v1, 0x26

    .line 436
    :cond_155
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_162

    .line 437
    const-string v2, "NO_PDP_CONTEXT_ACTIVATED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    or-int/lit8 v1, v1, 0x28

    .line 440
    :cond_162
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_16f

    .line 441
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    or-int/lit8 v1, v1, 0x30

    .line 444
    :cond_16f
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_17c

    .line 445
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    or-int/lit8 v1, v1, 0x31

    .line 448
    :cond_17c
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_189

    .line 449
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    or-int/lit8 v1, v1, 0x32

    .line 452
    :cond_189
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_196

    .line 453
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    or-int/lit8 v1, v1, 0x33

    .line 456
    :cond_196
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_1a3

    .line 457
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    or-int/lit8 v1, v1, 0x34

    .line 460
    :cond_1a3
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_1b0

    .line 461
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    or-int/lit8 v1, v1, 0x35

    .line 464
    :cond_1b0
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_1bd

    .line 465
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    or-int/lit8 v1, v1, 0x36

    .line 468
    :cond_1bd
    and-int/lit8 v2, p0, 0x37

    const/16 v3, 0x37

    if-ne v2, v3, :cond_1ca

    .line 469
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    or-int/lit8 v1, v1, 0x37

    .line 472
    :cond_1ca
    and-int/lit8 v2, p0, 0x38

    const/16 v3, 0x38

    if-ne v2, v3, :cond_1d7

    .line 473
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    or-int/lit8 v1, v1, 0x38

    .line 476
    :cond_1d7
    and-int/lit8 v2, p0, 0x39

    const/16 v3, 0x39

    if-ne v2, v3, :cond_1e4

    .line 477
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    or-int/lit8 v1, v1, 0x39

    .line 480
    :cond_1e4
    and-int/lit8 v2, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_1f1

    .line 481
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    or-int/lit8 v1, v1, 0x3a

    .line 484
    :cond_1f1
    and-int/lit8 v2, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1fe

    .line 485
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    or-int/lit8 v1, v1, 0x3b

    .line 488
    :cond_1fe
    and-int/lit8 v2, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_20b

    .line 489
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    or-int/lit8 v1, v1, 0x3c

    .line 492
    :cond_20b
    and-int/lit8 v2, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_218

    .line 493
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    or-int/lit8 v1, v1, 0x3d

    .line 496
    :cond_218
    and-int/lit8 v2, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_225

    .line 497
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_15"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    or-int/lit8 v1, v1, 0x3e

    .line 500
    :cond_225
    and-int/lit8 v2, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_232

    .line 501
    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_16"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    or-int/lit8 v1, v1, 0x3f

    .line 504
    :cond_232
    and-int/lit8 v2, p0, 0x5f

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_23f

    .line 505
    const-string v2, "SEMANTICALLY_INCORRECT_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    or-int/lit8 v1, v1, 0x5f

    .line 508
    :cond_23f
    and-int/lit8 v2, p0, 0x60

    const/16 v3, 0x60

    if-ne v2, v3, :cond_24c

    .line 509
    const-string v2, "INVALID_MANDATORY_INFORMATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    or-int/lit8 v1, v1, 0x60

    .line 512
    :cond_24c
    and-int/lit8 v2, p0, 0x61

    const/16 v3, 0x61

    if-ne v2, v3, :cond_259

    .line 513
    const-string v2, "MESSAGE_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    or-int/lit8 v1, v1, 0x61

    .line 516
    :cond_259
    and-int/lit8 v2, p0, 0x62

    const/16 v3, 0x62

    if-ne v2, v3, :cond_266

    .line 517
    const-string v2, "MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    or-int/lit8 v1, v1, 0x62

    .line 520
    :cond_266
    and-int/lit8 v2, p0, 0x63

    const/16 v3, 0x63

    if-ne v2, v3, :cond_273

    .line 521
    const-string v2, "INFORMATION_ELEMENT_NON_EXISTENT_OR_NOT_IMPLEMENTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    or-int/lit8 v1, v1, 0x63

    .line 524
    :cond_273
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_280

    .line 525
    const-string v2, "CONDITIONAL_IE_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    or-int/lit8 v1, v1, 0x64

    .line 528
    :cond_280
    and-int/lit8 v2, p0, 0x65

    const/16 v3, 0x65

    if-ne v2, v3, :cond_28d

    .line 529
    const-string v2, "MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    or-int/lit8 v1, v1, 0x65

    .line 532
    :cond_28d
    and-int/lit8 v2, p0, 0x6f

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_29a

    .line 533
    const-string v2, "PROTOCOL_ERROR_UNSPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    or-int/lit8 v1, v1, 0x6f

    .line 536
    :cond_29a
    if-eq p0, v1, :cond_2b8

    .line 537
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

    .line 539
    :cond_2b8
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 169
    if-nez p0, :cond_5

    .line 170
    const-string v0, "NONE"

    return-object v0

    .line 172
    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 173
    const-string v0, "IMSI_UNKNOWN_IN_HLR"

    return-object v0

    .line 175
    :cond_b
    const/4 v0, 0x3

    if-ne p0, v0, :cond_11

    .line 176
    const-string v0, "ILLEGAL_MS"

    return-object v0

    .line 178
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    .line 179
    const-string v0, "IMSI_UNKNOWN_IN_VLR"

    return-object v0

    .line 181
    :cond_17
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1d

    .line 182
    const-string v0, "IMEI_NOT_ACCEPTED"

    return-object v0

    .line 184
    :cond_1d
    const/4 v0, 0x6

    if-ne p0, v0, :cond_23

    .line 185
    const-string v0, "ILLEGAL_ME"

    return-object v0

    .line 187
    :cond_23
    const/4 v0, 0x7

    if-ne p0, v0, :cond_29

    .line 188
    const-string v0, "GPRS_SERVICES_NOT_ALLOWED"

    return-object v0

    .line 190
    :cond_29
    const/16 v0, 0x8

    if-ne p0, v0, :cond_30

    .line 191
    const-string v0, "GPRS_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    return-object v0

    .line 193
    :cond_30
    const/16 v0, 0x9

    if-ne p0, v0, :cond_37

    .line 194
    const-string v0, "MS_IDENTITY_CANNOT_BE_DERIVED_BY_NETWORK"

    return-object v0

    .line 196
    :cond_37
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3e

    .line 197
    const-string v0, "IMPLICITLY_DETACHED"

    return-object v0

    .line 199
    :cond_3e
    const/16 v0, 0xb

    if-ne p0, v0, :cond_45

    .line 200
    const-string v0, "PLMN_NOT_ALLOWED"

    return-object v0

    .line 202
    :cond_45
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4c

    .line 203
    const-string v0, "LOCATION_AREA_NOT_ALLOWED"

    return-object v0

    .line 205
    :cond_4c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_53

    .line 206
    const-string v0, "ROAMING_NOT_ALLOWED"

    return-object v0

    .line 208
    :cond_53
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5a

    .line 209
    const-string v0, "GPRS_SERVICES_NOT_ALLOWED_IN_PLMN"

    return-object v0

    .line 211
    :cond_5a
    const/16 v0, 0xf

    if-ne p0, v0, :cond_61

    .line 212
    const-string v0, "NO_SUITABLE_CELLS"

    return-object v0

    .line 214
    :cond_61
    if-ne p0, v0, :cond_66

    .line 215
    const-string v0, "MSC_TEMPORARILY_NOT_REACHABLE"

    return-object v0

    .line 217
    :cond_66
    const/16 v0, 0x11

    if-ne p0, v0, :cond_6d

    .line 218
    const-string v0, "NETWORK_FAILURE"

    return-object v0

    .line 220
    :cond_6d
    const/16 v0, 0x14

    if-ne p0, v0, :cond_74

    .line 221
    const-string v0, "MAC_FAILURE"

    return-object v0

    .line 223
    :cond_74
    const/16 v0, 0x15

    if-ne p0, v0, :cond_7b

    .line 224
    const-string v0, "SYNC_FAILURE"

    return-object v0

    .line 226
    :cond_7b
    const/16 v0, 0x16

    if-ne p0, v0, :cond_82

    .line 227
    const-string v0, "CONGESTION"

    return-object v0

    .line 229
    :cond_82
    const/16 v0, 0x17

    if-ne p0, v0, :cond_89

    .line 230
    const-string v0, "GSM_AUTHENTICATION_UNACCEPTABLE"

    return-object v0

    .line 232
    :cond_89
    const/16 v0, 0x19

    if-ne p0, v0, :cond_90

    .line 233
    const-string v0, "NOT_AUTHORIZED_FOR_THIS_CSG"

    return-object v0

    .line 235
    :cond_90
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_97

    .line 236
    const-string v0, "SMS_PROVIDED_BY_GPRS_IN_ROUTING_AREA"

    return-object v0

    .line 238
    :cond_97
    const/16 v0, 0x20

    if-ne p0, v0, :cond_9e

    .line 239
    const-string v0, "SERVICE_OPTION_NOT_SUPPORTED"

    return-object v0

    .line 241
    :cond_9e
    const/16 v0, 0x21

    if-ne p0, v0, :cond_a5

    .line 242
    const-string v0, "SERVICE_OPTION_NOT_SUBSCRIBED"

    return-object v0

    .line 244
    :cond_a5
    const/16 v0, 0x22

    if-ne p0, v0, :cond_ac

    .line 245
    const-string v0, "SERVICE_OPTION_TEMPORARILY_OUT_OF_ORDER"

    return-object v0

    .line 247
    :cond_ac
    const/16 v0, 0x26

    if-ne p0, v0, :cond_b3

    .line 248
    const-string v0, "CALL_CANNOT_BE_IDENTIFIED"

    return-object v0

    .line 250
    :cond_b3
    const/16 v0, 0x28

    if-ne p0, v0, :cond_ba

    .line 251
    const-string v0, "NO_PDP_CONTEXT_ACTIVATED"

    return-object v0

    .line 253
    :cond_ba
    const/16 v0, 0x30

    if-ne p0, v0, :cond_c1

    .line 254
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_1"

    return-object v0

    .line 256
    :cond_c1
    const/16 v0, 0x31

    if-ne p0, v0, :cond_c8

    .line 257
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_2"

    return-object v0

    .line 259
    :cond_c8
    const/16 v0, 0x32

    if-ne p0, v0, :cond_cf

    .line 260
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_3"

    return-object v0

    .line 262
    :cond_cf
    const/16 v0, 0x33

    if-ne p0, v0, :cond_d6

    .line 263
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_4"

    return-object v0

    .line 265
    :cond_d6
    const/16 v0, 0x34

    if-ne p0, v0, :cond_dd

    .line 266
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_5"

    return-object v0

    .line 268
    :cond_dd
    const/16 v0, 0x35

    if-ne p0, v0, :cond_e4

    .line 269
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_6"

    return-object v0

    .line 271
    :cond_e4
    const/16 v0, 0x36

    if-ne p0, v0, :cond_eb

    .line 272
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_7"

    return-object v0

    .line 274
    :cond_eb
    const/16 v0, 0x37

    if-ne p0, v0, :cond_f2

    .line 275
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_8"

    return-object v0

    .line 277
    :cond_f2
    const/16 v0, 0x38

    if-ne p0, v0, :cond_f9

    .line 278
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_9"

    return-object v0

    .line 280
    :cond_f9
    const/16 v0, 0x39

    if-ne p0, v0, :cond_100

    .line 281
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_10"

    return-object v0

    .line 283
    :cond_100
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_107

    .line 284
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_11"

    return-object v0

    .line 286
    :cond_107
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_10e

    .line 287
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_12"

    return-object v0

    .line 289
    :cond_10e
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_115

    .line 290
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_13"

    return-object v0

    .line 292
    :cond_115
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_11c

    .line 293
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_14"

    return-object v0

    .line 295
    :cond_11c
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_123

    .line 296
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_15"

    return-object v0

    .line 298
    :cond_123
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_12a

    .line 299
    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_16"

    return-object v0

    .line 301
    :cond_12a
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_131

    .line 302
    const-string v0, "SEMANTICALLY_INCORRECT_MESSAGE"

    return-object v0

    .line 304
    :cond_131
    const/16 v0, 0x60

    if-ne p0, v0, :cond_138

    .line 305
    const-string v0, "INVALID_MANDATORY_INFORMATION"

    return-object v0

    .line 307
    :cond_138
    const/16 v0, 0x61

    if-ne p0, v0, :cond_13f

    .line 308
    const-string v0, "MESSAGE_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED"

    return-object v0

    .line 310
    :cond_13f
    const/16 v0, 0x62

    if-ne p0, v0, :cond_146

    .line 311
    const-string v0, "MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object v0

    .line 313
    :cond_146
    const/16 v0, 0x63

    if-ne p0, v0, :cond_14d

    .line 314
    const-string v0, "INFORMATION_ELEMENT_NON_EXISTENT_OR_NOT_IMPLEMENTED"

    return-object v0

    .line 316
    :cond_14d
    const/16 v0, 0x64

    if-ne p0, v0, :cond_154

    .line 317
    const-string v0, "CONDITIONAL_IE_ERROR"

    return-object v0

    .line 319
    :cond_154
    const/16 v0, 0x65

    if-ne p0, v0, :cond_15b

    .line 320
    const-string v0, "MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object v0

    .line 322
    :cond_15b
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_162

    .line 323
    const-string v0, "PROTOCOL_ERROR_UNSPECIFIED"

    return-object v0

    .line 325
    :cond_162
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
