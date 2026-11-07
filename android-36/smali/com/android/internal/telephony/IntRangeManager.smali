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


# instance fields
.field private greylist-max-r mRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist populateAllRanges()V
    .registers 7

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1a

    .line 640
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 641
    iget v4, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    iget v3, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    goto :goto_7

    :cond_1a
    return-void
.end method


# virtual methods
.method protected abstract blacklist addRange(IIZ)V
.end method

.method public declared-synchronized blacklist clearRanges()V
    .registers 2

    monitor-enter p0

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 197
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized blacklist disableRange(IILjava/lang/String;)Z
    .registers 16

    monitor-enter p0

    .line 454
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_11f

    .line 457
    iget-object v3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 458
    iget v4, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_50

    if-ge p1, v4, :cond_19

    .line 459
    monitor-exit p0

    return v1

    .line 460
    :cond_19
    :try_start_19
    iget v4, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v4, :cond_11b

    .line 463
    iget-object v4, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 466
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_55

    .line 468
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 469
    iget v4, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v4, p1, :cond_53

    iget p1, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne p1, p2, :cond_53

    iget-object p1, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 472
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 473
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result p1
    :try_end_45
    .catchall {:try_start_19 .. :try_end_45} :catchall_50

    if-eqz p1, :cond_49

    .line 474
    monitor-exit p0

    return v6

    .line 477
    :cond_49
    :try_start_49
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_50

    .line 478
    monitor-exit p0

    return v1

    :catchall_50
    move-exception p1

    goto/16 :goto_121

    .line 481
    :cond_53
    monitor-exit p0

    return v1

    :cond_55
    const/high16 v7, -0x80000000

    move v8, v1

    :goto_58
    if-ge v8, v5, :cond_11b

    .line 496
    :try_start_5a
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 497
    iget v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v10, p1, :cond_112

    iget v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne v10, p2, :cond_112

    iget-object v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {v10, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_112

    add-int/lit8 p1, v5, -0x1

    if-ne v8, p1, :cond_93

    .line 500
    iget p1, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-ne p1, v7, :cond_7d

    .line 503
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_7b
    .catchall {:try_start_5a .. :try_end_7b} :catchall_50

    .line 504
    monitor-exit p0

    return v6

    .line 507
    :cond_7d
    :try_start_7d
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 508
    iput v7, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 509
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result p1
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_50

    if-eqz p1, :cond_8a

    .line 510
    monitor-exit p0

    return v6

    .line 512
    :cond_8a
    :try_start_8a
    invoke-virtual {v4, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 513
    iget p1, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iput p1, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_50

    .line 514
    monitor-exit p0

    return v1

    .line 522
    :cond_93
    :try_start_93
    new-instance p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {p1, p0, v3, v8}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    if-nez v8, :cond_b4

    .line 530
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    iget p3, p3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    .line 531
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-eq p3, v0, :cond_aa

    .line 533
    iput p3, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move p3, v6

    goto :goto_ab

    :cond_aa
    move p3, v1

    .line 536
    :goto_ab
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    iget v7, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    goto :goto_b5

    :cond_b4
    move p3, v1

    .line 543
    :goto_b5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v8, v6

    :goto_bb
    if-ge v8, v5, :cond_ea

    .line 547
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 548
    iget v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    add-int/lit8 v11, v7, 0x1

    if-le v10, v11, :cond_d5

    .line 550
    iput v7, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 551
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {p1, p0, v9}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    move p3, v6

    goto :goto_e2

    .line 554
    :cond_d5
    iget v10, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iget v11, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ge v10, v11, :cond_dd

    .line 555
    iput v11, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 557
    :cond_dd
    iget-object v10, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    :goto_e2
    iget v9, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-le v9, v7, :cond_e7

    move v7, v9

    :cond_e7
    add-int/lit8 v8, v8, 0x1

    goto :goto_bb

    :cond_ea
    if-ge v7, p2, :cond_ef

    .line 567
    iput v7, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move p3, v6

    .line 569
    :cond_ef
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 573
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    if-eqz p3, :cond_110

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result p1

    if-nez p1, :cond_110

    .line 576
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 577
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_10e
    .catchall {:try_start_93 .. :try_end_10e} :catchall_50

    .line 578
    monitor-exit p0

    return v1

    .line 581
    :cond_110
    monitor-exit p0

    return v6

    .line 584
    :cond_112
    :try_start_112
    iget v9, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I
    :try_end_114
    .catchall {:try_start_112 .. :try_end_114} :catchall_50

    if-le v9, v7, :cond_117

    move v7, v9

    :cond_117
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_58

    :cond_11b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 592
    :cond_11f
    monitor-exit p0

    return v1

    :goto_121
    :try_start_121
    monitor-exit p0
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_50

    throw p1
.end method

.method public declared-synchronized blacklist enableRange(IILjava/lang/String;)Z
    .registers 15

    monitor-enter p0

    .line 210
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_22

    .line 214
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 216
    monitor-exit p0

    return v2

    :catchall_1d
    move-exception p1

    goto/16 :goto_212

    .line 218
    :cond_20
    monitor-exit p0

    return v1

    :cond_22
    move v3, v1

    :goto_23
    if-ge v3, v0, :cond_1fe

    .line 223
    :try_start_25
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 224
    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-lt p1, v5, :cond_3f

    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v6, :cond_3f

    .line 229
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_1d

    .line 230
    monitor-exit p0

    return v2

    :cond_3f
    add-int/lit8 v6, p1, -0x1

    .line 231
    :try_start_41
    iget v7, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-ne v6, v7, :cond_8b

    add-int/2addr v3, v2

    const/4 v5, 0x0

    if-ge v3, v0, :cond_60

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 238
    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    add-int/lit8 v6, v3, -0x1

    if-gt v6, p2, :cond_60

    .line 240
    iget v5, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v5, :cond_5e

    sub-int/2addr v3, v2

    :goto_5c
    move-object v5, v0

    goto :goto_61

    :cond_5e
    move v3, p2

    goto :goto_5c

    :cond_60
    move v3, p2

    .line 249
    :goto_61
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 250
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 251
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    if-eqz v5, :cond_87

    .line 255
    iget p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iget p2, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-ge p1, p2, :cond_7b

    .line 257
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 259
    :cond_7b
    iget-object p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object p2, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 260
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_87
    .catchall {:try_start_41 .. :try_end_87} :catchall_1d

    .line 262
    :cond_87
    monitor-exit p0

    return v2

    .line 264
    :cond_89
    monitor-exit p0

    return v1

    :cond_8b
    if-ge p1, v5, :cond_16e

    add-int/lit8 v6, p2, 0x1

    if-ge v6, v5, :cond_a5

    .line 273
    :try_start_91
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_a1
    .catchall {:try_start_91 .. :try_end_a1} :catchall_1d

    .line 275
    monitor-exit p0

    return v2

    .line 277
    :cond_a3
    monitor-exit p0

    return v1

    :cond_a5
    if-gt p2, v7, :cond_be

    sub-int/2addr v5, v2

    .line 282
    :try_start_a8
    invoke-virtual {p0, p1, v5, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 283
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 284
    iget-object v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_ba
    .catchall {:try_start_a8 .. :try_end_ba} :catchall_1d

    .line 285
    monitor-exit p0

    return v2

    .line 287
    :cond_bc
    monitor-exit p0

    return v1

    :cond_be
    add-int/2addr v3, v2

    move v5, v3

    :goto_c0
    if-ge v5, v0, :cond_13c

    .line 292
    :try_start_c2
    iget-object v7, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 293
    iget v8, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-ge v6, v8, :cond_100

    .line 296
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 297
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 298
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 300
    iget-object v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p1, v3

    :goto_e3
    if-ge p1, v5, :cond_fc

    .line 309
    iget-object p2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 310
    iget-object p3, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 311
    iget-object p3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_f9
    .catchall {:try_start_c2 .. :try_end_f9} :catchall_1d

    add-int/lit8 p1, p1, 0x1

    goto :goto_e3

    .line 313
    :cond_fc
    monitor-exit p0

    return v2

    .line 315
    :cond_fe
    monitor-exit p0

    return v1

    .line 317
    :cond_100
    :try_start_100
    iget v9, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v9, :cond_139

    sub-int/2addr v8, v2

    .line 321
    invoke-virtual {p0, p1, v8, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 322
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 323
    iget v0, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iput v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 325
    iget-object v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p1, v3

    :goto_11c
    if-gt p1, v5, :cond_135

    .line 333
    iget-object p2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 334
    iget-object p3, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 335
    iget-object p3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_132
    .catchall {:try_start_100 .. :try_end_132} :catchall_1d

    add-int/lit8 p1, p1, 0x1

    goto :goto_11c

    .line 337
    :cond_135
    monitor-exit p0

    return v2

    .line 339
    :cond_137
    monitor-exit p0

    return v1

    :cond_139
    add-int/lit8 v5, v5, 0x1

    goto :goto_c0

    .line 346
    :cond_13c
    :try_start_13c
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v5

    if-eqz v5, :cond_16c

    .line 347
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 348
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 350
    iget-object v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p1, v3

    :goto_151
    if-ge p1, v0, :cond_16a

    .line 359
    iget-object p2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 360
    iget-object p3, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 361
    iget-object p3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_167
    .catchall {:try_start_13c .. :try_end_167} :catchall_1d

    add-int/lit8 p1, p1, 0x1

    goto :goto_151

    .line 363
    :cond_16a
    monitor-exit p0

    return v2

    .line 365
    :cond_16c
    monitor-exit p0

    return v1

    :cond_16e
    add-int/lit8 v5, p1, 0x1

    if-gt v5, v7, :cond_1fa

    if-gt p2, v7, :cond_17e

    .line 373
    :try_start_174
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_17c
    .catchall {:try_start_174 .. :try_end_17c} :catchall_1d

    .line 374
    monitor-exit p0

    return v2

    :cond_17e
    add-int/lit8 v5, v3, 0x1

    move v7, v3

    move v6, v5

    :goto_182
    if-ge v6, v0, :cond_199

    .line 380
    :try_start_184
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    add-int/lit8 v9, p2, 0x1

    .line 381
    iget v8, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-ge v9, v8, :cond_193

    goto :goto_199

    :cond_193
    add-int/lit8 v7, v6, 0x1

    move v10, v7

    move v7, v6

    move v6, v10

    goto :goto_182

    :cond_199
    :goto_199
    if-ne v7, v3, :cond_1b2

    .line 392
    iget v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 393
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 394
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_1ae
    .catchall {:try_start_184 .. :try_end_1ae} :catchall_1d

    .line 395
    monitor-exit p0

    return v2

    .line 397
    :cond_1b0
    monitor-exit p0

    return v1

    .line 401
    :cond_1b2
    :try_start_1b2
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 406
    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v3, :cond_1c2

    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    sub-int/2addr v3, v2

    goto :goto_1c3

    :cond_1c2
    move v3, p2

    .line 409
    :goto_1c3
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v6, v3, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v3

    if-eqz v3, :cond_1f8

    .line 410
    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v0, :cond_1d1

    goto :goto_1d2

    :cond_1d1
    move v0, p2

    .line 411
    :goto_1d2
    iput v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 413
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    move p1, v5

    :goto_1dd
    if-gt p1, v7, :cond_1f6

    .line 421
    iget-object p2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 422
    iget-object p3, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 423
    iget-object p3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1f3
    .catchall {:try_start_1b2 .. :try_end_1f3} :catchall_1d

    add-int/lit8 p1, p1, 0x1

    goto :goto_1dd

    .line 425
    :cond_1f6
    monitor-exit p0

    return v2

    .line 427
    :cond_1f8
    monitor-exit p0

    return v1

    :cond_1fa
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_23

    .line 435
    :cond_1fe
    :try_start_1fe
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_210

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20e
    .catchall {:try_start_1fe .. :try_end_20e} :catchall_1d

    .line 437
    monitor-exit p0

    return v2

    .line 439
    :cond_210
    monitor-exit p0

    return v1

    :goto_212
    :try_start_212
    monitor-exit p0
    :try_end_213
    .catchall {:try_start_212 .. :try_end_213} :catchall_1d

    throw p1
.end method

.method protected abstract blacklist finishUpdate()Z
.end method

.method public blacklist isEmpty()Z
    .registers 1

    .line 629
    iget-object p0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method protected abstract blacklist startUpdate()V
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 688
    iget-object p0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/IntRangeManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected blacklist tryAddRanges(IIZ)Z
    .registers 4

    .line 617
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 618
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 620
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 621
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result p0

    return p0
.end method

.method public blacklist updateRanges()Z
    .registers 1

    .line 602
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 604
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 605
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result p0

    return p0
.end method
