.class public final Landroid/media/metrics/PlaybackMetrics$Builder;
.super Ljava/lang/Object;
.source "PlaybackMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/PlaybackMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioUnderrunCount:I

.field private blacklist mContentType:I

.field private blacklist mDrmSessionId:[B

.field private blacklist mDrmType:I

.field private blacklist mExperimentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocalBytesRead:J

.field private blacklist mMediaDurationMillis:J

.field private blacklist mMetricsBundle:Landroid/os/Bundle;

.field private blacklist mNetworkBytesRead:J

.field private blacklist mNetworkTransferDurationMillis:J

.field private blacklist mPlaybackType:I

.field private blacklist mPlayerName:Ljava/lang/String;

.field private blacklist mPlayerVersion:Ljava/lang/String;

.field private blacklist mStreamSource:I

.field private blacklist mStreamType:I

.field private blacklist mVideoFramesDropped:I

.field private blacklist mVideoFramesPlayed:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 5

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMediaDurationMillis:J

    .line 504
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamSource:I

    .line 505
    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamType:I

    .line 506
    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlaybackType:I

    .line 507
    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmType:I

    .line 508
    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mContentType:I

    .line 511
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    .line 512
    const/4 v3, -0x1

    iput v3, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesPlayed:I

    .line 513
    iput v3, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesDropped:I

    .line 514
    iput v3, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mAudioUnderrunCount:I

    .line 515
    iput-wide v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkBytesRead:J

    .line 516
    iput-wide v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mLocalBytesRead:J

    .line 517
    iput-wide v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkTransferDurationMillis:J

    .line 518
    new-array v0, v2, [B

    iput-object v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmSessionId:[B

    .line 519
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMetricsBundle:Landroid/os/Bundle;

    .line 525
    return-void
.end method

.method private blacklist idsToLongArray()[J
    .registers 5

    .line 704
    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 705
    .local v0, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 706
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 708
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method


# virtual methods
.method public whitelist addExperimentId(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 5
    .param p1, "value"    # J

    .line 597
    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    return-object p0
.end method

.method public whitelist build()Landroid/media/metrics/PlaybackMetrics;
    .registers 29

    .line 682
    move-object/from16 v0, p0

    new-instance v1, Landroid/media/metrics/PlaybackMetrics;

    iget-wide v2, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMediaDurationMillis:J

    iget v4, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamSource:I

    iget v5, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamType:I

    iget v6, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlaybackType:I

    iget v7, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmType:I

    iget v8, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mContentType:I

    iget-object v9, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlayerName:Ljava/lang/String;

    iget-object v10, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlayerVersion:Ljava/lang/String;

    .line 691
    invoke-direct {v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->idsToLongArray()[J

    move-result-object v11

    iget v12, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesPlayed:I

    iget v13, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesDropped:I

    iget v14, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mAudioUnderrunCount:I

    move-object v15, v1

    move-wide/from16 v16, v2

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkBytesRead:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mLocalBytesRead:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkTransferDurationMillis:J

    iget-object v3, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmSessionId:[B

    move-wide/from16 v22, v1

    iget-object v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMetricsBundle:Landroid/os/Bundle;

    move-wide/from16 v24, v22

    move-object/from16 v22, v1

    move-object v1, v15

    move-wide/from16 v26, v20

    move-object/from16 v21, v3

    move-wide/from16 v2, v16

    move-wide/from16 v15, v18

    move-wide/from16 v17, v26

    move-wide/from16 v19, v24

    invoke-direct/range {v1 .. v22}, Landroid/media/metrics/PlaybackMetrics;-><init>(JIIIIILjava/lang/String;Ljava/lang/String;[JIIIJJJ[BLandroid/os/Bundle;)V

    move-object v15, v1

    .line 700
    .local v15, "o":Landroid/media/metrics/PlaybackMetrics;
    return-object v15
.end method

.method public whitelist setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 627
    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mAudioUnderrunCount:I

    .line 628
    return-object p0
.end method

.method public whitelist setContentType(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 573
    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mContentType:I

    .line 574
    return-object p0
.end method

.method public whitelist setDrmSessionId([B)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2
    .param p1, "drmSessionId"    # [B

    .line 664
    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmSessionId:[B

    .line 665
    return-object p0
.end method

.method public whitelist setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 565
    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmType:I

    .line 566
    return-object p0
.end method

.method public whitelist setLocalBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 645
    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mLocalBytesRead:J

    .line 646
    return-object p0
.end method

.method public whitelist setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 533
    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMediaDurationMillis:J

    .line 534
    return-object p0
.end method

.method public whitelist setMetricsBundle(Landroid/os/Bundle;)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2
    .param p1, "metricsBundle"    # Landroid/os/Bundle;

    .line 675
    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMetricsBundle:Landroid/os/Bundle;

    .line 676
    return-object p0
.end method

.method public whitelist setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 636
    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkBytesRead:J

    .line 637
    return-object p0
.end method

.method public whitelist setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 656
    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkTransferDurationMillis:J

    .line 657
    return-object p0
.end method

.method public whitelist setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 557
    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlaybackType:I

    .line 558
    return-object p0
.end method

.method public whitelist setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 581
    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlayerName:Ljava/lang/String;

    .line 582
    return-object p0
.end method

.method public whitelist setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 589
    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlayerVersion:Ljava/lang/String;

    .line 590
    return-object p0
.end method

.method public whitelist setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 541
    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamSource:I

    .line 542
    return-object p0
.end method

.method public whitelist setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 549
    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamType:I

    .line 550
    return-object p0
.end method

.method public whitelist setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 617
    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesDropped:I

    .line 618
    return-object p0
.end method

.method public whitelist setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 607
    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesPlayed:I

    .line 608
    return-object p0
.end method
