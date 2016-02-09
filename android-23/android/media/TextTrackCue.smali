.class Landroid/media/TextTrackCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "WebVttRenderer.java"


# static fields
.field static final ALIGNMENT_END:I = 0xca

.field static final ALIGNMENT_LEFT:I = 0xcb

.field static final ALIGNMENT_MIDDLE:I = 0xc8

.field static final ALIGNMENT_RIGHT:I = 0xcc

.field static final ALIGNMENT_START:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "TTCue"

.field static final WRITING_DIRECTION_HORIZONTAL:I = 0x64

.field static final WRITING_DIRECTION_VERTICAL_LR:I = 0x66

.field static final WRITING_DIRECTION_VERTICAL_RL:I = 0x65


# instance fields
.field mAlignment:I

.field mAutoLinePosition:Z

.field mId:Ljava/lang/String;

.field mLinePosition:Ljava/lang/Integer;

.field mLines:[[Landroid/media/TextTrackCueSpan;

.field mPauseOnExit:Z

.field mRegion:Landroid/media/TextTrackRegion;

.field mRegionId:Ljava/lang/String;

.field mSize:I

.field mSnapToLines:Z

.field mStrings:[Ljava/lang/String;

.field mTextPosition:I

.field mWritingDirection:I


# direct methods
.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x64

    #@2
    const/4 v1, 0x0

    #@3
    .line 405
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    #@6
    .line 406
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    #@b
    .line 407
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    #@e
    .line 408
    iput v2, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    #@10
    .line 409
    const-string/jumbo v0, ""

    #@13
    iput-object v0, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    #@15
    .line 410
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    #@18
    .line 411
    iput-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    #@1a
    .line 412
    const/16 v0, 0x32

    #@1c
    iput v0, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    #@1e
    .line 413
    iput v2, p0, Landroid/media/TextTrackCue;->mSize:I

    #@20
    .line 414
    const/16 v0, 0xc8

    #@22
    iput v0, p0, Landroid/media/TextTrackCue;->mAlignment:I

    #@24
    .line 415
    iput-object v1, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@26
    .line 416
    iput-object v1, p0, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    #@28
    .line 405
    return-void
.end method


# virtual methods
.method public appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 14
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 481
    iget-object v6, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 482
    const-string/jumbo v6, "null"

    #@7
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 516
    :goto_0
    return-object p1

    #@b
    .line 484
    :cond_0
    const-string/jumbo v6, "["

    #@e
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 485
    const/4 v0, 0x1

    #@12
    .line 486
    .local v0, "first":Z
    iget-object v8, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@14
    const/4 v6, 0x0

    #@15
    array-length v9, v8

    #@16
    move v7, v6

    #@17
    :goto_1
    if-ge v7, v9, :cond_6

    #@19
    aget-object v5, v8, v7

    #@1b
    .line 487
    .local v5, "spans":[Landroid/media/TextTrackCueSpan;
    if-nez v0, :cond_1

    #@1d
    .line 488
    const-string/jumbo v6, ", "

    #@20
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 490
    :cond_1
    if-nez v5, :cond_2

    #@25
    .line 491
    const-string/jumbo v6, "null"

    #@28
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 512
    :goto_2
    const/4 v0, 0x0

    #@2c
    .line 486
    add-int/lit8 v6, v7, 0x1

    #@2e
    move v7, v6

    #@2f
    goto :goto_1

    #@30
    .line 493
    :cond_2
    const-string/jumbo v6, "\""

    #@33
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 494
    const/4 v1, 0x1

    #@37
    .line 495
    .local v1, "innerFirst":Z
    const-wide/16 v2, -0x1

    #@39
    .line 496
    .local v2, "lastTimestamp":J
    const/4 v6, 0x0

    #@3a
    array-length v10, v5

    #@3b
    :goto_3
    if-ge v6, v10, :cond_5

    #@3d
    aget-object v4, v5, v6

    #@3f
    .line 497
    .local v4, "span":Landroid/media/TextTrackCueSpan;
    if-nez v1, :cond_3

    #@41
    .line 498
    const-string/jumbo v11, " "

    #@44
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 500
    :cond_3
    iget-wide v12, v4, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    #@49
    cmp-long v11, v12, v2

    #@4b
    if-eqz v11, :cond_4

    #@4d
    .line 501
    const-string/jumbo v11, "<"

    #@50
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v11

    #@54
    .line 503
    iget-wide v12, v4, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    #@56
    .line 502
    invoke-static {v12, v13}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    #@59
    move-result-object v12

    #@5a
    .line 501
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v11

    #@5e
    .line 504
    const-string/jumbo v12, ">"

    #@61
    .line 501
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    .line 505
    iget-wide v2, v4, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    #@66
    .line 507
    :cond_4
    iget-object v11, v4, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    #@68
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    .line 508
    const/4 v1, 0x0

    #@6c
    .line 496
    add-int/lit8 v6, v6, 0x1

    #@6e
    goto :goto_3

    #@6f
    .line 510
    .end local v4    # "span":Landroid/media/TextTrackCueSpan;
    :cond_5
    const-string/jumbo v6, "\""

    #@72
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    goto :goto_2

    #@76
    .line 514
    .end local v1    # "innerFirst":Z
    .end local v2    # "lastTimestamp":J
    .end local v5    # "spans":[Landroid/media/TextTrackCueSpan;
    :cond_6
    const-string/jumbo v6, "]"

    #@79
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    goto :goto_0
.end method

.method public appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 457
    iget-object v2, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 458
    const-string/jumbo v2, "null"

    #@7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 477
    :goto_0
    return-object p1

    #@b
    .line 460
    :cond_0
    const-string/jumbo v2, "["

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 461
    const/4 v0, 0x1

    #@12
    .line 462
    .local v0, "first":Z
    iget-object v3, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    #@14
    const/4 v2, 0x0

    #@15
    array-length v4, v3

    #@16
    :goto_1
    if-ge v2, v4, :cond_3

    #@18
    aget-object v1, v3, v2

    #@1a
    .line 463
    .local v1, "s":Ljava/lang/String;
    if-nez v0, :cond_1

    #@1c
    .line 464
    const-string/jumbo v5, ", "

    #@1f
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 466
    :cond_1
    if-nez v1, :cond_2

    #@24
    .line 467
    const-string/jumbo v5, "null"

    #@27
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 473
    :goto_2
    const/4 v0, 0x0

    #@2b
    .line 462
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 469
    :cond_2
    const-string/jumbo v5, "\""

    #@31
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 470
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 471
    const-string/jumbo v5, "\""

    #@3a
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    goto :goto_2

    #@3e
    .line 475
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "]"

    #@41
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 421
    instance-of v5, p1, Landroid/media/TextTrackCue;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 422
    return v7

    #@6
    .line 424
    :cond_0
    if-ne p0, p1, :cond_1

    #@8
    .line 425
    const/4 v5, 0x1

    #@9
    return v5

    #@a
    .line 429
    :cond_1
    :try_start_0
    move-object v0, p1

    #@b
    check-cast v0, Landroid/media/TextTrackCue;

    #@d
    move-object v1, v0

    #@e
    .line 430
    .local v1, "cue":Landroid/media/TextTrackCue;
    iget-object v5, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    #@10
    iget-object v6, v1, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    #@12
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_5

    #@18
    .line 431
    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    #@1a
    iget-boolean v6, v1, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    #@1c
    if-ne v5, v6, :cond_5

    #@1e
    .line 432
    iget v5, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    #@20
    iget v6, v1, Landroid/media/TextTrackCue;->mWritingDirection:I

    #@22
    if-ne v5, v6, :cond_5

    #@24
    .line 433
    iget-object v5, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    #@26
    iget-object v6, v1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v5

    #@2c
    .line 430
    if-eqz v5, :cond_5

    #@2e
    .line 434
    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    #@30
    iget-boolean v6, v1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    #@32
    if-ne v5, v6, :cond_5

    #@34
    .line 435
    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    #@36
    iget-boolean v6, v1, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    #@38
    if-ne v5, v6, :cond_5

    #@3a
    .line 436
    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    #@3c
    if-nez v5, :cond_3

    #@3e
    .line 437
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    #@40
    if-eqz v5, :cond_2

    #@42
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    #@44
    iget-object v6, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v5

    #@4a
    if-nez v5, :cond_3

    #@4c
    .line 438
    :cond_2
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    #@4e
    if-nez v5, :cond_5

    #@50
    iget-object v5, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    #@52
    if-nez v5, :cond_5

    #@54
    .line 439
    :cond_3
    iget v5, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    #@56
    iget v6, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    #@58
    if-ne v5, v6, :cond_5

    #@5a
    .line 440
    iget v5, p0, Landroid/media/TextTrackCue;->mSize:I

    #@5c
    iget v6, v1, Landroid/media/TextTrackCue;->mSize:I

    #@5e
    if-ne v5, v6, :cond_5

    #@60
    .line 441
    iget v5, p0, Landroid/media/TextTrackCue;->mAlignment:I

    #@62
    iget v6, v1, Landroid/media/TextTrackCue;->mAlignment:I

    #@64
    if-ne v5, v6, :cond_5

    #@66
    .line 442
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@68
    array-length v5, v5

    #@69
    iget-object v6, v1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@6b
    array-length v6, v6

    #@6c
    if-ne v5, v6, :cond_4

    #@6e
    const/4 v4, 0x1

    #@6f
    .line 443
    .local v4, "res":Z
    :goto_0
    if-eqz v4, :cond_7

    #@71
    .line 444
    const/4 v3, 0x0

    #@72
    .local v3, "line":I
    :goto_1
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@74
    array-length v5, v5

    #@75
    if-ge v3, v5, :cond_7

    #@77
    .line 445
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@79
    aget-object v5, v5, v3

    #@7b
    iget-object v6, v1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@7d
    aget-object v6, v6, v3

    #@7f
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    #@82
    move-result v5

    #@83
    if-nez v5, :cond_6

    #@85
    .line 446
    return v7

    #@86
    .line 442
    .end local v3    # "line":I
    .end local v4    # "res":Z
    :cond_4
    const/4 v4, 0x0

    #@87
    .restart local v4    # "res":Z
    goto :goto_0

    #@88
    .line 430
    .end local v4    # "res":Z
    :cond_5
    const/4 v4, 0x0

    #@89
    .restart local v4    # "res":Z
    goto :goto_0

    #@8a
    .line 444
    .restart local v3    # "line":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@8c
    goto :goto_1

    #@8d
    .line 450
    .end local v3    # "line":I
    :cond_7
    return v4

    #@8e
    .line 451
    .end local v1    # "cue":Landroid/media/TextTrackCue;
    .end local v4    # "res":Z
    :catch_0
    move-exception v2

    #@8f
    .line 452
    .local v2, "e":Ljava/lang/IncompatibleClassChangeError;
    return v7
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/media/TextTrackCue;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public onTime(J)V
    .locals 13
    .param p1, "timeMs"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 555
    iget-object v6, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@3
    array-length v7, v6

    #@4
    move v5, v3

    #@5
    :goto_0
    if-ge v5, v7, :cond_2

    #@7
    aget-object v0, v6, v5

    #@9
    .line 556
    .local v0, "line":[Landroid/media/TextTrackCueSpan;
    array-length v8, v0

    #@a
    move v4, v3

    #@b
    :goto_1
    if-ge v4, v8, :cond_1

    #@d
    aget-object v1, v0, v4

    #@f
    .line 557
    .local v1, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v10, v1, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    #@11
    cmp-long v2, p1, v10

    #@13
    if-ltz v2, :cond_0

    #@15
    const/4 v2, 0x1

    #@16
    :goto_2
    iput-boolean v2, v1, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    #@18
    .line 556
    add-int/lit8 v2, v4, 0x1

    #@1a
    move v4, v2

    #@1b
    goto :goto_1

    #@1c
    :cond_0
    move v2, v3

    #@1d
    .line 557
    goto :goto_2

    #@1e
    .line 555
    .end local v1    # "span":Landroid/media/TextTrackCueSpan;
    :cond_1
    add-int/lit8 v2, v5, 0x1

    #@20
    move v5, v2

    #@21
    goto :goto_0

    #@22
    .line 554
    .end local v0    # "line":[Landroid/media/TextTrackCueSpan;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 522
    .local v0, "res":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    #@7
    invoke-static {v2, v3}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    .line 523
    const-string/jumbo v2, " --> "

    #@12
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 523
    iget-wide v2, p0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    #@18
    invoke-static {v2, v3}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 524
    const-string/jumbo v2, " {id:\""

    #@23
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 524
    iget-object v2, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    #@29
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 525
    const-string/jumbo v2, "\", pauseOnExit:"

    #@30
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 525
    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    #@36
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 526
    const-string/jumbo v2, ", direction:"

    #@3d
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    .line 527
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    #@43
    const/16 v3, 0x64

    #@45
    if-ne v1, v3, :cond_0

    #@47
    const-string/jumbo v1, "horizontal"

    #@4a
    .line 522
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 531
    const-string/jumbo v2, ", regionId:\""

    #@51
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 531
    iget-object v2, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    #@57
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    .line 532
    const-string/jumbo v2, "\", snapToLines:"

    #@5e
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    .line 532
    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    #@64
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    .line 533
    const-string/jumbo v2, ", linePosition:"

    #@6b
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    .line 533
    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    #@71
    if-eqz v1, :cond_3

    #@73
    const-string/jumbo v1, "auto"

    #@76
    .line 522
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    .line 535
    const-string/jumbo v2, ", textPosition:"

    #@7d
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    .line 535
    iget v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    #@83
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    .line 536
    const-string/jumbo v2, ", size:"

    #@8a
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    .line 536
    iget v2, p0, Landroid/media/TextTrackCue;->mSize:I

    #@90
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    .line 537
    const-string/jumbo v2, ", alignment:"

    #@97
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v2

    #@9b
    .line 538
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    #@9d
    const/16 v3, 0xca

    #@9f
    if-ne v1, v3, :cond_4

    #@a1
    const-string/jumbo v1, "end"

    #@a4
    .line 522
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    .line 543
    const-string/jumbo v2, ", text:"

    #@ab
    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    .line 544
    invoke-virtual {p0, v0}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v1

    #@b2
    const-string/jumbo v2, "}"

    #@b5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v1

    #@bc
    return-object v1

    #@bd
    .line 528
    :cond_0
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    #@bf
    const/16 v3, 0x66

    #@c1
    if-ne v1, v3, :cond_1

    #@c3
    const-string/jumbo v1, "vertical_lr"

    #@c6
    goto :goto_0

    #@c7
    .line 529
    :cond_1
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    #@c9
    const/16 v3, 0x65

    #@cb
    if-ne v1, v3, :cond_2

    #@cd
    const-string/jumbo v1, "vertical_rl"

    #@d0
    goto/16 :goto_0

    #@d2
    .line 530
    :cond_2
    const-string/jumbo v1, "INVALID"

    #@d5
    goto/16 :goto_0

    #@d7
    .line 534
    :cond_3
    iget-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    #@d9
    goto :goto_1

    #@da
    .line 539
    :cond_4
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    #@dc
    const/16 v3, 0xcb

    #@de
    if-ne v1, v3, :cond_5

    #@e0
    const-string/jumbo v1, "left"

    #@e3
    goto :goto_2

    #@e4
    .line 540
    :cond_5
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    #@e6
    const/16 v3, 0xc8

    #@e8
    if-ne v1, v3, :cond_6

    #@ea
    const-string/jumbo v1, "middle"

    #@ed
    goto :goto_2

    #@ee
    .line 541
    :cond_6
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    #@f0
    const/16 v3, 0xcc

    #@f2
    if-ne v1, v3, :cond_7

    #@f4
    const-string/jumbo v1, "right"

    #@f7
    goto :goto_2

    #@f8
    .line 542
    :cond_7
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    #@fa
    const/16 v3, 0xc9

    #@fc
    if-ne v1, v3, :cond_8

    #@fe
    const-string/jumbo v1, "start"

    #@101
    goto :goto_2

    #@102
    :cond_8
    const-string/jumbo v1, "INVALID"

    #@105
    goto :goto_2
.end method
