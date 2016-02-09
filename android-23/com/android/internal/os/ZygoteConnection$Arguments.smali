.class Lcom/android/internal/os/ZygoteConnection$Arguments;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field abiListQuery:Z

.field appDataDir:Ljava/lang/String;

.field capabilitiesSpecified:Z

.field debugFlags:I

.field effectiveCapabilities:J

.field gid:I

.field gidSpecified:Z

.field gids:[I

.field instructionSet:Ljava/lang/String;

.field invokeWith:Ljava/lang/String;

.field mountExternal:I

.field niceName:Ljava/lang/String;

.field permittedCapabilities:J

.field remainingArgs:[Ljava/lang/String;

.field rlimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field seInfo:Ljava/lang/String;

.field seInfoSpecified:Z

.field targetSdkVersion:I

.field targetSdkVersionSpecified:Z

.field uid:I

.field uidSpecified:Z


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 313
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    #@6
    .line 317
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    #@8
    .line 330
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    #@a
    .line 382
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection$Arguments;->parseArgs([Ljava/lang/String;)V

    #@d
    .line 381
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 13
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 395
    const/4 v3, 0x0

    #@1
    .line 397
    .local v3, "curArg":I
    const/4 v9, 0x0

    #@2
    .line 399
    .local v9, "seenRuntimeArgs":Z
    :goto_0
    array-length v10, p1

    #@3
    if-ge v3, v10, :cond_0

    #@5
    .line 400
    aget-object v0, p1, v3

    #@7
    .line 402
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v10, "--"

    #@a
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v10

    #@e
    if-eqz v10, :cond_1

    #@10
    .line 403
    add-int/lit8 v3, v3, 0x1

    #@12
    .line 537
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    #@14
    if-eqz v10, :cond_25

    #@16
    .line 538
    array-length v10, p1

    #@17
    sub-int/2addr v10, v3

    #@18
    if-lez v10, :cond_27

    #@1a
    .line 539
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v11, "Unexpected arguments after --query-abi-list."

    #@1f
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v10

    #@23
    .line 405
    .restart local v0    # "arg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, "--setuid="

    #@26
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@29
    move-result v10

    #@2a
    if-eqz v10, :cond_4

    #@2c
    .line 406
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    #@2e
    if-eqz v10, :cond_2

    #@30
    .line 407
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@32
    .line 408
    const-string/jumbo v11, "Duplicate arg specified"

    #@35
    .line 407
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v10

    #@39
    .line 410
    :cond_2
    const/4 v10, 0x1

    #@3a
    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    #@3c
    .line 412
    const/16 v10, 0x3d

    #@3e
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@41
    move-result v10

    #@42
    add-int/lit8 v10, v10, 0x1

    #@44
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@47
    move-result-object v10

    #@48
    .line 411
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4b
    move-result v10

    #@4c
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    #@4e
    .line 399
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@50
    goto :goto_0

    #@51
    .line 413
    :cond_4
    const-string/jumbo v10, "--setgid="

    #@54
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@57
    move-result v10

    #@58
    if-eqz v10, :cond_6

    #@5a
    .line 414
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    #@5c
    if-eqz v10, :cond_5

    #@5e
    .line 415
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@60
    .line 416
    const-string/jumbo v11, "Duplicate arg specified"

    #@63
    .line 415
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@66
    throw v10

    #@67
    .line 418
    :cond_5
    const/4 v10, 0x1

    #@68
    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    #@6a
    .line 420
    const/16 v10, 0x3d

    #@6c
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@6f
    move-result v10

    #@70
    add-int/lit8 v10, v10, 0x1

    #@72
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@75
    move-result-object v10

    #@76
    .line 419
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@79
    move-result v10

    #@7a
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    #@7c
    goto :goto_1

    #@7d
    .line 421
    :cond_6
    const-string/jumbo v10, "--target-sdk-version="

    #@80
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@83
    move-result v10

    #@84
    if-eqz v10, :cond_8

    #@86
    .line 422
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    #@88
    if-eqz v10, :cond_7

    #@8a
    .line 423
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@8c
    .line 424
    const-string/jumbo v11, "Duplicate target-sdk-version specified"

    #@8f
    .line 423
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@92
    throw v10

    #@93
    .line 426
    :cond_7
    const/4 v10, 0x1

    #@94
    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    #@96
    .line 428
    const/16 v10, 0x3d

    #@98
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@9b
    move-result v10

    #@9c
    add-int/lit8 v10, v10, 0x1

    #@9e
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a1
    move-result-object v10

    #@a2
    .line 427
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a5
    move-result v10

    #@a6
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    #@a8
    goto :goto_1

    #@a9
    .line 429
    :cond_8
    const-string/jumbo v10, "--enable-debugger"

    #@ac
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v10

    #@b0
    if-eqz v10, :cond_9

    #@b2
    .line 430
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@b4
    or-int/lit8 v10, v10, 0x1

    #@b6
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@b8
    goto :goto_1

    #@b9
    .line 431
    :cond_9
    const-string/jumbo v10, "--enable-safemode"

    #@bc
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v10

    #@c0
    if-eqz v10, :cond_a

    #@c2
    .line 432
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@c4
    or-int/lit8 v10, v10, 0x8

    #@c6
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@c8
    goto :goto_1

    #@c9
    .line 433
    :cond_a
    const-string/jumbo v10, "--enable-checkjni"

    #@cc
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cf
    move-result v10

    #@d0
    if-eqz v10, :cond_b

    #@d2
    .line 434
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@d4
    or-int/lit8 v10, v10, 0x2

    #@d6
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@d8
    goto/16 :goto_1

    #@da
    .line 435
    :cond_b
    const-string/jumbo v10, "--enable-jit"

    #@dd
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e0
    move-result v10

    #@e1
    if-eqz v10, :cond_c

    #@e3
    .line 436
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@e5
    or-int/lit8 v10, v10, 0x20

    #@e7
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@e9
    goto/16 :goto_1

    #@eb
    .line 437
    :cond_c
    const-string/jumbo v10, "--generate-debug-info"

    #@ee
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f1
    move-result v10

    #@f2
    if-eqz v10, :cond_d

    #@f4
    .line 438
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@f6
    or-int/lit8 v10, v10, 0x40

    #@f8
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@fa
    goto/16 :goto_1

    #@fc
    .line 439
    :cond_d
    const-string/jumbo v10, "--enable-jni-logging"

    #@ff
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@102
    move-result v10

    #@103
    if-eqz v10, :cond_e

    #@105
    .line 440
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@107
    or-int/lit8 v10, v10, 0x10

    #@109
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@10b
    goto/16 :goto_1

    #@10d
    .line 441
    :cond_e
    const-string/jumbo v10, "--enable-assert"

    #@110
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@113
    move-result v10

    #@114
    if-eqz v10, :cond_f

    #@116
    .line 442
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@118
    or-int/lit8 v10, v10, 0x4

    #@11a
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@11c
    goto/16 :goto_1

    #@11e
    .line 443
    :cond_f
    const-string/jumbo v10, "--runtime-args"

    #@121
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@124
    move-result v10

    #@125
    if-eqz v10, :cond_10

    #@127
    .line 444
    const/4 v9, 0x1

    #@128
    goto/16 :goto_1

    #@12a
    .line 445
    :cond_10
    const-string/jumbo v10, "--seinfo="

    #@12d
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@130
    move-result v10

    #@131
    if-eqz v10, :cond_12

    #@133
    .line 446
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    #@135
    if-eqz v10, :cond_11

    #@137
    .line 447
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@139
    .line 448
    const-string/jumbo v11, "Duplicate arg specified"

    #@13c
    .line 447
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13f
    throw v10

    #@140
    .line 450
    :cond_11
    const/4 v10, 0x1

    #@141
    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    #@143
    .line 451
    const/16 v10, 0x3d

    #@145
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@148
    move-result v10

    #@149
    add-int/lit8 v10, v10, 0x1

    #@14b
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14e
    move-result-object v10

    #@14f
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    #@151
    goto/16 :goto_1

    #@153
    .line 452
    :cond_12
    const-string/jumbo v10, "--capabilities="

    #@156
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@159
    move-result v10

    #@15a
    if-eqz v10, :cond_15

    #@15c
    .line 453
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    #@15e
    if-eqz v10, :cond_13

    #@160
    .line 454
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@162
    .line 455
    const-string/jumbo v11, "Duplicate arg specified"

    #@165
    .line 454
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@168
    throw v10

    #@169
    .line 457
    :cond_13
    const/4 v10, 0x1

    #@16a
    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    #@16c
    .line 458
    const/16 v10, 0x3d

    #@16e
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@171
    move-result v10

    #@172
    add-int/lit8 v10, v10, 0x1

    #@174
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@177
    move-result-object v1

    #@178
    .line 460
    .local v1, "capString":Ljava/lang/String;
    const-string/jumbo v10, ","

    #@17b
    const/4 v11, 0x2

    #@17c
    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@17f
    move-result-object v2

    #@180
    .line 462
    .local v2, "capStrings":[Ljava/lang/String;
    array-length v10, v2

    #@181
    const/4 v11, 0x1

    #@182
    if-ne v10, v11, :cond_14

    #@184
    .line 463
    const/4 v10, 0x0

    #@185
    aget-object v10, v2, v10

    #@187
    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    #@18a
    move-result-object v10

    #@18b
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@18e
    move-result-wide v10

    #@18f
    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    #@191
    .line 464
    iget-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    #@193
    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    #@195
    goto/16 :goto_1

    #@197
    .line 466
    :cond_14
    const/4 v10, 0x0

    #@198
    aget-object v10, v2, v10

    #@19a
    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    #@19d
    move-result-object v10

    #@19e
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@1a1
    move-result-wide v10

    #@1a2
    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    #@1a4
    .line 467
    const/4 v10, 0x1

    #@1a5
    aget-object v10, v2, v10

    #@1a7
    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    #@1aa
    move-result-object v10

    #@1ab
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@1ae
    move-result-wide v10

    #@1af
    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    #@1b1
    goto/16 :goto_1

    #@1b3
    .line 469
    .end local v1    # "capString":Ljava/lang/String;
    .end local v2    # "capStrings":[Ljava/lang/String;
    :cond_15
    const-string/jumbo v10, "--rlimit="

    #@1b6
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b9
    move-result v10

    #@1ba
    if-eqz v10, :cond_19

    #@1bc
    .line 472
    const/16 v10, 0x3d

    #@1be
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@1c1
    move-result v10

    #@1c2
    add-int/lit8 v10, v10, 0x1

    #@1c4
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1c7
    move-result-object v10

    #@1c8
    const-string/jumbo v11, ","

    #@1cb
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1ce
    move-result-object v6

    #@1cf
    .line 474
    .local v6, "limitStrings":[Ljava/lang/String;
    array-length v10, v6

    #@1d0
    const/4 v11, 0x3

    #@1d1
    if-eq v10, v11, :cond_16

    #@1d3
    .line 475
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@1d5
    .line 476
    const-string/jumbo v11, "--rlimit= should have 3 comma-delimited ints"

    #@1d8
    .line 475
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1db
    throw v10

    #@1dc
    .line 478
    :cond_16
    array-length v10, v6

    #@1dd
    new-array v8, v10, [I

    #@1df
    .line 480
    .local v8, "rlimitTuple":[I
    const/4 v5, 0x0

    #@1e0
    .local v5, "i":I
    :goto_2
    array-length v10, v6

    #@1e1
    if-ge v5, v10, :cond_17

    #@1e3
    .line 481
    aget-object v10, v6, v5

    #@1e5
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1e8
    move-result v10

    #@1e9
    aput v10, v8, v5

    #@1eb
    .line 480
    add-int/lit8 v5, v5, 0x1

    #@1ed
    goto :goto_2

    #@1ee
    .line 484
    :cond_17
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    #@1f0
    if-nez v10, :cond_18

    #@1f2
    .line 485
    new-instance v10, Ljava/util/ArrayList;

    #@1f4
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@1f7
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    #@1f9
    .line 488
    :cond_18
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    #@1fb
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1fe
    goto/16 :goto_1

    #@200
    .line 489
    .end local v5    # "i":I
    .end local v6    # "limitStrings":[Ljava/lang/String;
    .end local v8    # "rlimitTuple":[I
    :cond_19
    const-string/jumbo v10, "--setgroups="

    #@203
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@206
    move-result v10

    #@207
    if-eqz v10, :cond_1b

    #@209
    .line 490
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    #@20b
    if-eqz v10, :cond_1a

    #@20d
    .line 491
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@20f
    .line 492
    const-string/jumbo v11, "Duplicate arg specified"

    #@212
    .line 491
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@215
    throw v10

    #@216
    .line 496
    :cond_1a
    const/16 v10, 0x3d

    #@218
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@21b
    move-result v10

    #@21c
    add-int/lit8 v10, v10, 0x1

    #@21e
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@221
    move-result-object v10

    #@222
    const-string/jumbo v11, ","

    #@225
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@228
    move-result-object v7

    #@229
    .line 498
    .local v7, "params":[Ljava/lang/String;
    array-length v10, v7

    #@22a
    new-array v10, v10, [I

    #@22c
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    #@22e
    .line 500
    array-length v10, v7

    #@22f
    add-int/lit8 v5, v10, -0x1

    #@231
    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_3

    #@233
    .line 501
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    #@235
    aget-object v11, v7, v5

    #@237
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@23a
    move-result v11

    #@23b
    aput v11, v10, v5

    #@23d
    .line 500
    add-int/lit8 v5, v5, -0x1

    #@23f
    goto :goto_3

    #@240
    .line 503
    .end local v5    # "i":I
    .end local v7    # "params":[Ljava/lang/String;
    :cond_1b
    const-string/jumbo v10, "--invoke-with"

    #@243
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@246
    move-result v10

    #@247
    if-eqz v10, :cond_1d

    #@249
    .line 504
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@24b
    if-eqz v10, :cond_1c

    #@24d
    .line 505
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@24f
    .line 506
    const-string/jumbo v11, "Duplicate arg specified"

    #@252
    .line 505
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@255
    throw v10

    #@256
    .line 509
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    #@258
    :try_start_0
    aget-object v10, p1, v3

    #@25a
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@25c
    goto/16 :goto_1

    #@25e
    .line 510
    :catch_0
    move-exception v4

    #@25f
    .line 511
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@261
    .line 512
    const-string/jumbo v11, "--invoke-with requires argument"

    #@264
    .line 511
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@267
    throw v10

    #@268
    .line 514
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_1d
    const-string/jumbo v10, "--nice-name="

    #@26b
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26e
    move-result v10

    #@26f
    if-eqz v10, :cond_1f

    #@271
    .line 515
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@273
    if-eqz v10, :cond_1e

    #@275
    .line 516
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@277
    .line 517
    const-string/jumbo v11, "Duplicate arg specified"

    #@27a
    .line 516
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27d
    throw v10

    #@27e
    .line 519
    :cond_1e
    const/16 v10, 0x3d

    #@280
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@283
    move-result v10

    #@284
    add-int/lit8 v10, v10, 0x1

    #@286
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@289
    move-result-object v10

    #@28a
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@28c
    goto/16 :goto_1

    #@28e
    .line 520
    :cond_1f
    const-string/jumbo v10, "--mount-external-default"

    #@291
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@294
    move-result v10

    #@295
    if-eqz v10, :cond_20

    #@297
    .line 521
    const/4 v10, 0x1

    #@298
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    #@29a
    goto/16 :goto_1

    #@29c
    .line 522
    :cond_20
    const-string/jumbo v10, "--mount-external-read"

    #@29f
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a2
    move-result v10

    #@2a3
    if-eqz v10, :cond_21

    #@2a5
    .line 523
    const/4 v10, 0x2

    #@2a6
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    #@2a8
    goto/16 :goto_1

    #@2aa
    .line 524
    :cond_21
    const-string/jumbo v10, "--mount-external-write"

    #@2ad
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b0
    move-result v10

    #@2b1
    if-eqz v10, :cond_22

    #@2b3
    .line 525
    const/4 v10, 0x3

    #@2b4
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    #@2b6
    goto/16 :goto_1

    #@2b8
    .line 526
    :cond_22
    const-string/jumbo v10, "--query-abi-list"

    #@2bb
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2be
    move-result v10

    #@2bf
    if-eqz v10, :cond_23

    #@2c1
    .line 527
    const/4 v10, 0x1

    #@2c2
    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    #@2c4
    goto/16 :goto_1

    #@2c6
    .line 528
    :cond_23
    const-string/jumbo v10, "--instruction-set="

    #@2c9
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2cc
    move-result v10

    #@2cd
    if-eqz v10, :cond_24

    #@2cf
    .line 529
    const/16 v10, 0x3d

    #@2d1
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@2d4
    move-result v10

    #@2d5
    add-int/lit8 v10, v10, 0x1

    #@2d7
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2da
    move-result-object v10

    #@2db
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    #@2dd
    goto/16 :goto_1

    #@2df
    .line 530
    :cond_24
    const-string/jumbo v10, "--app-data-dir="

    #@2e2
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2e5
    move-result v10

    #@2e6
    if-eqz v10, :cond_0

    #@2e8
    .line 531
    const/16 v10, 0x3d

    #@2ea
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@2ed
    move-result v10

    #@2ee
    add-int/lit8 v10, v10, 0x1

    #@2f0
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2f3
    move-result-object v10

    #@2f4
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    #@2f6
    goto/16 :goto_1

    #@2f8
    .line 542
    .end local v0    # "arg":Ljava/lang/String;
    :cond_25
    if-nez v9, :cond_26

    #@2fa
    .line 543
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@2fc
    new-instance v11, Ljava/lang/StringBuilder;

    #@2fe
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@301
    const-string/jumbo v12, "Unexpected argument : "

    #@304
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@307
    move-result-object v11

    #@308
    aget-object v12, p1, v3

    #@30a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30d
    move-result-object v11

    #@30e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@311
    move-result-object v11

    #@312
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@315
    throw v10

    #@316
    .line 546
    :cond_26
    array-length v10, p1

    #@317
    sub-int/2addr v10, v3

    #@318
    new-array v10, v10, [Ljava/lang/String;

    #@31a
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@31c
    .line 547
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@31e
    iget-object v11, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@320
    array-length v11, v11

    #@321
    const/4 v12, 0x0

    #@322
    invoke-static {p1, v3, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@325
    .line 394
    :cond_27
    return-void
.end method
