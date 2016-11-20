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
    .line 539
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    #@14
    if-eqz v10, :cond_26

    #@16
    .line 540
    array-length v10, p1

    #@17
    sub-int/2addr v10, v3

    #@18
    if-lez v10, :cond_28

    #@1a
    .line 541
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
    const-string/jumbo v10, "--generate-debug-info"

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
    const-string/jumbo v10, "--always-jit"

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
    const-string/jumbo v10, "--native-debuggable"

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
    or-int/lit16 v10, v10, 0x80

    #@109
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@10b
    goto/16 :goto_1

    #@10d
    .line 441
    :cond_e
    const-string/jumbo v10, "--enable-jni-logging"

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
    or-int/lit8 v10, v10, 0x10

    #@11a
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@11c
    goto/16 :goto_1

    #@11e
    .line 443
    :cond_f
    const-string/jumbo v10, "--enable-assert"

    #@121
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@124
    move-result v10

    #@125
    if-eqz v10, :cond_10

    #@127
    .line 444
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@129
    or-int/lit8 v10, v10, 0x4

    #@12b
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@12d
    goto/16 :goto_1

    #@12f
    .line 445
    :cond_10
    const-string/jumbo v10, "--runtime-args"

    #@132
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@135
    move-result v10

    #@136
    if-eqz v10, :cond_11

    #@138
    .line 446
    const/4 v9, 0x1

    #@139
    goto/16 :goto_1

    #@13b
    .line 447
    :cond_11
    const-string/jumbo v10, "--seinfo="

    #@13e
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@141
    move-result v10

    #@142
    if-eqz v10, :cond_13

    #@144
    .line 448
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    #@146
    if-eqz v10, :cond_12

    #@148
    .line 449
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@14a
    .line 450
    const-string/jumbo v11, "Duplicate arg specified"

    #@14d
    .line 449
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@150
    throw v10

    #@151
    .line 452
    :cond_12
    const/4 v10, 0x1

    #@152
    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    #@154
    .line 453
    const/16 v10, 0x3d

    #@156
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@159
    move-result v10

    #@15a
    add-int/lit8 v10, v10, 0x1

    #@15c
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@15f
    move-result-object v10

    #@160
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    #@162
    goto/16 :goto_1

    #@164
    .line 454
    :cond_13
    const-string/jumbo v10, "--capabilities="

    #@167
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@16a
    move-result v10

    #@16b
    if-eqz v10, :cond_16

    #@16d
    .line 455
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    #@16f
    if-eqz v10, :cond_14

    #@171
    .line 456
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@173
    .line 457
    const-string/jumbo v11, "Duplicate arg specified"

    #@176
    .line 456
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@179
    throw v10

    #@17a
    .line 459
    :cond_14
    const/4 v10, 0x1

    #@17b
    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    #@17d
    .line 460
    const/16 v10, 0x3d

    #@17f
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@182
    move-result v10

    #@183
    add-int/lit8 v10, v10, 0x1

    #@185
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@188
    move-result-object v1

    #@189
    .line 462
    .local v1, "capString":Ljava/lang/String;
    const-string/jumbo v10, ","

    #@18c
    const/4 v11, 0x2

    #@18d
    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@190
    move-result-object v2

    #@191
    .line 464
    .local v2, "capStrings":[Ljava/lang/String;
    array-length v10, v2

    #@192
    const/4 v11, 0x1

    #@193
    if-ne v10, v11, :cond_15

    #@195
    .line 465
    const/4 v10, 0x0

    #@196
    aget-object v10, v2, v10

    #@198
    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    #@19b
    move-result-object v10

    #@19c
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@19f
    move-result-wide v10

    #@1a0
    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    #@1a2
    .line 466
    iget-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    #@1a4
    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    #@1a6
    goto/16 :goto_1

    #@1a8
    .line 468
    :cond_15
    const/4 v10, 0x0

    #@1a9
    aget-object v10, v2, v10

    #@1ab
    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    #@1ae
    move-result-object v10

    #@1af
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@1b2
    move-result-wide v10

    #@1b3
    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    #@1b5
    .line 469
    const/4 v10, 0x1

    #@1b6
    aget-object v10, v2, v10

    #@1b8
    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    #@1bb
    move-result-object v10

    #@1bc
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@1bf
    move-result-wide v10

    #@1c0
    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    #@1c2
    goto/16 :goto_1

    #@1c4
    .line 471
    .end local v1    # "capString":Ljava/lang/String;
    .end local v2    # "capStrings":[Ljava/lang/String;
    :cond_16
    const-string/jumbo v10, "--rlimit="

    #@1c7
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1ca
    move-result v10

    #@1cb
    if-eqz v10, :cond_1a

    #@1cd
    .line 474
    const/16 v10, 0x3d

    #@1cf
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@1d2
    move-result v10

    #@1d3
    add-int/lit8 v10, v10, 0x1

    #@1d5
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1d8
    move-result-object v10

    #@1d9
    const-string/jumbo v11, ","

    #@1dc
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1df
    move-result-object v6

    #@1e0
    .line 476
    .local v6, "limitStrings":[Ljava/lang/String;
    array-length v10, v6

    #@1e1
    const/4 v11, 0x3

    #@1e2
    if-eq v10, v11, :cond_17

    #@1e4
    .line 477
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@1e6
    .line 478
    const-string/jumbo v11, "--rlimit= should have 3 comma-delimited ints"

    #@1e9
    .line 477
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1ec
    throw v10

    #@1ed
    .line 480
    :cond_17
    array-length v10, v6

    #@1ee
    new-array v8, v10, [I

    #@1f0
    .line 482
    .local v8, "rlimitTuple":[I
    const/4 v5, 0x0

    #@1f1
    .local v5, "i":I
    :goto_2
    array-length v10, v6

    #@1f2
    if-ge v5, v10, :cond_18

    #@1f4
    .line 483
    aget-object v10, v6, v5

    #@1f6
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f9
    move-result v10

    #@1fa
    aput v10, v8, v5

    #@1fc
    .line 482
    add-int/lit8 v5, v5, 0x1

    #@1fe
    goto :goto_2

    #@1ff
    .line 486
    :cond_18
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    #@201
    if-nez v10, :cond_19

    #@203
    .line 487
    new-instance v10, Ljava/util/ArrayList;

    #@205
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@208
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    #@20a
    .line 490
    :cond_19
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    #@20c
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20f
    goto/16 :goto_1

    #@211
    .line 491
    .end local v5    # "i":I
    .end local v6    # "limitStrings":[Ljava/lang/String;
    .end local v8    # "rlimitTuple":[I
    :cond_1a
    const-string/jumbo v10, "--setgroups="

    #@214
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@217
    move-result v10

    #@218
    if-eqz v10, :cond_1c

    #@21a
    .line 492
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    #@21c
    if-eqz v10, :cond_1b

    #@21e
    .line 493
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@220
    .line 494
    const-string/jumbo v11, "Duplicate arg specified"

    #@223
    .line 493
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@226
    throw v10

    #@227
    .line 498
    :cond_1b
    const/16 v10, 0x3d

    #@229
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@22c
    move-result v10

    #@22d
    add-int/lit8 v10, v10, 0x1

    #@22f
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@232
    move-result-object v10

    #@233
    const-string/jumbo v11, ","

    #@236
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@239
    move-result-object v7

    #@23a
    .line 500
    .local v7, "params":[Ljava/lang/String;
    array-length v10, v7

    #@23b
    new-array v10, v10, [I

    #@23d
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    #@23f
    .line 502
    array-length v10, v7

    #@240
    add-int/lit8 v5, v10, -0x1

    #@242
    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_3

    #@244
    .line 503
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    #@246
    aget-object v11, v7, v5

    #@248
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@24b
    move-result v11

    #@24c
    aput v11, v10, v5

    #@24e
    .line 502
    add-int/lit8 v5, v5, -0x1

    #@250
    goto :goto_3

    #@251
    .line 505
    .end local v5    # "i":I
    .end local v7    # "params":[Ljava/lang/String;
    :cond_1c
    const-string/jumbo v10, "--invoke-with"

    #@254
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@257
    move-result v10

    #@258
    if-eqz v10, :cond_1e

    #@25a
    .line 506
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@25c
    if-eqz v10, :cond_1d

    #@25e
    .line 507
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@260
    .line 508
    const-string/jumbo v11, "Duplicate arg specified"

    #@263
    .line 507
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@266
    throw v10

    #@267
    .line 511
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    #@269
    :try_start_0
    aget-object v10, p1, v3

    #@26b
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@26d
    goto/16 :goto_1

    #@26f
    .line 512
    :catch_0
    move-exception v4

    #@270
    .line 513
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@272
    .line 514
    const-string/jumbo v11, "--invoke-with requires argument"

    #@275
    .line 513
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@278
    throw v10

    #@279
    .line 516
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_1e
    const-string/jumbo v10, "--nice-name="

    #@27c
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@27f
    move-result v10

    #@280
    if-eqz v10, :cond_20

    #@282
    .line 517
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@284
    if-eqz v10, :cond_1f

    #@286
    .line 518
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@288
    .line 519
    const-string/jumbo v11, "Duplicate arg specified"

    #@28b
    .line 518
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28e
    throw v10

    #@28f
    .line 521
    :cond_1f
    const/16 v10, 0x3d

    #@291
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@294
    move-result v10

    #@295
    add-int/lit8 v10, v10, 0x1

    #@297
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@29a
    move-result-object v10

    #@29b
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@29d
    goto/16 :goto_1

    #@29f
    .line 522
    :cond_20
    const-string/jumbo v10, "--mount-external-default"

    #@2a2
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a5
    move-result v10

    #@2a6
    if-eqz v10, :cond_21

    #@2a8
    .line 523
    const/4 v10, 0x1

    #@2a9
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    #@2ab
    goto/16 :goto_1

    #@2ad
    .line 524
    :cond_21
    const-string/jumbo v10, "--mount-external-read"

    #@2b0
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b3
    move-result v10

    #@2b4
    if-eqz v10, :cond_22

    #@2b6
    .line 525
    const/4 v10, 0x2

    #@2b7
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    #@2b9
    goto/16 :goto_1

    #@2bb
    .line 526
    :cond_22
    const-string/jumbo v10, "--mount-external-write"

    #@2be
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c1
    move-result v10

    #@2c2
    if-eqz v10, :cond_23

    #@2c4
    .line 527
    const/4 v10, 0x3

    #@2c5
    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    #@2c7
    goto/16 :goto_1

    #@2c9
    .line 528
    :cond_23
    const-string/jumbo v10, "--query-abi-list"

    #@2cc
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2cf
    move-result v10

    #@2d0
    if-eqz v10, :cond_24

    #@2d2
    .line 529
    const/4 v10, 0x1

    #@2d3
    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    #@2d5
    goto/16 :goto_1

    #@2d7
    .line 530
    :cond_24
    const-string/jumbo v10, "--instruction-set="

    #@2da
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2dd
    move-result v10

    #@2de
    if-eqz v10, :cond_25

    #@2e0
    .line 531
    const/16 v10, 0x3d

    #@2e2
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@2e5
    move-result v10

    #@2e6
    add-int/lit8 v10, v10, 0x1

    #@2e8
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2eb
    move-result-object v10

    #@2ec
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    #@2ee
    goto/16 :goto_1

    #@2f0
    .line 532
    :cond_25
    const-string/jumbo v10, "--app-data-dir="

    #@2f3
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2f6
    move-result v10

    #@2f7
    if-eqz v10, :cond_0

    #@2f9
    .line 533
    const/16 v10, 0x3d

    #@2fb
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@2fe
    move-result v10

    #@2ff
    add-int/lit8 v10, v10, 0x1

    #@301
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@304
    move-result-object v10

    #@305
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    #@307
    goto/16 :goto_1

    #@309
    .line 544
    .end local v0    # "arg":Ljava/lang/String;
    :cond_26
    if-nez v9, :cond_27

    #@30b
    .line 545
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@30d
    new-instance v11, Ljava/lang/StringBuilder;

    #@30f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@312
    const-string/jumbo v12, "Unexpected argument : "

    #@315
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@318
    move-result-object v11

    #@319
    aget-object v12, p1, v3

    #@31b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31e
    move-result-object v11

    #@31f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@322
    move-result-object v11

    #@323
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@326
    throw v10

    #@327
    .line 548
    :cond_27
    array-length v10, p1

    #@328
    sub-int/2addr v10, v3

    #@329
    new-array v10, v10, [Ljava/lang/String;

    #@32b
    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@32d
    .line 549
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@32f
    iget-object v11, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@331
    array-length v11, v11

    #@332
    const/4 v12, 0x0

    #@333
    invoke-static {p1, v3, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@336
    .line 394
    :cond_28
    return-void
.end method
