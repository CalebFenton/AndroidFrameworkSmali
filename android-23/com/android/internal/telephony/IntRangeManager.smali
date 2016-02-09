.class public abstract Lcom/android/internal/telephony/IntRangeManager;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IntRangeManager$IntRange;,
        Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    }
.end annotation


# static fields
.field private static final INITIAL_CLIENTS_ARRAY_SIZE:I = 0x4


# instance fields
.field private mRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 179
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@a
    .line 181
    return-void
.end method

.method private populateAllClientRanges()V
    .locals 9

    #@0
    .prologue
    .line 634
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    .line 635
    .local v3, "len":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@9
    .line 636
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v5

    #@f
    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@11
    .line 638
    .local v5, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v0

    #@17
    .line 639
    .local v0, "clientLen":I
    const/4 v2, 0x0

    #@18
    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_0

    #@1a
    .line 640
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@22
    .line 641
    .local v4, "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@24
    iget v7, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@26
    const/4 v8, 0x1

    #@27
    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    #@2a
    .line 639
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 635
    .end local v4    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 633
    .end local v0    # "clientLen":I
    .end local v2    # "j":I
    .end local v5    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1
    return-void
.end method

.method private populateAllRanges()V
    .locals 5

    #@0
    .prologue
    .line 621
    iget-object v2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 623
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 624
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@12
    .line 625
    .local v0, "currRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v2, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@14
    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@16
    const/4 v4, 0x1

    #@17
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    #@1a
    goto :goto_0

    #@1b
    .line 620
    .end local v0    # "currRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addRange(IIZ)V
.end method

.method public declared-synchronized disableRange(IILjava/lang/String;)Z
    .locals 19
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "client"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 438
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@5
    move-object/from16 v17, v0

    #@7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v9

    #@b
    .line 440
    .local v9, "len":I
    const/4 v7, 0x0

    #@c
    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_13

    #@e
    .line 441
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@12
    move-object/from16 v17, v0

    #@14
    move-object/from16 v0, v17

    #@16
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v14

    #@1a
    check-cast v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@1c
    .line 442
    .local v14, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@1e
    move/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move/from16 v0, p1

    #@22
    move/from16 v1, v17

    #@24
    if-ge v0, v1, :cond_0

    #@26
    .line 443
    const/16 v17, 0x0

    #@28
    monitor-exit p0

    #@29
    return v17

    #@2a
    .line 444
    :cond_0
    :try_start_1
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@2c
    move/from16 v17, v0

    #@2e
    move/from16 v0, p2

    #@30
    move/from16 v1, v17

    #@32
    if-gt v0, v1, :cond_12

    #@34
    .line 447
    iget-object v2, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@36
    .line 450
    .local v2, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@39
    move-result v5

    #@3a
    .line 451
    .local v5, "crLength":I
    const/16 v17, 0x1

    #@3c
    move/from16 v0, v17

    #@3e
    if-ne v5, v0, :cond_3

    #@40
    .line 452
    const/16 v17, 0x0

    #@42
    move/from16 v0, v17

    #@44
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v3

    #@48
    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@4a
    .line 453
    .local v3, "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@4c
    move/from16 v17, v0

    #@4e
    move/from16 v0, v17

    #@50
    move/from16 v1, p1

    #@52
    if-ne v0, v1, :cond_2

    #@54
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@56
    move/from16 v17, v0

    #@58
    move/from16 v0, v17

    #@5a
    move/from16 v1, p2

    #@5c
    if-ne v0, v1, :cond_2

    #@5e
    iget-object v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    #@60
    move-object/from16 v17, v0

    #@62
    move-object/from16 v0, v17

    #@64
    move-object/from16 v1, p3

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v17

    #@6a
    if-eqz v17, :cond_2

    #@6c
    .line 456
    move-object/from16 v0, p0

    #@6e
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@70
    move-object/from16 v17, v0

    #@72
    move-object/from16 v0, v17

    #@74
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@77
    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7a
    move-result v17

    #@7b
    if-eqz v17, :cond_1

    #@7d
    .line 458
    const/16 v17, 0x1

    #@7f
    monitor-exit p0

    #@80
    return v17

    #@81
    .line 461
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@85
    move-object/from16 v17, v0

    #@87
    move-object/from16 v0, v17

    #@89
    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8c
    .line 462
    const/16 v17, 0x0

    #@8e
    monitor-exit p0

    #@8f
    return v17

    #@90
    .line 465
    :cond_2
    const/16 v17, 0x0

    #@92
    monitor-exit p0

    #@93
    return v17

    #@94
    .line 475
    .end local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_3
    const/high16 v8, -0x80000000

    #@96
    .line 476
    .local v8, "largestEndId":I
    const/16 v16, 0x0

    #@98
    .line 479
    .local v16, "updateStarted":Z
    const/4 v4, 0x0

    #@99
    .local v4, "crIndex":I
    :goto_1
    if-ge v4, v5, :cond_12

    #@9b
    .line 480
    :try_start_3
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9e
    move-result-object v3

    #@9f
    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@a1
    .line 481
    .restart local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@a3
    move/from16 v17, v0

    #@a5
    move/from16 v0, v17

    #@a7
    move/from16 v1, p1

    #@a9
    if-ne v0, v1, :cond_10

    #@ab
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@ad
    move/from16 v17, v0

    #@af
    move/from16 v0, v17

    #@b1
    move/from16 v1, p2

    #@b3
    if-ne v0, v1, :cond_10

    #@b5
    iget-object v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    #@b7
    move-object/from16 v17, v0

    #@b9
    move-object/from16 v0, v17

    #@bb
    move-object/from16 v1, p3

    #@bd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v17

    #@c1
    if-eqz v17, :cond_10

    #@c3
    .line 483
    add-int/lit8 v17, v5, -0x1

    #@c5
    move/from16 v0, v17

    #@c7
    if-ne v4, v0, :cond_6

    #@c9
    .line 484
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@cb
    move/from16 v17, v0

    #@cd
    move/from16 v0, v17

    #@cf
    if-ne v0, v8, :cond_4

    #@d1
    .line 487
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@d4
    .line 488
    const/16 v17, 0x1

    #@d6
    monitor-exit p0

    #@d7
    return v17

    #@d8
    .line 491
    :cond_4
    :try_start_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@db
    .line 492
    iput v8, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@dd
    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e0
    move-result v17

    #@e1
    if-eqz v17, :cond_5

    #@e3
    .line 494
    const/16 v17, 0x1

    #@e5
    monitor-exit p0

    #@e6
    return v17

    #@e7
    .line 496
    :cond_5
    :try_start_5
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@ea
    .line 497
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@ec
    move/from16 v17, v0

    #@ee
    move/from16 v0, v17

    #@f0
    iput v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@f2
    .line 498
    const/16 v17, 0x0

    #@f4
    monitor-exit p0

    #@f5
    return v17

    #@f6
    .line 506
    :cond_6
    :try_start_6
    new-instance v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@f8
    move-object/from16 v0, p0

    #@fa
    invoke-direct {v15, v0, v14, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    #@fd
    .line 508
    .local v15, "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    if-nez v4, :cond_8

    #@ff
    .line 514
    const/16 v17, 0x1

    #@101
    move/from16 v0, v17

    #@103
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@106
    move-result-object v17

    #@107
    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@109
    move-object/from16 v0, v17

    #@10b
    iget v13, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@10d
    .line 515
    .local v13, "nextStartId":I
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@10f
    move/from16 v17, v0

    #@111
    move/from16 v0, v17

    #@113
    if-eq v13, v0, :cond_7

    #@115
    .line 516
    const/16 v16, 0x1

    #@117
    .line 517
    iput v13, v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@119
    .line 520
    :cond_7
    const/16 v17, 0x1

    #@11b
    move/from16 v0, v17

    #@11d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@120
    move-result-object v17

    #@121
    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@123
    move-object/from16 v0, v17

    #@125
    iget v8, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@127
    .line 527
    .end local v13    # "nextStartId":I
    :cond_8
    new-instance v10, Ljava/util/ArrayList;

    #@129
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@12c
    .line 529
    .local v10, "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    move-object v6, v15

    #@12d
    .line 530
    .local v6, "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v12, v4, 0x1

    #@12f
    .local v12, "nextIndex":I
    :goto_2
    if-ge v12, v5, :cond_c

    #@131
    .line 531
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@134
    move-result-object v11

    #@135
    check-cast v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@137
    .line 532
    .local v11, "nextCr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    #@139
    move/from16 v17, v0

    #@13b
    add-int/lit8 v18, v8, 0x1

    #@13d
    move/from16 v0, v17

    #@13f
    move/from16 v1, v18

    #@141
    if-le v0, v1, :cond_a

    #@143
    .line 533
    const/16 v16, 0x1

    #@145
    .line 534
    iput v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@147
    .line 535
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14a
    .line 536
    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@14c
    .end local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, p0

    #@14e
    invoke-direct {v6, v0, v11}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    #@151
    .line 543
    .restart local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_3
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@153
    move/from16 v17, v0

    #@155
    move/from16 v0, v17

    #@157
    if-le v0, v8, :cond_9

    #@159
    .line 544
    iget v8, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@15b
    .line 530
    :cond_9
    add-int/lit8 v12, v12, 0x1

    #@15d
    goto :goto_2

    #@15e
    .line 538
    :cond_a
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@160
    move/from16 v17, v0

    #@162
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@164
    move/from16 v18, v0

    #@166
    move/from16 v0, v17

    #@168
    move/from16 v1, v18

    #@16a
    if-ge v0, v1, :cond_b

    #@16c
    .line 539
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@16e
    move/from16 v17, v0

    #@170
    move/from16 v0, v17

    #@172
    iput v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@174
    .line 541
    :cond_b
    iget-object v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@176
    move-object/from16 v17, v0

    #@178
    move-object/from16 v0, v17

    #@17a
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@17d
    goto :goto_3

    #@17e
    .end local v2    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v4    # "crIndex":I
    .end local v5    # "crLength":I
    .end local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v7    # "i":I
    .end local v8    # "largestEndId":I
    .end local v9    # "len":I
    .end local v10    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v11    # "nextCr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v12    # "nextIndex":I
    .end local v14    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v15    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v16    # "updateStarted":Z
    :catchall_0
    move-exception v17

    #@17f
    monitor-exit p0

    #@180
    throw v17

    #@181
    .line 549
    .restart local v2    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .restart local v4    # "crIndex":I
    .restart local v5    # "crLength":I
    .restart local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v7    # "i":I
    .restart local v8    # "largestEndId":I
    .restart local v9    # "len":I
    .restart local v10    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .restart local v12    # "nextIndex":I
    .restart local v14    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v15    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v16    # "updateStarted":Z
    :cond_c
    move/from16 v0, p2

    #@183
    if-ge v8, v0, :cond_d

    #@185
    .line 550
    const/16 v16, 0x1

    #@187
    .line 551
    :try_start_7
    iput v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@189
    .line 553
    :cond_d
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18c
    .line 556
    move-object/from16 v0, p0

    #@18e
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@190
    move-object/from16 v17, v0

    #@192
    move-object/from16 v0, v17

    #@194
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@197
    .line 557
    move-object/from16 v0, p0

    #@199
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@19b
    move-object/from16 v17, v0

    #@19d
    move-object/from16 v0, v17

    #@19f
    invoke-virtual {v0, v7, v10}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    #@1a2
    .line 558
    if-eqz v16, :cond_e

    #@1a4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1a7
    move-result v17

    #@1a8
    if-eqz v17, :cond_f

    #@1aa
    .line 565
    :cond_e
    const/16 v17, 0x1

    #@1ac
    monitor-exit p0

    #@1ad
    return v17

    #@1ae
    .line 560
    :cond_f
    :try_start_8
    move-object/from16 v0, p0

    #@1b0
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@1b2
    move-object/from16 v17, v0

    #@1b4
    move-object/from16 v0, v17

    #@1b6
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@1b9
    .line 561
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@1bd
    move-object/from16 v17, v0

    #@1bf
    move-object/from16 v0, v17

    #@1c1
    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@1c4
    .line 562
    const/16 v17, 0x0

    #@1c6
    monitor-exit p0

    #@1c7
    return v17

    #@1c8
    .line 568
    .end local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v10    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v12    # "nextIndex":I
    .end local v15    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_10
    :try_start_9
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    #@1ca
    move/from16 v17, v0

    #@1cc
    move/from16 v0, v17

    #@1ce
    if-le v0, v8, :cond_11

    #@1d0
    .line 569
    iget v8, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@1d2
    .line 479
    :cond_11
    add-int/lit8 v4, v4, 0x1

    #@1d4
    goto/16 :goto_1

    #@1d6
    .line 440
    .end local v2    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v4    # "crIndex":I
    .end local v5    # "crLength":I
    .end local v8    # "largestEndId":I
    .end local v16    # "updateStarted":Z
    :cond_12
    add-int/lit8 v7, v7, 0x1

    #@1d8
    goto/16 :goto_0

    #@1da
    .line 576
    .end local v14    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_13
    const/16 v17, 0x0

    #@1dc
    monitor-exit p0

    #@1dd
    return v17
.end method

.method public declared-synchronized enableRange(IILjava/lang/String;)Z
    .locals 20
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "client"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 194
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@5
    move-object/from16 v17, v0

    #@7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v10

    #@b
    .line 197
    .local v10, "len":I
    if-nez v10, :cond_1

    #@d
    .line 198
    const/16 v17, 0x1

    #@f
    move-object/from16 v0, p0

    #@11
    move/from16 v1, p1

    #@13
    move/from16 v2, p2

    #@15
    move/from16 v3, v17

    #@17
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    #@1a
    move-result v17

    #@1b
    if-eqz v17, :cond_0

    #@1d
    .line 199
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@21
    move-object/from16 v17, v0

    #@23
    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@25
    move-object/from16 v0, v18

    #@27
    move-object/from16 v1, p0

    #@29
    move/from16 v2, p1

    #@2b
    move/from16 v3, p2

    #@2d
    move-object/from16 v4, p3

    #@2f
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    #@32
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 200
    const/16 v17, 0x1

    #@37
    monitor-exit p0

    #@38
    return v17

    #@39
    .line 202
    :cond_0
    const/16 v17, 0x0

    #@3b
    monitor-exit p0

    #@3c
    return v17

    #@3d
    .line 206
    :cond_1
    const/4 v14, 0x0

    #@3e
    .local v14, "startIndex":I
    :goto_0
    if-ge v14, v10, :cond_21

    #@40
    .line 207
    :try_start_1
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@44
    move-object/from16 v17, v0

    #@46
    move-object/from16 v0, v17

    #@48
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v13

    #@4c
    check-cast v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@4e
    .line 208
    .local v13, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@50
    move/from16 v17, v0

    #@52
    move/from16 v0, p1

    #@54
    move/from16 v1, v17

    #@56
    if-lt v0, v1, :cond_2

    #@58
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@5a
    move/from16 v17, v0

    #@5c
    move/from16 v0, p2

    #@5e
    move/from16 v1, v17

    #@60
    if-gt v0, v1, :cond_2

    #@62
    .line 213
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@64
    move-object/from16 v0, v17

    #@66
    move-object/from16 v1, p0

    #@68
    move/from16 v2, p1

    #@6a
    move/from16 v3, p2

    #@6c
    move-object/from16 v4, p3

    #@6e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    #@71
    move-object/from16 v0, v17

    #@73
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@76
    .line 214
    const/16 v17, 0x1

    #@78
    monitor-exit p0

    #@79
    return v17

    #@7a
    .line 215
    :cond_2
    add-int/lit8 v17, p1, -0x1

    #@7c
    :try_start_2
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@7e
    move/from16 v18, v0

    #@80
    move/from16 v0, v17

    #@82
    move/from16 v1, v18

    #@84
    if-ne v0, v1, :cond_8

    #@86
    .line 218
    move/from16 v11, p2

    #@88
    .line 219
    .local v11, "newRangeEndId":I
    const/4 v12, 0x0

    #@89
    .line 220
    .local v12, "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, v14, 0x1

    #@8b
    move/from16 v0, v17

    #@8d
    if-ge v0, v10, :cond_3

    #@8f
    .line 221
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@93
    move-object/from16 v17, v0

    #@95
    add-int/lit8 v18, v14, 0x1

    #@97
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9a
    move-result-object v12

    #@9b
    .end local v12    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    check-cast v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@9d
    .line 222
    .local v12, "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@9f
    move/from16 v17, v0

    #@a1
    add-int/lit8 v17, v17, -0x1

    #@a3
    move/from16 v0, v17

    #@a5
    move/from16 v1, p2

    #@a7
    if-gt v0, v1, :cond_6

    #@a9
    .line 224
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@ab
    move/from16 v17, v0

    #@ad
    move/from16 v0, p2

    #@af
    move/from16 v1, v17

    #@b1
    if-gt v0, v1, :cond_3

    #@b3
    .line 226
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@b5
    move/from16 v17, v0

    #@b7
    add-int/lit8 v11, v17, -0x1

    #@b9
    .line 233
    .end local v12    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_3
    :goto_1
    const/16 v17, 0x1

    #@bb
    move-object/from16 v0, p0

    #@bd
    move/from16 v1, p1

    #@bf
    move/from16 v2, v17

    #@c1
    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    #@c4
    move-result v17

    #@c5
    if-eqz v17, :cond_7

    #@c7
    .line 234
    move/from16 v0, p2

    #@c9
    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@cb
    .line 235
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@cd
    move-object/from16 v0, v17

    #@cf
    move-object/from16 v1, p0

    #@d1
    move/from16 v2, p1

    #@d3
    move/from16 v3, p2

    #@d5
    move-object/from16 v4, p3

    #@d7
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    #@da
    move-object/from16 v0, v17

    #@dc
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    #@df
    .line 238
    if-eqz v12, :cond_5

    #@e1
    .line 239
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@e3
    move/from16 v17, v0

    #@e5
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@e7
    move/from16 v18, v0

    #@e9
    move/from16 v0, v17

    #@eb
    move/from16 v1, v18

    #@ed
    if-ge v0, v1, :cond_4

    #@ef
    .line 241
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@f1
    move/from16 v17, v0

    #@f3
    move/from16 v0, v17

    #@f5
    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@f7
    .line 243
    :cond_4
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@f9
    move-object/from16 v17, v0

    #@fb
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@fd
    move-object/from16 v18, v0

    #@ff
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@102
    .line 244
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@106
    move-object/from16 v17, v0

    #@108
    move-object/from16 v0, v17

    #@10a
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@10d
    .line 246
    :cond_5
    const/16 v17, 0x1

    #@10f
    monitor-exit p0

    #@110
    return v17

    #@111
    .line 230
    .restart local v12    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_6
    const/4 v12, 0x0

    #@112
    .local v12, "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    goto :goto_1

    #@113
    .line 248
    .end local v12    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_7
    const/16 v17, 0x0

    #@115
    monitor-exit p0

    #@116
    return v17

    #@117
    .line 250
    .end local v11    # "newRangeEndId":I
    :cond_8
    :try_start_3
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@119
    move/from16 v17, v0

    #@11b
    move/from16 v0, p1

    #@11d
    move/from16 v1, v17

    #@11f
    if-ge v0, v1, :cond_16

    #@121
    .line 254
    add-int/lit8 v17, p2, 0x1

    #@123
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@125
    move/from16 v18, v0

    #@127
    move/from16 v0, v17

    #@129
    move/from16 v1, v18

    #@12b
    if-ge v0, v1, :cond_a

    #@12d
    .line 257
    const/16 v17, 0x1

    #@12f
    move-object/from16 v0, p0

    #@131
    move/from16 v1, p1

    #@133
    move/from16 v2, p2

    #@135
    move/from16 v3, v17

    #@137
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    #@13a
    move-result v17

    #@13b
    if-eqz v17, :cond_9

    #@13d
    .line 258
    move-object/from16 v0, p0

    #@13f
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@141
    move-object/from16 v17, v0

    #@143
    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@145
    move-object/from16 v0, v18

    #@147
    move-object/from16 v1, p0

    #@149
    move/from16 v2, p1

    #@14b
    move/from16 v3, p2

    #@14d
    move-object/from16 v4, p3

    #@14f
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    #@152
    move-object/from16 v0, v17

    #@154
    move-object/from16 v1, v18

    #@156
    invoke-virtual {v0, v14, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@159
    .line 259
    const/16 v17, 0x1

    #@15b
    monitor-exit p0

    #@15c
    return v17

    #@15d
    .line 261
    :cond_9
    const/16 v17, 0x0

    #@15f
    monitor-exit p0

    #@160
    return v17

    #@161
    .line 263
    :cond_a
    :try_start_4
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@163
    move/from16 v17, v0

    #@165
    move/from16 v0, p2

    #@167
    move/from16 v1, v17

    #@169
    if-gt v0, v1, :cond_c

    #@16b
    .line 266
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@16d
    move/from16 v17, v0

    #@16f
    add-int/lit8 v17, v17, -0x1

    #@171
    const/16 v18, 0x1

    #@173
    move-object/from16 v0, p0

    #@175
    move/from16 v1, p1

    #@177
    move/from16 v2, v17

    #@179
    move/from16 v3, v18

    #@17b
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    #@17e
    move-result v17

    #@17f
    if-eqz v17, :cond_b

    #@181
    .line 267
    move/from16 v0, p1

    #@183
    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@185
    .line 268
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@187
    move-object/from16 v17, v0

    #@189
    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@18b
    move-object/from16 v0, v18

    #@18d
    move-object/from16 v1, p0

    #@18f
    move/from16 v2, p1

    #@191
    move/from16 v3, p2

    #@193
    move-object/from16 v4, p3

    #@195
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    #@198
    const/16 v19, 0x0

    #@19a
    move-object/from16 v0, v17

    #@19c
    move/from16 v1, v19

    #@19e
    move-object/from16 v2, v18

    #@1a0
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1a3
    .line 269
    const/16 v17, 0x1

    #@1a5
    monitor-exit p0

    #@1a6
    return v17

    #@1a7
    .line 271
    :cond_b
    const/16 v17, 0x0

    #@1a9
    monitor-exit p0

    #@1aa
    return v17

    #@1ab
    .line 275
    :cond_c
    add-int/lit8 v5, v14, 0x1

    #@1ad
    .local v5, "endIndex":I
    :goto_2
    if-ge v5, v10, :cond_13

    #@1af
    .line 276
    :try_start_5
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@1b3
    move-object/from16 v17, v0

    #@1b5
    move-object/from16 v0, v17

    #@1b7
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1ba
    move-result-object v6

    #@1bb
    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@1bd
    .line 277
    .local v6, "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, p2, 0x1

    #@1bf
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@1c1
    move/from16 v18, v0

    #@1c3
    move/from16 v0, v17

    #@1c5
    move/from16 v1, v18

    #@1c7
    if-ge v0, v1, :cond_f

    #@1c9
    .line 280
    const/16 v17, 0x1

    #@1cb
    move-object/from16 v0, p0

    #@1cd
    move/from16 v1, p1

    #@1cf
    move/from16 v2, p2

    #@1d1
    move/from16 v3, v17

    #@1d3
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    #@1d6
    move-result v17

    #@1d7
    if-eqz v17, :cond_e

    #@1d9
    .line 281
    move/from16 v0, p1

    #@1db
    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@1dd
    .line 282
    move/from16 v0, p2

    #@1df
    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@1e1
    .line 284
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@1e3
    move-object/from16 v17, v0

    #@1e5
    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@1e7
    move-object/from16 v0, v18

    #@1e9
    move-object/from16 v1, p0

    #@1eb
    move/from16 v2, p1

    #@1ed
    move/from16 v3, p2

    #@1ef
    move-object/from16 v4, p3

    #@1f1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    #@1f4
    const/16 v19, 0x0

    #@1f6
    move-object/from16 v0, v17

    #@1f8
    move/from16 v1, v19

    #@1fa
    move-object/from16 v2, v18

    #@1fc
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@1ff
    .line 290
    add-int/lit8 v8, v14, 0x1

    #@201
    .line 291
    .local v8, "joinIndex":I
    move v7, v8

    #@202
    .local v7, "i":I
    :goto_3
    if-ge v7, v5, :cond_d

    #@204
    .line 293
    move-object/from16 v0, p0

    #@206
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@208
    move-object/from16 v17, v0

    #@20a
    move-object/from16 v0, v17

    #@20c
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20f
    move-result-object v9

    #@210
    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@212
    .line 294
    .local v9, "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@214
    move-object/from16 v17, v0

    #@216
    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@218
    move-object/from16 v18, v0

    #@21a
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@21d
    .line 295
    move-object/from16 v0, p0

    #@21f
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@221
    move-object/from16 v17, v0

    #@223
    move-object/from16 v0, v17

    #@225
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@228
    .line 291
    add-int/lit8 v7, v7, 0x1

    #@22a
    goto :goto_3

    #@22b
    .line 297
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_d
    const/16 v17, 0x1

    #@22d
    monitor-exit p0

    #@22e
    return v17

    #@22f
    .line 299
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_e
    const/16 v17, 0x0

    #@231
    monitor-exit p0

    #@232
    return v17

    #@233
    .line 301
    :cond_f
    :try_start_6
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@235
    move/from16 v17, v0

    #@237
    move/from16 v0, p2

    #@239
    move/from16 v1, v17

    #@23b
    if-gt v0, v1, :cond_12

    #@23d
    .line 305
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@23f
    move/from16 v17, v0

    #@241
    add-int/lit8 v17, v17, -0x1

    #@243
    const/16 v18, 0x1

    #@245
    move-object/from16 v0, p0

    #@247
    move/from16 v1, p1

    #@249
    move/from16 v2, v17

    #@24b
    move/from16 v3, v18

    #@24d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    #@250
    move-result v17

    #@251
    if-eqz v17, :cond_11

    #@253
    .line 306
    move/from16 v0, p1

    #@255
    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@257
    .line 307
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@259
    move/from16 v17, v0

    #@25b
    move/from16 v0, v17

    #@25d
    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@25f
    .line 309
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@261
    move-object/from16 v17, v0

    #@263
    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@265
    move-object/from16 v0, v18

    #@267
    move-object/from16 v1, p0

    #@269
    move/from16 v2, p1

    #@26b
    move/from16 v3, p2

    #@26d
    move-object/from16 v4, p3

    #@26f
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    #@272
    const/16 v19, 0x0

    #@274
    move-object/from16 v0, v17

    #@276
    move/from16 v1, v19

    #@278
    move-object/from16 v2, v18

    #@27a
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@27d
    .line 315
    add-int/lit8 v8, v14, 0x1

    #@27f
    .line 316
    .restart local v8    # "joinIndex":I
    move v7, v8

    #@280
    .restart local v7    # "i":I
    :goto_4
    if-gt v7, v5, :cond_10

    #@282
    .line 317
    move-object/from16 v0, p0

    #@284
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@286
    move-object/from16 v17, v0

    #@288
    move-object/from16 v0, v17

    #@28a
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28d
    move-result-object v9

    #@28e
    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@290
    .line 318
    .restart local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@292
    move-object/from16 v17, v0

    #@294
    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@296
    move-object/from16 v18, v0

    #@298
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@29b
    .line 319
    move-object/from16 v0, p0

    #@29d
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@29f
    move-object/from16 v17, v0

    #@2a1
    move-object/from16 v0, v17

    #@2a3
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@2a6
    .line 316
    add-int/lit8 v7, v7, 0x1

    #@2a8
    goto :goto_4

    #@2a9
    .line 321
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_10
    const/16 v17, 0x1

    #@2ab
    monitor-exit p0

    #@2ac
    return v17

    #@2ad
    .line 323
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_11
    const/16 v17, 0x0

    #@2af
    monitor-exit p0

    #@2b0
    return v17

    #@2b1
    .line 275
    :cond_12
    add-int/lit8 v5, v5, 0x1

    #@2b3
    goto/16 :goto_2

    #@2b5
    .line 330
    .end local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_13
    const/16 v17, 0x1

    #@2b7
    :try_start_7
    move-object/from16 v0, p0

    #@2b9
    move/from16 v1, p1

    #@2bb
    move/from16 v2, p2

    #@2bd
    move/from16 v3, v17

    #@2bf
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    #@2c2
    move-result v17

    #@2c3
    if-eqz v17, :cond_15

    #@2c5
    .line 331
    move/from16 v0, p1

    #@2c7
    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@2c9
    .line 332
    move/from16 v0, p2

    #@2cb
    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@2cd
    .line 334
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@2cf
    move-object/from16 v17, v0

    #@2d1
    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@2d3
    move-object/from16 v0, v18

    #@2d5
    move-object/from16 v1, p0

    #@2d7
    move/from16 v2, p1

    #@2d9
    move/from16 v3, p2

    #@2db
    move-object/from16 v4, p3

    #@2dd
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    #@2e0
    const/16 v19, 0x0

    #@2e2
    move-object/from16 v0, v17

    #@2e4
    move/from16 v1, v19

    #@2e6
    move-object/from16 v2, v18

    #@2e8
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@2eb
    .line 340
    add-int/lit8 v8, v14, 0x1

    #@2ed
    .line 341
    .restart local v8    # "joinIndex":I
    move v7, v8

    #@2ee
    .restart local v7    # "i":I
    :goto_5
    if-ge v7, v10, :cond_14

    #@2f0
    .line 343
    move-object/from16 v0, p0

    #@2f2
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@2f4
    move-object/from16 v17, v0

    #@2f6
    move-object/from16 v0, v17

    #@2f8
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2fb
    move-result-object v9

    #@2fc
    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@2fe
    .line 344
    .restart local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@300
    move-object/from16 v17, v0

    #@302
    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@304
    move-object/from16 v18, v0

    #@306
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@309
    .line 345
    move-object/from16 v0, p0

    #@30b
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@30d
    move-object/from16 v17, v0

    #@30f
    move-object/from16 v0, v17

    #@311
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@314
    .line 341
    add-int/lit8 v7, v7, 0x1

    #@316
    goto :goto_5

    #@317
    .line 347
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_14
    const/16 v17, 0x1

    #@319
    monitor-exit p0

    #@31a
    return v17

    #@31b
    .line 349
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_15
    const/16 v17, 0x0

    #@31d
    monitor-exit p0

    #@31e
    return v17

    #@31f
    .line 352
    .end local v5    # "endIndex":I
    :cond_16
    add-int/lit8 v17, p1, 0x1

    #@321
    :try_start_8
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@323
    move/from16 v18, v0

    #@325
    move/from16 v0, v17

    #@327
    move/from16 v1, v18

    #@329
    if-gt v0, v1, :cond_20

    #@32b
    .line 354
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@32d
    move/from16 v17, v0

    #@32f
    move/from16 v0, p2

    #@331
    move/from16 v1, v17

    #@333
    if-gt v0, v1, :cond_17

    #@335
    .line 357
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@337
    move-object/from16 v0, v17

    #@339
    move-object/from16 v1, p0

    #@33b
    move/from16 v2, p1

    #@33d
    move/from16 v3, p2

    #@33f
    move-object/from16 v4, p3

    #@341
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    #@344
    move-object/from16 v0, v17

    #@346
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@349
    .line 358
    const/16 v17, 0x1

    #@34b
    monitor-exit p0

    #@34c
    return v17

    #@34d
    .line 362
    :cond_17
    move v5, v14

    #@34e
    .line 363
    .restart local v5    # "endIndex":I
    add-int/lit8 v15, v14, 0x1

    #@350
    .local v15, "testIndex":I
    :goto_6
    if-ge v15, v10, :cond_18

    #@352
    .line 364
    :try_start_9
    move-object/from16 v0, p0

    #@354
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@356
    move-object/from16 v17, v0

    #@358
    move-object/from16 v0, v17

    #@35a
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35d
    move-result-object v16

    #@35e
    check-cast v16, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@360
    .line 365
    .local v16, "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, p2, 0x1

    #@362
    move-object/from16 v0, v16

    #@364
    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@366
    move/from16 v18, v0

    #@368
    move/from16 v0, v17

    #@36a
    move/from16 v1, v18

    #@36c
    if-ge v0, v1, :cond_19

    #@36e
    .line 372
    .end local v16    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_18
    if-ne v5, v14, :cond_1b

    #@370
    .line 376
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@372
    move/from16 v17, v0

    #@374
    add-int/lit8 v17, v17, 0x1

    #@376
    const/16 v18, 0x1

    #@378
    move-object/from16 v0, p0

    #@37a
    move/from16 v1, v17

    #@37c
    move/from16 v2, p2

    #@37e
    move/from16 v3, v18

    #@380
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    #@383
    move-result v17

    #@384
    if-eqz v17, :cond_1a

    #@386
    .line 377
    move/from16 v0, p2

    #@388
    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@38a
    .line 378
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@38c
    move-object/from16 v0, v17

    #@38e
    move-object/from16 v1, p0

    #@390
    move/from16 v2, p1

    #@392
    move/from16 v3, p2

    #@394
    move-object/from16 v4, p3

    #@396
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    #@399
    move-object/from16 v0, v17

    #@39b
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@39e
    .line 379
    const/16 v17, 0x1

    #@3a0
    monitor-exit p0

    #@3a1
    return v17

    #@3a2
    .line 368
    .restart local v16    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_19
    move v5, v15

    #@3a3
    .line 363
    add-int/lit8 v15, v15, 0x1

    #@3a5
    goto :goto_6

    #@3a6
    .line 381
    .end local v16    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1a
    const/16 v17, 0x0

    #@3a8
    monitor-exit p0

    #@3a9
    return v17

    #@3aa
    .line 385
    :cond_1b
    :try_start_a
    move-object/from16 v0, p0

    #@3ac
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@3ae
    move-object/from16 v17, v0

    #@3b0
    move-object/from16 v0, v17

    #@3b2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b5
    move-result-object v6

    #@3b6
    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@3b8
    .line 390
    .restart local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@3ba
    move/from16 v17, v0

    #@3bc
    move/from16 v0, p2

    #@3be
    move/from16 v1, v17

    #@3c0
    if-gt v0, v1, :cond_1c

    #@3c2
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    #@3c4
    move/from16 v17, v0

    #@3c6
    add-int/lit8 v11, v17, -0x1

    #@3c8
    .line 393
    .restart local v11    # "newRangeEndId":I
    :goto_7
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@3ca
    move/from16 v17, v0

    #@3cc
    add-int/lit8 v17, v17, 0x1

    #@3ce
    const/16 v18, 0x1

    #@3d0
    move-object/from16 v0, p0

    #@3d2
    move/from16 v1, v17

    #@3d4
    move/from16 v2, v18

    #@3d6
    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    #@3d9
    move-result v17

    #@3da
    if-eqz v17, :cond_1f

    #@3dc
    .line 394
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@3de
    move/from16 v17, v0

    #@3e0
    move/from16 v0, p2

    #@3e2
    move/from16 v1, v17

    #@3e4
    if-gt v0, v1, :cond_1d

    #@3e6
    iget v11, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@3e8
    .line 395
    :goto_8
    iput v11, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    #@3ea
    .line 397
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    #@3ec
    move-object/from16 v0, v17

    #@3ee
    move-object/from16 v1, p0

    #@3f0
    move/from16 v2, p1

    #@3f2
    move/from16 v3, p2

    #@3f4
    move-object/from16 v4, p3

    #@3f6
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    #@3f9
    move-object/from16 v0, v17

    #@3fb
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    #@3fe
    .line 403
    add-int/lit8 v8, v14, 0x1

    #@400
    .line 404
    .restart local v8    # "joinIndex":I
    move v7, v8

    #@401
    .restart local v7    # "i":I
    :goto_9
    if-gt v7, v5, :cond_1e

    #@403
    .line 405
    move-object/from16 v0, p0

    #@405
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@407
    move-object/from16 v17, v0

    #@409
    move-object/from16 v0, v17

    #@40b
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40e
    move-result-object v9

    #@40f
    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@411
    .line 406
    .restart local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@413
    move-object/from16 v17, v0

    #@415
    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    #@417
    move-object/from16 v18, v0

    #@419
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@41c
    .line 407
    move-object/from16 v0, p0

    #@41e
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@420
    move-object/from16 v17, v0

    #@422
    move-object/from16 v0, v17

    #@424
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@427
    .line 404
    add-int/lit8 v7, v7, 0x1

    #@429
    goto :goto_9

    #@42a
    .line 390
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11    # "newRangeEndId":I
    :cond_1c
    move/from16 v11, p2

    #@42c
    .restart local v11    # "newRangeEndId":I
    goto :goto_7

    #@42d
    .line 394
    :cond_1d
    move/from16 v11, p2

    #@42f
    goto :goto_8

    #@430
    .line 409
    .restart local v7    # "i":I
    .restart local v8    # "joinIndex":I
    :cond_1e
    const/16 v17, 0x1

    #@432
    monitor-exit p0

    #@433
    return v17

    #@434
    .line 411
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_1f
    const/16 v17, 0x0

    #@436
    monitor-exit p0

    #@437
    return v17

    #@438
    .line 206
    .end local v5    # "endIndex":I
    .end local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11    # "newRangeEndId":I
    .end local v15    # "testIndex":I
    :cond_20
    add-int/lit8 v14, v14, 0x1

    #@43a
    goto/16 :goto_0

    #@43c
    .line 419
    .end local v13    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_21
    const/16 v17, 0x1

    #@43e
    :try_start_b
    move-object/from16 v0, p0

    #@440
    move/from16 v1, p1

    #@442
    move/from16 v2, p2

    #@444
    move/from16 v3, v17

    #@446
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    #@449
    move-result v17

    #@44a
    if-eqz v17, :cond_22

    #@44c
    .line 420
    move-object/from16 v0, p0

    #@44e
    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@450
    move-object/from16 v17, v0

    #@452
    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    #@454
    move-object/from16 v0, v18

    #@456
    move-object/from16 v1, p0

    #@458
    move/from16 v2, p1

    #@45a
    move/from16 v3, p2

    #@45c
    move-object/from16 v4, p3

    #@45e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    #@461
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@464
    .line 421
    const/16 v17, 0x1

    #@466
    monitor-exit p0

    #@467
    return v17

    #@468
    .line 423
    :cond_22
    const/16 v17, 0x0

    #@46a
    monitor-exit p0

    #@46b
    return v17

    #@46c
    .end local v10    # "len":I
    .end local v14    # "startIndex":I
    :catchall_0
    move-exception v17

    #@46d
    monitor-exit p0

    #@46e
    throw v17
.end method

.method protected abstract finishUpdate()Z
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected abstract startUpdate()V
.end method

.method protected tryAddRanges(IIZ)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "selected"    # Z

    #@0
    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    #@3
    .line 602
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    #@6
    .line 604
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    #@9
    .line 605
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public updateRanges()Z
    .locals 1

    #@0
    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    #@3
    .line 588
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    #@6
    .line 589
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    #@9
    move-result v0

    #@a
    return v0
.end method
