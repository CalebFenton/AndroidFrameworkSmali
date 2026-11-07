.class public Landroid/icu/util/RuleBasedTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "RuleBasedTimeZone.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x693487808c366c3fL


# instance fields
.field private greylist-max-o finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

.field private greylist-max-o historicRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/TimeZoneRule;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o historicTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/TimeZoneTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o initialRule:Landroid/icu/util/InitialTimeZoneRule;

.field private volatile transient greylist-max-o isFrozen:Z

.field private transient greylist-max-o upToDate:Z


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "initialRule"    # Landroid/icu/util/InitialTimeZoneRule;

    .line 45
    invoke-direct {p0, p1}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    .line 735
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    .line 46
    iput-object p2, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    .line 47
    return-void
.end method

.method private greylist-max-o complete()V
    .registers 18

    .line 469
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/icu/util/RuleBasedTimeZone;->upToDate:Z

    if-eqz v1, :cond_7

    .line 471
    return-void

    .line 476
    :cond_7
    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v2

    if-eqz v1, :cond_13

    goto :goto_1b

    .line 477
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Incomplete final rules"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :cond_1b
    :goto_1b
    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v1, :cond_23

    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_1c9

    .line 482
    :cond_23
    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    .line 483
    .local v1, "curRule":Landroid/icu/util/TimeZoneRule;
    const-wide v3, -0x28ec76c40e65000L

    .line 487
    .local v3, "lastTransitionTime":J
    iget-object v5, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v5, :cond_104

    .line 488
    new-instance v5, Ljava/util/BitSet;

    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    move-wide v7, v3

    .line 491
    .end local v3    # "lastTransitionTime":J
    .local v5, "done":Ljava/util/BitSet;
    .local v7, "lastTransitionTime":J
    :goto_3a
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v9

    .line 492
    .local v9, "curStdOffset":I
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    .line 493
    .local v10, "curDstSavings":I
    const-wide v3, 0x28d47dbbf19b000L

    .line 494
    .local v3, "nextTransitionTime":J
    const/4 v6, 0x0

    .line 498
    .local v6, "nextRule":Landroid/icu/util/TimeZoneRule;
    const/4 v11, 0x0

    move-object v12, v6

    move v13, v11

    .end local v6    # "nextRule":Landroid/icu/util/TimeZoneRule;
    .local v12, "nextRule":Landroid/icu/util/TimeZoneRule;
    .local v13, "i":I
    :goto_4b
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v13, v6, :cond_9f

    .line 499
    invoke-virtual {v5, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 500
    goto :goto_9c

    .line 502
    :cond_5a
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/TimeZoneRule;

    .line 503
    .local v6, "r":Landroid/icu/util/TimeZoneRule;
    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/icu/util/TimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v11

    .line 504
    .local v11, "d":Ljava/util/Date;
    if-nez v11, :cond_6d

    .line 506
    invoke-virtual {v5, v13}, Ljava/util/BitSet;->set(I)V

    goto :goto_9c

    .line 508
    :cond_6d
    if-eq v6, v1, :cond_9c

    .line 509
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_92

    .line 510
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v15

    if-ne v14, v15, :cond_92

    .line 511
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    if-ne v14, v15, :cond_92

    .line 512
    goto :goto_9c

    .line 514
    :cond_92
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 515
    .local v14, "tt":J
    cmp-long v16, v14, v3

    if-gez v16, :cond_9c

    .line 516
    move-wide v3, v14

    .line 517
    move-object v12, v6

    .line 498
    .end local v6    # "r":Landroid/icu/util/TimeZoneRule;
    .end local v11    # "d":Ljava/util/Date;
    .end local v14    # "tt":J
    :cond_9c
    :goto_9c
    add-int/lit8 v13, v13, 0x1

    goto :goto_4b

    .line 522
    .end local v13    # "i":I
    :cond_9f
    if-nez v12, :cond_b9

    .line 524
    const/4 v6, 0x1

    .line 525
    .local v6, "bDoneAll":Z
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_a3
    iget-object v13, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_b6

    .line 526
    invoke-virtual {v5, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-nez v13, :cond_b3

    .line 527
    const/4 v6, 0x0

    .line 528
    goto :goto_b6

    .line 525
    :cond_b3
    add-int/lit8 v11, v11, 0x1

    goto :goto_a3

    .line 531
    .end local v11    # "j":I
    :cond_b6
    :goto_b6
    if-eqz v6, :cond_b9

    .line 532
    goto :goto_e9

    .line 536
    .end local v6    # "bDoneAll":Z
    :cond_b9
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v6, :cond_e6

    .line 538
    const/4 v6, 0x0

    move-object v13, v12

    move v12, v6

    .local v12, "i":I
    .local v13, "nextRule":Landroid/icu/util/TimeZoneRule;
    :goto_c0
    const/4 v6, 0x2

    if-ge v12, v6, :cond_e5

    .line 539
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v6, v6, v12

    if-ne v6, v1, :cond_ca

    .line 540
    goto :goto_e2

    .line 542
    :cond_ca
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v6, v6, v12

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v6

    .line 543
    .local v6, "d":Ljava/util/Date;
    if-eqz v6, :cond_e2

    .line 544
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 545
    .restart local v14    # "tt":J
    cmp-long v11, v14, v3

    if-gez v11, :cond_e2

    .line 546
    move-wide v3, v14

    .line 547
    iget-object v11, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v13, v11, v12

    .line 538
    .end local v6    # "d":Ljava/util/Date;
    .end local v14    # "tt":J
    :cond_e2
    :goto_e2
    add-int/lit8 v12, v12, 0x1

    goto :goto_c0

    :cond_e5
    move-object v12, v13

    .line 553
    .end local v13    # "nextRule":Landroid/icu/util/TimeZoneRule;
    .local v12, "nextRule":Landroid/icu/util/TimeZoneRule;
    :cond_e6
    if-nez v12, :cond_eb

    .line 555
    nop

    .line 566
    .end local v3    # "nextTransitionTime":J
    .end local v5    # "done":Ljava/util/BitSet;
    .end local v9    # "curStdOffset":I
    .end local v10    # "curDstSavings":I
    .end local v12    # "nextRule":Landroid/icu/util/TimeZoneRule;
    :goto_e9
    move-wide v4, v7

    goto :goto_105

    .line 558
    .restart local v3    # "nextTransitionTime":J
    .restart local v5    # "done":Ljava/util/BitSet;
    .restart local v9    # "curStdOffset":I
    .restart local v10    # "curDstSavings":I
    .restart local v12    # "nextRule":Landroid/icu/util/TimeZoneRule;
    :cond_eb
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v6, :cond_f6

    .line 559
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    .line 561
    :cond_f6
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    invoke-direct {v11, v3, v4, v1, v12}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    move-wide v7, v3

    .line 563
    move-object v1, v12

    .line 564
    .end local v3    # "nextTransitionTime":J
    .end local v9    # "curStdOffset":I
    .end local v10    # "curDstSavings":I
    .end local v12    # "nextRule":Landroid/icu/util/TimeZoneRule;
    goto/16 :goto_3a

    .line 487
    .end local v5    # "done":Ljava/util/BitSet;
    .end local v7    # "lastTransitionTime":J
    .local v3, "lastTransitionTime":J
    :cond_104
    move-wide v4, v3

    .line 566
    .end local v3    # "lastTransitionTime":J
    .local v4, "lastTransitionTime":J
    :goto_105
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v3, :cond_1c9

    .line 567
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v3, :cond_114

    .line 568
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    .line 571
    :cond_114
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v9, 0x0

    aget-object v3, v3, v9

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v10

    .line 572
    .local v10, "d0":Ljava/util/Date;
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v3, v3, v2

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    invoke-virtual/range {v3 .. v8}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v3

    .line 573
    .local v3, "d1":Ljava/util/Date;
    invoke-virtual {v3, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_183

    .line 574
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v7, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    iget-object v8, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v9

    invoke-direct {v7, v11, v12, v1, v8}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v11, v6, v2

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v14

    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v3

    .line 576
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v7, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    iget-object v8, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v9

    iget-object v9, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v9, v9, v2

    invoke-direct {v7, v11, v12, v8, v9}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c9

    .line 578
    :cond_183
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v7, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    iget-object v8, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v2

    invoke-direct {v7, v11, v12, v1, v8}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v11, v6, v9

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v14

    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v6

    .line 580
    .end local v10    # "d0":Ljava/util/Date;
    .local v6, "d0":Ljava/util/Date;
    iget-object v7, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v8, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    iget-object v12, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v12, v12, v2

    iget-object v13, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v9, v13, v9

    invoke-direct {v8, v10, v11, v12, v9}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    .end local v1    # "curRule":Landroid/icu/util/TimeZoneRule;
    .end local v3    # "d1":Ljava/util/Date;
    .end local v4    # "lastTransitionTime":J
    .end local v6    # "d0":Ljava/util/Date;
    :cond_1c9
    :goto_1c9
    iput-boolean v2, v0, Landroid/icu/util/RuleBasedTimeZone;->upToDate:Z

    .line 585
    return-void
.end method

.method private greylist-max-o findRuleInFinal(JZII)Landroid/icu/util/TimeZoneRule;
    .registers 19
    .param p1, "time"    # J
    .param p3, "local"    # Z
    .param p4, "NonExistingTimeOpt"    # I
    .param p5, "DuplicatedTimeOpt"    # I

    .line 634
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    array-length v0, v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d1

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_d1

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_1b

    goto/16 :goto_d1

    .line 642
    :cond_1b
    move-wide v4, p1

    .line 643
    .local v4, "base":J
    if-eqz p3, :cond_4a

    .line 644
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v6

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v7

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v2

    .line 645
    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v8

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v9

    .line 644
    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v6 .. v11}, Landroid/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v0

    .line 647
    .local v0, "localDelta":I
    int-to-long v6, v0

    sub-long/2addr v4, v6

    move-wide v7, v4

    goto :goto_4b

    .line 643
    .end local v0    # "localDelta":I
    :cond_4a
    move-wide v7, v4

    .line 649
    .end local v4    # "base":J
    .local v7, "base":J
    :goto_4b
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v6, v0, v2

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v9

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 651
    .local v0, "start0":Ljava/util/Date;
    move-wide v4, p1

    .line 652
    .end local v7    # "base":J
    .restart local v4    # "base":J
    if-eqz p3, :cond_93

    .line 653
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v6

    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v7

    iget-object v8, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v3

    .line 654
    invoke-virtual {v8}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v8

    iget-object v9, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v9

    .line 653
    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v6 .. v11}, Landroid/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v6

    .line 656
    .local v6, "localDelta":I
    int-to-long v7, v6

    sub-long/2addr v4, v7

    move-wide v8, v4

    goto :goto_94

    .line 652
    .end local v6    # "localDelta":I
    :cond_93
    move-wide v8, v4

    .line 658
    .end local v4    # "base":J
    .local v8, "base":J
    :goto_94
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v7, v4, v3

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v10

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v4

    .line 660
    .local v4, "start1":Ljava/util/Date;
    if-eqz v0, :cond_c2

    if-nez v4, :cond_b2

    goto :goto_c2

    .line 670
    :cond_b2
    invoke-virtual {v0, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v2

    goto :goto_c1

    :cond_bd
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v3

    :goto_c1
    return-object v1

    .line 661
    :cond_c2
    :goto_c2
    if-eqz v0, :cond_c9

    .line 662
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v2

    return-object v1

    .line 663
    :cond_c9
    if-eqz v4, :cond_d0

    .line 664
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v3

    return-object v1

    .line 667
    :cond_d0
    return-object v1

    .line 635
    .end local v0    # "start0":Ljava/util/Date;
    .end local v4    # "start1":Ljava/util/Date;
    .end local v8    # "base":J
    :cond_d1
    :goto_d1
    return-object v1
.end method

.method private static greylist-max-o getLocalDelta(IIIIII)I
    .registers 14
    .param p0, "rawBefore"    # I
    .param p1, "dstBefore"    # I
    .param p2, "rawAfter"    # I
    .param p3, "dstAfter"    # I
    .param p4, "NonExistingTimeOpt"    # I
    .param p5, "DuplicatedTimeOpt"    # I

    .line 692
    const/4 v0, 0x0

    .line 694
    .local v0, "delta":I
    add-int v1, p0, p1

    .line 695
    .local v1, "offsetBefore":I
    add-int v2, p2, p3

    .line 697
    .local v2, "offsetAfter":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_d

    if-nez p3, :cond_d

    move v5, v4

    goto :goto_e

    :cond_d
    move v5, v3

    .line 698
    .local v5, "dstToStd":Z
    :goto_e
    if-nez p1, :cond_13

    if-eqz p3, :cond_13

    move v3, v4

    .line 700
    .local v3, "stdToDst":Z
    :cond_13
    sub-int v6, v2, v1

    const/4 v7, 0x3

    if-ltz v6, :cond_3e

    .line 702
    and-int/lit8 v6, p4, 0x3

    if-ne v6, v4, :cond_1e

    if-nez v5, :cond_24

    :cond_1e
    and-int/lit8 v6, p4, 0x3

    if-ne v6, v7, :cond_26

    if-eqz v3, :cond_26

    .line 704
    :cond_24
    move v0, v1

    goto :goto_62

    .line 705
    :cond_26
    and-int/lit8 v6, p4, 0x3

    if-ne v6, v4, :cond_2c

    if-nez v3, :cond_32

    :cond_2c
    and-int/lit8 v4, p4, 0x3

    if-ne v4, v7, :cond_34

    if-eqz v5, :cond_34

    .line 707
    :cond_32
    move v0, v2

    goto :goto_62

    .line 708
    :cond_34
    and-int/lit8 v4, p4, 0xc

    const/16 v6, 0xc

    if-ne v4, v6, :cond_3c

    .line 709
    move v0, v1

    goto :goto_62

    .line 713
    :cond_3c
    move v0, v2

    goto :goto_62

    .line 717
    :cond_3e
    and-int/lit8 v6, p5, 0x3

    if-ne v6, v4, :cond_44

    if-nez v5, :cond_4a

    :cond_44
    and-int/lit8 v6, p5, 0x3

    if-ne v6, v7, :cond_4c

    if-eqz v3, :cond_4c

    .line 719
    :cond_4a
    move v0, v2

    goto :goto_62

    .line 720
    :cond_4c
    and-int/lit8 v6, p5, 0x3

    if-ne v6, v4, :cond_52

    if-nez v3, :cond_58

    :cond_52
    and-int/lit8 v4, p5, 0x3

    if-ne v4, v7, :cond_5a

    if-eqz v5, :cond_5a

    .line 722
    :cond_58
    move v0, v1

    goto :goto_62

    .line 723
    :cond_5a
    and-int/lit8 v4, p5, 0xc

    const/4 v6, 0x4

    if-ne v4, v6, :cond_61

    .line 724
    move v0, v1

    goto :goto_62

    .line 728
    :cond_61
    move v0, v2

    .line 731
    :goto_62
    return v0
.end method

.method private greylist-max-o getOffset(JZII[I)V
    .registers 20
    .param p1, "time"    # J
    .param p3, "local"    # Z
    .param p4, "NonExistingTimeOpt"    # I
    .param p5, "DuplicatedTimeOpt"    # I
    .param p6, "offsets"    # [I

    .line 591
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    .line 592
    const/4 v3, 0x0

    .line 593
    .local v3, "rule":Landroid/icu/util/TimeZoneRule;
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_13

    .line 594
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    goto :goto_76

    .line 596
    :cond_13
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/TimeZoneTransition;

    invoke-static {v4, v0, v1, v2}, Landroid/icu/util/RuleBasedTimeZone;->getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v7

    .line 598
    .local v7, "tstart":J
    cmp-long v4, p1, v7

    if-gez v4, :cond_26

    .line 599
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    goto :goto_76

    .line 601
    :cond_26
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    .line 602
    .local v4, "idx":I
    iget-object v9, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/util/TimeZoneTransition;

    invoke-static {v9, v0, v1, v2}, Landroid/icu/util/RuleBasedTimeZone;->getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v9

    .line 604
    .local v9, "tend":J
    cmp-long v11, p1, v9

    if-lez v11, :cond_54

    .line 605
    iget-object v11, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v11, :cond_45

    .line 606
    invoke-direct/range {p0 .. p5}, Landroid/icu/util/RuleBasedTimeZone;->findRuleInFinal(JZII)Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    .line 608
    :cond_45
    if-nez v3, :cond_76

    .line 611
    iget-object v11, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    goto :goto_76

    .line 615
    :cond_54
    :goto_54
    if-ltz v4, :cond_6a

    .line 616
    iget-object v11, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/util/TimeZoneTransition;

    invoke-static {v11, v0, v1, v2}, Landroid/icu/util/RuleBasedTimeZone;->getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v11

    cmp-long v11, p1, v11

    if-ltz v11, :cond_67

    .line 618
    goto :goto_6a

    .line 620
    :cond_67
    add-int/lit8 v4, v4, -0x1

    goto :goto_54

    .line 622
    :cond_6a
    :goto_6a
    iget-object v11, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    .line 626
    .end local v4    # "idx":I
    .end local v7    # "tstart":J
    .end local v9    # "tend":J
    :cond_76
    :goto_76
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    aput v4, p6, v6

    .line 627
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    aput v4, p6, v5

    .line 628
    return-void
.end method

.method private static greylist-max-o getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J
    .registers 13
    .param p0, "tzt"    # Landroid/icu/util/TimeZoneTransition;
    .param p1, "local"    # Z
    .param p2, "NonExistingTimeOpt"    # I
    .param p3, "DuplicatedTimeOpt"    # I

    .line 678
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    .line 679
    .local v0, "time":J
    if-eqz p1, :cond_2f

    .line 680
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    .line 681
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    .line 680
    move v7, p2

    move v8, p3

    .end local p2    # "NonExistingTimeOpt":I
    .end local p3    # "DuplicatedTimeOpt":I
    .local v7, "NonExistingTimeOpt":I
    .local v8, "DuplicatedTimeOpt":I
    invoke-static/range {v3 .. v8}, Landroid/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result p2

    int-to-long p2, p2

    add-long/2addr v0, p2

    goto :goto_31

    .line 679
    .end local v7    # "NonExistingTimeOpt":I
    .end local v8    # "DuplicatedTimeOpt":I
    .restart local p2    # "NonExistingTimeOpt":I
    .restart local p3    # "DuplicatedTimeOpt":I
    :cond_2f
    move v7, p2

    move v8, p3

    .line 684
    .end local p2    # "NonExistingTimeOpt":I
    .end local p3    # "DuplicatedTimeOpt":I
    .restart local v7    # "NonExistingTimeOpt":I
    .restart local v8    # "DuplicatedTimeOpt":I
    :goto_31
    return-wide v0
.end method


# virtual methods
.method public greylist-max-o addTransitionRule(Landroid/icu/util/TimeZoneRule;)V
    .registers 6
    .param p1, "rule"    # Landroid/icu/util/TimeZoneRule;

    .line 58
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_60

    .line 61
    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->isTransitionRule()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 64
    instance-of v0, p1, Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    move-object v0, p1

    check-cast v0, Landroid/icu/util/AnnualTimeZoneRule;

    .line 65
    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_45

    .line 67
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-nez v0, :cond_2e

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/util/AnnualTimeZoneRule;

    iput-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    .line 69
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    move-object v2, p1

    check-cast v2, Landroid/icu/util/AnnualTimeZoneRule;

    aput-object v2, v0, v1

    goto :goto_55

    .line 70
    :cond_2e
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_3d

    .line 71
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    move-object v3, p1

    check-cast v3, Landroid/icu/util/AnnualTimeZoneRule;

    aput-object v3, v0, v2

    goto :goto_55

    .line 74
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many final rules"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_45
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v0, :cond_50

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    .line 81
    :cond_50
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_55
    iput-boolean v1, p0, Landroid/icu/util/RuleBasedTimeZone;->upToDate:Z

    .line 86
    return-void

    .line 62
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rule must be a transition rule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen RuleBasedTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 456
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 457
    return-object p0

    .line 459
    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api cloneAsThawed()Landroid/icu/util/TimeZone;
    .registers 4

    .line 760
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/util/RuleBasedTimeZone;

    .line 761
    .local v0, "tz":Landroid/icu/util/RuleBasedTimeZone;
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v1, :cond_13

    .line 762
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    .line 764
    :cond_13
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_21

    .line 765
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, [Landroid/icu/util/AnnualTimeZoneRule;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/icu/util/AnnualTimeZoneRule;

    iput-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    .line 767
    :cond_21
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    .line 768
    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api freeze()Landroid/icu/util/TimeZone;
    .registers 2

    .line 750
    invoke-direct {p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    .line 752
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .registers 20
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    .line 324
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    .line 325
    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 326
    return-object v2

    .line 328
    :cond_b
    const/4 v1, 0x0

    .line 330
    .local v1, "isFinal":Z
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/TimeZoneTransition;

    .line 331
    .local v3, "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    .line 332
    .local v5, "tt":J
    cmp-long v7, v5, p1

    if-gtz v7, :cond_d3

    if-eqz p3, :cond_25

    cmp-long v7, v5, p1

    if-nez v7, :cond_25

    goto/16 :goto_d3

    .line 335
    :cond_25
    iget-object v7, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 336
    .local v7, "idx":I
    iget-object v9, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    check-cast v3, Landroid/icu/util/TimeZoneTransition;

    .line 337
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    .line 338
    if-eqz p3, :cond_43

    cmp-long v9, v5, p1

    if-nez v9, :cond_43

    .line 339
    move-object v8, v3

    .local v8, "result":Landroid/icu/util/TimeZoneTransition;
    goto/16 :goto_d4

    .line 340
    .end local v8    # "result":Landroid/icu/util/TimeZoneTransition;
    :cond_43
    cmp-long v9, v5, p1

    if-gtz v9, :cond_b0

    .line 341
    iget-object v9, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v9, :cond_af

    .line 343
    iget-object v9, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v10, v9, v4

    iget-object v9, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v9, v9, v8

    .line 344
    invoke-virtual {v9}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v13

    iget-object v9, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v14

    .line 343
    move-wide/from16 v11, p1

    move/from16 v15, p3

    invoke-virtual/range {v10 .. v15}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v9

    .line 345
    .local v9, "start0":Ljava/util/Date;
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v10, v10, v8

    iget-object v11, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v11, v11, v4

    .line 346
    invoke-virtual {v11}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v13

    iget-object v11, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v11, v11, v4

    invoke-virtual {v11}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v14

    .line 345
    move-wide/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v10

    .line 348
    .local v10, "start1":Ljava/util/Date;
    invoke-virtual {v10, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_9a

    .line 349
    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    iget-object v14, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v8, v14, v8

    iget-object v14, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v14, v14, v4

    invoke-direct {v11, v12, v13, v8, v14}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    move-object v3, v11

    .end local v3    # "tzt":Landroid/icu/util/TimeZoneTransition;
    .local v11, "tzt":Landroid/icu/util/TimeZoneTransition;
    goto :goto_ac

    .line 351
    .end local v11    # "tzt":Landroid/icu/util/TimeZoneTransition;
    .restart local v3    # "tzt":Landroid/icu/util/TimeZoneTransition;
    :cond_9a
    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    iget-object v14, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v14, v14, v4

    iget-object v15, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v8, v15, v8

    invoke-direct {v11, v12, v13, v14, v8}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    move-object v3, v11

    .line 353
    :goto_ac
    move-object v8, v3

    .line 354
    .restart local v8    # "result":Landroid/icu/util/TimeZoneTransition;
    const/4 v1, 0x1

    .line 355
    .end local v9    # "start0":Ljava/util/Date;
    .end local v10    # "start1":Ljava/util/Date;
    goto :goto_d4

    .line 356
    .end local v8    # "result":Landroid/icu/util/TimeZoneTransition;
    :cond_af
    return-object v2

    .line 360
    :cond_b0
    add-int/lit8 v7, v7, -0x1

    .line 361
    move-object v8, v3

    .line 362
    .local v8, "prev":Landroid/icu/util/TimeZoneTransition;
    :goto_b3
    if-lez v7, :cond_d1

    .line 363
    iget-object v9, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    check-cast v3, Landroid/icu/util/TimeZoneTransition;

    .line 364
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    .line 365
    cmp-long v9, v5, p1

    if-ltz v9, :cond_d1

    if-nez p3, :cond_cd

    cmp-long v9, v5, p1

    if-nez v9, :cond_cd

    .line 366
    goto :goto_d1

    .line 368
    :cond_cd
    add-int/lit8 v7, v7, -0x1

    .line 369
    move-object v8, v3

    goto :goto_b3

    .line 371
    :cond_d1
    :goto_d1
    move-object v9, v8

    .local v9, "result":Landroid/icu/util/TimeZoneTransition;
    goto :goto_d4

    .line 333
    .end local v7    # "idx":I
    .end local v8    # "prev":Landroid/icu/util/TimeZoneTransition;
    .end local v9    # "result":Landroid/icu/util/TimeZoneTransition;
    :cond_d3
    :goto_d3
    move-object v8, v3

    .line 375
    .local v8, "result":Landroid/icu/util/TimeZoneTransition;
    :goto_d4
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v7

    .line 376
    .local v7, "from":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v9

    .line 377
    .local v9, "to":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v10

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v11

    if-ne v10, v11, :cond_fb

    .line 378
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v11

    if-ne v10, v11, :cond_fb

    .line 380
    if-eqz v1, :cond_f3

    .line 381
    return-object v2

    .line 383
    :cond_f3
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, v4}, Landroid/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v8

    .line 386
    :cond_fb
    return-object v8
.end method

.method public whitelist test-api getOffset(IIIIII)I
    .registers 22
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "milliseconds"    # I

    .line 94
    if-nez p1, :cond_5

    .line 96
    rsub-int/lit8 v0, p2, 0x1

    .end local p2    # "year":I
    .local v0, "year":I
    goto :goto_7

    .line 94
    .end local v0    # "year":I
    .restart local p2    # "year":I
    :cond_5
    move/from16 v0, p2

    .line 98
    .end local p2    # "year":I
    .restart local v0    # "year":I
    :goto_7
    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    move/from16 v5, p6

    int-to-long v6, v5

    add-long v9, v3, v6

    .line 99
    .local v9, "time":J
    const/4 v3, 0x2

    new-array v14, v3, [I

    .line 100
    .local v14, "offsets":[I
    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v11, 0x1

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    .line 101
    const/4 v3, 0x0

    aget v3, v14, v3

    const/4 v4, 0x1

    aget v4, v14, v4

    add-int/2addr v3, v4

    return v3
.end method

.method public whitelist test-api getOffset(JZ[I)V
    .registers 12
    .param p1, "time"    # J
    .param p3, "local"    # Z
    .param p4, "offsets"    # [I

    .line 109
    const/4 v4, 0x4

    const/16 v5, 0xc

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    .end local p1    # "time":J
    .end local p3    # "local":Z
    .end local p4    # "offsets":[I
    .local v1, "time":J
    .local v3, "local":Z
    .local v6, "offsets":[I
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    .line 110
    return-void
.end method

.method public blacklist getOffsetFromLocal(JLandroid/icu/util/BasicTimeZone$LocalOption;Landroid/icu/util/BasicTimeZone$LocalOption;[I)V
    .registers 13
    .param p1, "date"    # J
    .param p3, "nonExistingTimeOpt"    # Landroid/icu/util/BasicTimeZone$LocalOption;
    .param p4, "duplicatedTimeOpt"    # Landroid/icu/util/BasicTimeZone$LocalOption;
    .param p5, "offsets"    # [I

    .line 118
    invoke-static {p3}, Landroid/icu/util/RuleBasedTimeZone;->getLocalOptionValue(Landroid/icu/util/BasicTimeZone$LocalOption;)I

    move-result v4

    .line 119
    .local v4, "nonExistingTimeOptVal":I
    invoke-static {p4}, Landroid/icu/util/RuleBasedTimeZone;->getLocalOptionValue(Landroid/icu/util/BasicTimeZone$LocalOption;)I

    move-result v5

    .line 120
    .local v5, "duplicatedTimeOptVal":I
    const/4 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v6, p5

    .end local p1    # "date":J
    .end local p5    # "offsets":[I
    .local v1, "date":J
    .local v6, "offsets":[I
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    .line 121
    return-void
.end method

.method public greylist-max-o getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .registers 17
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    .line 394
    invoke-direct {p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    .line 395
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 396
    return-object v1

    .line 399
    :cond_9
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZoneTransition;

    .line 400
    .local v0, "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    .line 401
    .local v3, "tt":J
    if-eqz p3, :cond_1f

    cmp-long v5, v3, p1

    if-nez v5, :cond_1f

    .line 402
    move-object v1, v0

    .local v1, "result":Landroid/icu/util/TimeZoneTransition;
    goto/16 :goto_ce

    .line 403
    .end local v1    # "result":Landroid/icu/util/TimeZoneTransition;
    :cond_1f
    cmp-long v5, v3, p1

    if-ltz v5, :cond_24

    .line 404
    return-object v1

    .line 406
    :cond_24
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    .line 407
    .local v1, "idx":I
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/icu/util/TimeZoneTransition;

    .line 408
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    .line 409
    if-eqz p3, :cond_43

    cmp-long v6, v3, p1

    if-nez v6, :cond_43

    .line 410
    move-object v5, v0

    move-object v1, v5

    .local v5, "result":Landroid/icu/util/TimeZoneTransition;
    goto/16 :goto_ce

    .line 411
    .end local v5    # "result":Landroid/icu/util/TimeZoneTransition;
    :cond_43
    cmp-long v6, v3, p1

    if-gez v6, :cond_ad

    .line 412
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v6, :cond_aa

    .line 414
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v7, v6, v2

    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v6, v6, v5

    .line 415
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v10

    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v11

    .line 414
    move-wide v8, p1

    move/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v6

    .line 416
    .local v6, "start0":Ljava/util/Date;
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v7, v7, v5

    iget-object v8, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v2

    .line 417
    invoke-virtual {v8}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v10

    iget-object v8, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v11

    .line 416
    move-wide v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v7

    .line 419
    .local v7, "start1":Ljava/util/Date;
    invoke-virtual {v7, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 420
    new-instance v8, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    iget-object v11, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v5, v11, v5

    iget-object v11, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v11, v11, v2

    invoke-direct {v8, v9, v10, v5, v11}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    move-object v0, v8

    .end local v0    # "tzt":Landroid/icu/util/TimeZoneTransition;
    .local v8, "tzt":Landroid/icu/util/TimeZoneTransition;
    goto :goto_aa

    .line 422
    .end local v8    # "tzt":Landroid/icu/util/TimeZoneTransition;
    .restart local v0    # "tzt":Landroid/icu/util/TimeZoneTransition;
    :cond_98
    new-instance v8, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    iget-object v11, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v11, v11, v2

    iget-object v12, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v5, v12, v5

    invoke-direct {v8, v9, v10, v11, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    move-object v0, v8

    .line 425
    .end local v6    # "start0":Ljava/util/Date;
    .end local v7    # "start1":Ljava/util/Date;
    :cond_aa
    :goto_aa
    move-object v5, v0

    move-object v1, v5

    .restart local v5    # "result":Landroid/icu/util/TimeZoneTransition;
    goto :goto_ce

    .line 428
    .end local v5    # "result":Landroid/icu/util/TimeZoneTransition;
    :cond_ad
    add-int/lit8 v1, v1, -0x1

    .line 429
    :goto_af
    if-ltz v1, :cond_cc

    .line 430
    iget-object v5, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/icu/util/TimeZoneTransition;

    .line 431
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    .line 432
    cmp-long v5, v3, p1

    if-ltz v5, :cond_cc

    if-eqz p3, :cond_c9

    cmp-long v5, v3, p1

    if-nez v5, :cond_c9

    .line 433
    goto :goto_cc

    .line 435
    :cond_c9
    add-int/lit8 v1, v1, -0x1

    goto :goto_af

    .line 437
    :cond_cc
    :goto_cc
    move-object v5, v0

    move-object v1, v5

    .line 441
    .local v1, "result":Landroid/icu/util/TimeZoneTransition;
    :goto_ce
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    .line 442
    .local v5, "from":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    .line 443
    .local v6, "to":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v7

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v8

    if-ne v7, v8, :cond_f2

    .line 444
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-ne v7, v8, :cond_f2

    .line 446
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8, v2}, Landroid/icu/util/RuleBasedTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v1

    .line 448
    :cond_f2
    return-object v1
.end method

.method public whitelist test-api getRawOffset()I
    .registers 5

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 131
    .local v0, "now":J
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 132
    .local v2, "offsets":[I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    .line 133
    aget v3, v2, v3

    return v3
.end method

.method public greylist-max-o getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .registers 8

    .line 289
    const/4 v0, 0x1

    .line 290
    .local v0, "size":I
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v1, :cond_c

    .line 291
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    :cond_c
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    .line 295
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v2

    if-eqz v1, :cond_1a

    .line 296
    add-int/lit8 v0, v0, 0x2

    goto :goto_1c

    .line 298
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 301
    :cond_1c
    :goto_1c
    new-array v1, v0, [Landroid/icu/util/TimeZoneRule;

    .line 302
    .local v1, "rules":[Landroid/icu/util/TimeZoneRule;
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 304
    const/4 v3, 0x1

    .line 305
    .local v3, "idx":I
    iget-object v5, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v5, :cond_40

    .line 306
    :goto_28
    iget-object v5, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v2

    if-ge v3, v5, :cond_40

    .line 307
    iget-object v5, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/TimeZoneRule;

    aput-object v5, v1, v3

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 310
    :cond_40
    iget-object v5, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v5, :cond_59

    .line 311
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "idx":I
    .local v5, "idx":I
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v6, v4

    aput-object v4, v1, v3

    .line 312
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v3, v3, v2

    if-eqz v3, :cond_58

    .line 313
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v2, v3, v2

    aput-object v2, v1, v5

    .line 316
    :cond_58
    move v3, v5

    .end local v5    # "idx":I
    .restart local v3    # "idx":I
    :cond_59
    return-object v1
.end method

.method public whitelist test-api hasSameRules(Landroid/icu/util/TimeZone;)Z
    .registers 11
    .param p1, "other"    # Landroid/icu/util/TimeZone;

    .line 227
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 228
    return v0

    .line 231
    :cond_4
    instance-of v1, p1, Landroid/icu/util/RuleBasedTimeZone;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 233
    return v2

    .line 235
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/icu/util/RuleBasedTimeZone;

    .line 238
    .local v1, "otherRBTZ":Landroid/icu/util/RuleBasedTimeZone;
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    iget-object v4, v1, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual {v3, v4}, Landroid/icu/util/InitialTimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 239
    return v2

    .line 243
    :cond_18
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v3, :cond_53

    iget-object v3, v1, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v3, :cond_53

    .line 244
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    array-length v4, v4

    if-ge v3, v4, :cond_52

    .line 245
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v3

    if-nez v4, :cond_33

    iget-object v4, v1, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v3

    if-nez v4, :cond_33

    .line 246
    goto :goto_4e

    .line 248
    :cond_33
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v3

    if-eqz v4, :cond_51

    iget-object v4, v1, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v3

    if-eqz v4, :cond_51

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v3

    iget-object v5, v1, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v5, v5, v3

    .line 249
    invoke-virtual {v4, v5}, Landroid/icu/util/AnnualTimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 250
    nop

    .line 244
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 253
    :cond_51
    return v2

    .line 244
    .end local v3    # "i":I
    :cond_52
    goto :goto_5c

    .line 255
    :cond_53
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-nez v3, :cond_b1

    iget-object v3, v1, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v3, :cond_5c

    goto :goto_b1

    .line 260
    :cond_5c
    :goto_5c
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v3, :cond_a6

    iget-object v3, v1, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v3, :cond_a6

    .line 261
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_73

    .line 262
    return v2

    .line 264
    :cond_73
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/TimeZoneRule;

    .line 265
    .local v4, "rule":Landroid/icu/util/TimeZoneRule;
    const/4 v5, 0x0

    .line 266
    .local v5, "foundSameRule":Z
    iget-object v6, v1, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/util/TimeZoneRule;

    .line 267
    .local v7, "orule":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v4, v7}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 268
    const/4 v5, 0x1

    .line 269
    goto :goto_a1

    .line 271
    .end local v7    # "orule":Landroid/icu/util/TimeZoneRule;
    :cond_a0
    goto :goto_8c

    .line 272
    :cond_a1
    :goto_a1
    if-nez v5, :cond_a4

    .line 273
    return v2

    .line 275
    .end local v4    # "rule":Landroid/icu/util/TimeZoneRule;
    .end local v5    # "foundSameRule":Z
    :cond_a4
    goto :goto_79

    :cond_a5
    goto :goto_af

    .line 276
    :cond_a6
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v3, :cond_b0

    iget-object v3, v1, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v3, :cond_af

    goto :goto_b0

    .line 279
    :cond_af
    :goto_af
    return v0

    .line 277
    :cond_b0
    :goto_b0
    return v2

    .line 256
    :cond_b1
    :goto_b1
    return v2
.end method

.method public whitelist test-api inDaylightTime(Ljava/util/Date;)Z
    .registers 6
    .param p1, "date"    # Ljava/util/Date;

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 142
    .local v0, "offsets":[I
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    .line 143
    const/4 v1, 0x1

    aget v2, v0, v1

    if-eqz v2, :cond_11

    move v3, v1

    :cond_11
    return v3
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 742
    iget-boolean v0, p0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    return v0
.end method

.method public whitelist test-api observesDaylightTime()Z
    .registers 11

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 187
    .local v0, "time":J
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 188
    .local v2, "offsets":[I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    .line 189
    const/4 v4, 0x1

    aget v5, v2, v4

    if-eqz v5, :cond_11

    .line 190
    return v4

    .line 194
    :cond_11
    iget-object v5, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-nez v5, :cond_17

    const/4 v5, 0x0

    goto :goto_1f

    :cond_17
    new-instance v5, Ljava/util/BitSet;

    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    .line 196
    .local v5, "checkFinals":Ljava/util/BitSet;
    :goto_1f
    invoke-virtual {p0, v0, v1, v3}, Landroid/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v6

    .line 197
    .local v6, "tt":Landroid/icu/util/TimeZoneTransition;
    if-nez v6, :cond_26

    .line 199
    goto :goto_53

    .line 201
    :cond_26
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v7

    .line 202
    .local v7, "toRule":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-eqz v8, :cond_31

    .line 203
    return v4

    .line 205
    :cond_31
    if-eqz v5, :cond_54

    .line 207
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_34
    iget-object v9, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    array-length v9, v9

    if-ge v8, v9, :cond_49

    .line 208
    iget-object v9, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v9, v9, v8

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_46

    .line 209
    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    .line 207
    :cond_46
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 212
    .end local v8    # "i":I
    :cond_49
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v8

    iget-object v9, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    array-length v9, v9

    if-ne v8, v9, :cond_54

    .line 214
    nop

    .line 219
    .end local v6    # "tt":Landroid/icu/util/TimeZoneTransition;
    .end local v7    # "toRule":Landroid/icu/util/TimeZoneRule;
    :goto_53
    return v3

    .line 217
    .restart local v6    # "tt":Landroid/icu/util/TimeZoneTransition;
    .restart local v7    # "toRule":Landroid/icu/util/TimeZoneRule;
    :cond_54
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    .line 218
    .end local v6    # "tt":Landroid/icu/util/TimeZoneTransition;
    .end local v7    # "toRule":Landroid/icu/util/TimeZoneRule;
    goto :goto_1f
.end method

.method public whitelist test-api setRawOffset(I)V
    .registers 4
    .param p1, "offsetMillis"    # I

    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setRawOffset in RuleBasedTimeZone is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api useDaylightTime()Z
    .registers 8

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 166
    .local v0, "now":J
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 167
    .local v2, "offsets":[I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    .line 168
    const/4 v4, 0x1

    aget v5, v2, v4

    if-eqz v5, :cond_11

    .line 169
    return v4

    .line 172
    :cond_11
    invoke-virtual {p0, v0, v1, v3}, Landroid/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v5

    .line 173
    .local v5, "tt":Landroid/icu/util/TimeZoneTransition;
    if-eqz v5, :cond_22

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-eqz v6, :cond_22

    .line 174
    return v4

    .line 176
    :cond_22
    return v3
.end method
