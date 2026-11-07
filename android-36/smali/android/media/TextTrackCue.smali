.class Landroid/media/TextTrackCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "WebVttRenderer.java"


# static fields
.field static final greylist-max-o ALIGNMENT_END:I = 0xca

.field static final greylist-max-o ALIGNMENT_LEFT:I = 0xcb

.field static final greylist-max-o ALIGNMENT_MIDDLE:I = 0xc8

.field static final greylist-max-o ALIGNMENT_RIGHT:I = 0xcc

.field static final greylist-max-o ALIGNMENT_START:I = 0xc9

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TTCue"

.field static final greylist-max-o WRITING_DIRECTION_HORIZONTAL:I = 0x64

.field static final greylist-max-o WRITING_DIRECTION_VERTICAL_LR:I = 0x66

.field static final greylist-max-o WRITING_DIRECTION_VERTICAL_RL:I = 0x65


# instance fields
.field greylist-max-o mAlignment:I

.field greylist-max-o mAutoLinePosition:Z

.field greylist-max-o mId:Ljava/lang/String;

.field greylist-max-o mLinePosition:Ljava/lang/Integer;

.field greylist-max-o mLines:[[Landroid/media/TextTrackCueSpan;

.field greylist-max-o mPauseOnExit:Z

.field greylist-max-o mRegion:Landroid/media/TextTrackRegion;

.field greylist-max-o mRegionId:Ljava/lang/String;

.field greylist-max-o mSize:I

.field greylist-max-o mSnapToLines:Z

.field greylist-max-o mStrings:[Ljava/lang/String;

.field greylist-max-o mTextPosition:I

.field greylist-max-o mWritingDirection:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 4

    .line 407
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    .line 408
    const-string v0, ""

    iput-object v0, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    .line 409
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    .line 410
    const/16 v1, 0x64

    iput v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 411
    iput-object v0, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 414
    const/16 v2, 0x32

    iput v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 415
    iput v1, p0, Landroid/media/TextTrackCue;->mSize:I

    .line 416
    const/16 v1, 0xc8

    iput v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    .line 417
    iput-object v0, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 418
    iput-object v0, p0, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 419
    return-void
.end method


# virtual methods
.method public greylist-max-o appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 20
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 483
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    const-string v3, "null"

    if-nez v2, :cond_f

    .line 484
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8e

    .line 486
    :cond_f
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const/4 v2, 0x1

    .line 488
    .local v2, "first":Z
    iget-object v4, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v5, :cond_87

    aget-object v8, v4, v7

    .line 489
    .local v8, "spans":[Landroid/media/TextTrackCueSpan;
    if-nez v2, :cond_24

    .line 490
    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_24
    if-nez v8, :cond_2f

    .line 493
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v2

    move-object v6, v3

    move-object/from16 v17, v4

    goto :goto_80

    .line 495
    :cond_2f
    const-string v9, "\""

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const/4 v10, 0x1

    .line 497
    .local v10, "innerFirst":Z
    const-wide/16 v11, -0x1

    .line 498
    .local v11, "lastTimestamp":J
    array-length v13, v8

    const/4 v14, 0x0

    :goto_39
    if-ge v14, v13, :cond_78

    aget-object v15, v8, v14

    .line 499
    .local v15, "span":Landroid/media/TextTrackCueSpan;
    if-nez v10, :cond_44

    .line 500
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_44
    move/from16 v16, v2

    move-object v6, v3

    .end local v2    # "first":Z
    .local v16, "first":Z
    iget-wide v2, v15, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v2, v2, v11

    if-eqz v2, :cond_68

    .line 503
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v17, v4

    iget-wide v3, v15, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 504
    invoke-static {v3, v4}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 506
    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-wide v2, v15, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    move-wide v11, v2

    .end local v11    # "lastTimestamp":J
    .local v2, "lastTimestamp":J
    goto :goto_6a

    .line 502
    .end local v2    # "lastTimestamp":J
    .restart local v11    # "lastTimestamp":J
    :cond_68
    move-object/from16 v17, v4

    .line 509
    :goto_6a
    iget-object v2, v15, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const/4 v10, 0x0

    .line 498
    .end local v15    # "span":Landroid/media/TextTrackCueSpan;
    add-int/lit8 v14, v14, 0x1

    move-object v3, v6

    move/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_39

    .line 512
    .end local v16    # "first":Z
    .local v2, "first":Z
    :cond_78
    move/from16 v16, v2

    move-object v6, v3

    move-object/from16 v17, v4

    .end local v2    # "first":Z
    .restart local v16    # "first":Z
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .end local v10    # "innerFirst":Z
    .end local v11    # "lastTimestamp":J
    :goto_80
    const/4 v2, 0x0

    .line 488
    .end local v8    # "spans":[Landroid/media/TextTrackCueSpan;
    .end local v16    # "first":Z
    .restart local v2    # "first":Z
    add-int/lit8 v7, v7, 0x1

    move-object v3, v6

    move-object/from16 v4, v17

    goto :goto_19

    .line 516
    :cond_87
    move/from16 v16, v2

    .end local v2    # "first":Z
    .restart local v16    # "first":Z
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .end local v16    # "first":Z
    :goto_8e
    return-object v1
.end method

.method public greylist-max-o appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 9
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 459
    iget-object v0, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    const-string v1, "null"

    if-nez v0, :cond_a

    .line 460
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 462
    :cond_a
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const/4 v0, 0x1

    .line 464
    .local v0, "first":Z
    iget-object v2, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_34

    aget-object v5, v2, v4

    .line 465
    .local v5, "s":Ljava/lang/String;
    if-nez v0, :cond_1f

    .line 466
    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_1f
    if-nez v5, :cond_25

    .line 469
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 471
    :cond_25
    const-string v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :goto_30
    const/4 v0, 0x0

    .line 464
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 477
    :cond_34
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .end local v0    # "first":Z
    :goto_39
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 423
    instance-of v0, p1, Landroid/media/TextTrackCue;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 424
    return v1

    .line 426
    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    .line 427
    return v0

    .line 431
    :cond_a
    :try_start_a
    move-object v2, p1

    check-cast v2, Landroid/media/TextTrackCue;

    .line 432
    .local v2, "cue":Landroid/media/TextTrackCue;
    iget-object v3, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    iget-boolean v3, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    iget-boolean v4, v2, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    if-ne v3, v4, :cond_6f

    iget v3, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    iget v4, v2, Landroid/media/TextTrackCue;->mWritingDirection:I

    if-ne v3, v4, :cond_6f

    iget-object v3, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 435
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    iget-boolean v3, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    iget-boolean v4, v2, Landroid/media/TextTrackCue;->mSnapToLines:Z

    if-ne v3, v4, :cond_6f

    iget-boolean v3, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    iget-boolean v4, v2, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-ne v3, v4, :cond_6f

    iget-boolean v3, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-nez v3, :cond_53

    iget-object v3, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    iget-object v4, v2, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 439
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    :cond_4b
    iget-object v3, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v3, :cond_6f

    iget-object v3, v2, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v3, :cond_6f

    :cond_53
    iget v3, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    iget v4, v2, Landroid/media/TextTrackCue;->mTextPosition:I

    if-ne v3, v4, :cond_6f

    iget v3, p0, Landroid/media/TextTrackCue;->mSize:I

    iget v4, v2, Landroid/media/TextTrackCue;->mSize:I

    if-ne v3, v4, :cond_6f

    iget v3, p0, Landroid/media/TextTrackCue;->mAlignment:I

    iget v4, v2, Landroid/media/TextTrackCue;->mAlignment:I

    if-ne v3, v4, :cond_6f

    iget-object v3, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v3, v3

    iget-object v4, v2, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v4, v4

    if-ne v3, v4, :cond_6f

    move v3, v0

    goto :goto_70

    :cond_6f
    move v3, v1

    .line 445
    .local v3, "res":Z
    :goto_70
    if-ne v3, v0, :cond_8a

    .line 446
    const/4 v0, 0x0

    .local v0, "line":I
    :goto_73
    iget-object v4, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v4, v4

    if-ge v0, v4, :cond_8a

    .line 447
    iget-object v4, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v4, v4, v0

    iget-object v5, v2, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v5, v5, v0

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4
    :try_end_84
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_a .. :try_end_84} :catch_8b

    if-nez v4, :cond_87

    .line 448
    return v1

    .line 446
    :cond_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 452
    .end local v0    # "line":I
    :cond_8a
    return v3

    .line 453
    .end local v2    # "cue":Landroid/media/TextTrackCue;
    .end local v3    # "res":Z
    :catch_8b
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/IncompatibleClassChangeError;
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 552
    invoke-virtual {p0}, Landroid/media/TextTrackCue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o onTime(J)V
    .registers 13
    .param p1, "timeMs"    # J

    .line 557
    iget-object v0, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_20

    aget-object v4, v0, v3

    .line 558
    .local v4, "line":[Landroid/media/TextTrackCueSpan;
    array-length v5, v4

    move v6, v2

    :goto_b
    if-ge v6, v5, :cond_1d

    aget-object v7, v4, v6

    .line 559
    .local v7, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v8, v7, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v8, p1, v8

    if-ltz v8, :cond_17

    const/4 v8, 0x1

    goto :goto_18

    :cond_17
    move v8, v2

    :goto_18
    iput-boolean v8, v7, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    .line 558
    .end local v7    # "span":Landroid/media/TextTrackCueSpan;
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 557
    .end local v4    # "line":[Landroid/media/TextTrackCueSpan;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 562
    :cond_20
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .local v0, "res":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    invoke-static {v1, v2}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 525
    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    invoke-static {v2, v3}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 526
    const-string v2, " {id:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 527
    const-string v2, "\", pauseOnExit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 528
    const-string v2, ", direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 529
    iget v2, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x64

    const-string v4, "INVALID"

    if-ne v2, v3, :cond_48

    const-string v2, "horizontal"

    goto :goto_5b

    .line 530
    :cond_48
    iget v2, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x66

    if-ne v2, v3, :cond_51

    const-string v2, "vertical_lr"

    goto :goto_5b

    .line 531
    :cond_51
    iget v2, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_5a

    const-string v2, "vertical_rl"

    goto :goto_5b

    .line 532
    :cond_5a
    move-object v2, v4

    .line 529
    :goto_5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 533
    const-string v2, ", regionId:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 534
    const-string v2, "\", snapToLines:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 535
    const-string v2, ", linePosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-eqz v2, :cond_84

    const-string v2, "auto"

    goto :goto_86

    .line 536
    :cond_84
    iget-object v2, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 535
    :goto_86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 537
    const-string v2, ", textPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 538
    const-string v2, ", size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/TextTrackCue;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 539
    const-string v2, ", alignment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 540
    iget v2, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xca

    if-ne v2, v3, :cond_b1

    const-string v4, "end"

    goto :goto_d4

    .line 541
    :cond_b1
    iget v2, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_ba

    const-string v4, "left"

    goto :goto_d4

    .line 542
    :cond_ba
    iget v2, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_c3

    const-string v4, "middle"

    goto :goto_d4

    .line 543
    :cond_c3
    iget v2, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_cc

    const-string v4, "right"

    goto :goto_d4

    .line 544
    :cond_cc
    iget v2, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_d4

    const-string v4, "start"

    .line 540
    :cond_d4
    :goto_d4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 545
    const-string v2, ", text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {p0, v0}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
