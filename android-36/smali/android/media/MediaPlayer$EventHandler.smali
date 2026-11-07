.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private greylist-max-o mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;


# direct methods
.method public static synthetic blacklist $r8$lambda$AErwA6IA8bq3hHgvpTs7KS1Brcc(Landroid/media/MediaPlayer$EventHandler;Landroid/media/MediaPlayer$OnRtpRxNoticeListener;I[I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer$EventHandler;->lambda$handleMessage$0(Landroid/media/MediaPlayer$OnRtpRxNoticeListener;I[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaPlayer(Landroid/media/MediaPlayer$EventHandler;)Landroid/media/MediaPlayer;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .registers 4
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 3527
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 3528
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3529
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3530
    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$0(Landroid/media/MediaPlayer$OnRtpRxNoticeListener;I[I)V
    .registers 5
    .param p1, "rtpRxNoticeListener"    # Landroid/media/MediaPlayer$OnRtpRxNoticeListener;
    .param p2, "noticeType"    # I
    .param p3, "data"    # [I

    .line 3832
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3833
    invoke-interface {p1, v0, p2, p3}, Landroid/media/MediaPlayer$OnRtpRxNoticeListener;->onRtpRxNotice(Landroid/media/MediaPlayer;I[I)V

    .line 3832
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 3534
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmNativeContext(Landroid/media/MediaPlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 3535
    const-string v0, "MediaPlayer"

    const-string v1, "mediaplayer went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    return-void

    .line 3538
    :cond_14
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0x3f2

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_376

    .line 3838
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    return-void

    .line 3771
    :sswitch_3b
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$mbroadcastRoutingChange(Landroid/media/MediaPlayer;)V

    .line 3772
    return-void

    .line 3812
    :sswitch_41
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnRtpRxNoticeListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

    move-result-object v1

    .line 3813
    .local v1, "rtpRxNoticeListener":Landroid/media/MediaPlayer$OnRtpRxNoticeListener;
    if-nez v1, :cond_4a

    .line 3814
    return-void

    .line 3816
    :cond_4a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcel;

    if-eqz v0, :cond_88

    .line 3817
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/os/Parcel;

    .line 3818
    .local v2, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3822
    :try_start_58
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3823
    .local v0, "noticeType":I
    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    .line 3824
    .local v3, "numOfArgs":I
    new-array v4, v3, [I

    .line 3825
    .local v4, "data":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_65
    if-ge v5, v3, :cond_70

    .line 3826
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    aput v6, v4, v5
    :try_end_6d
    .catchall {:try_start_58 .. :try_end_6d} :catchall_83

    .line 3825
    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    .line 3829
    .end local v3    # "numOfArgs":I
    .end local v5    # "i":I
    :cond_70
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3830
    nop

    .line 3831
    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnRtpRxNoticeExecutor(Landroid/media/MediaPlayer;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v5, Landroid/media/MediaPlayer$EventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v1, v0, v4}, Landroid/media/MediaPlayer$EventHandler$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaPlayer$EventHandler;Landroid/media/MediaPlayer$OnRtpRxNoticeListener;I[I)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_88

    .line 3829
    .end local v0    # "noticeType":I
    .end local v4    # "data":[I
    :catchall_83
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3830
    throw v0

    .line 3835
    .end local v2    # "parcel":Landroid/os/Parcel;
    :cond_88
    :goto_88
    return-void

    .line 3777
    .end local v1    # "rtpRxNoticeListener":Landroid/media/MediaPlayer$OnRtpRxNoticeListener;
    :sswitch_89
    monitor-enter p0

    .line 3778
    :try_start_8a
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnMediaTimeDiscontinuityListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    move-result-object v0

    .line 3779
    .local v0, "mediaTimeListener":Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnMediaTimeDiscontinuityHandler(Landroid/media/MediaPlayer;)Landroid/os/Handler;

    move-result-object v1

    .line 3780
    .local v1, "mediaTimeHandler":Landroid/os/Handler;
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_8a .. :try_end_97} :catchall_dc

    .line 3781
    if-nez v0, :cond_9a

    .line 3782
    return-void

    .line 3784
    :cond_9a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Parcel;

    if-eqz v2, :cond_db

    .line 3785
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcel;

    .line 3786
    .restart local v2    # "parcel":Landroid/os/Parcel;
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3787
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 3788
    .local v7, "anchorMediaUs":J
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 3789
    .local v3, "anchorRealUs":J
    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 3790
    .local v11, "playbackRate":F
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3792
    const-wide/16 v5, -0x1

    cmp-long v9, v7, v5

    if-eqz v9, :cond_c9

    cmp-long v5, v3, v5

    if-eqz v5, :cond_c9

    .line 3793
    new-instance v6, Landroid/media/MediaTimestamp;

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v3

    invoke-direct/range {v6 .. v11}, Landroid/media/MediaTimestamp;-><init>(JJF)V

    .local v6, "timestamp":Landroid/media/MediaTimestamp;
    goto :goto_cb

    .line 3796
    .end local v6    # "timestamp":Landroid/media/MediaTimestamp;
    :cond_c9
    sget-object v6, Landroid/media/MediaTimestamp;->TIMESTAMP_UNKNOWN:Landroid/media/MediaTimestamp;

    .line 3798
    .restart local v6    # "timestamp":Landroid/media/MediaTimestamp;
    :goto_cb
    if-nez v1, :cond_d3

    .line 3799
    iget-object v5, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v5, v6}, Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;->onMediaTimeDiscontinuity(Landroid/media/MediaPlayer;Landroid/media/MediaTimestamp;)V

    goto :goto_db

    .line 3801
    :cond_d3
    new-instance v5, Landroid/media/MediaPlayer$EventHandler$2;

    invoke-direct {v5, p0, v0, v6}, Landroid/media/MediaPlayer$EventHandler$2;-><init>(Landroid/media/MediaPlayer$EventHandler;Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/media/MediaTimestamp;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3809
    .end local v2    # "parcel":Landroid/os/Parcel;
    .end local v3    # "anchorRealUs":J
    .end local v6    # "timestamp":Landroid/media/MediaTimestamp;
    .end local v7    # "anchorMediaUs":J
    .end local v11    # "playbackRate":F
    :cond_db
    :goto_db
    return-void

    .line 3780
    .end local v0    # "mediaTimeListener":Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;
    .end local v1    # "mediaTimeHandler":Landroid/os/Handler;
    :catchall_dc
    move-exception v0

    :try_start_dd
    monitor-exit p0
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v0

    .line 3557
    :sswitch_df
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_DRM_INFO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnDrmInfoHandlerDelegate(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_109

    .line 3560
    const-string v0, "MediaPlayer"

    const-string v1, "MEDIA_DRM_INFO msg.obj=NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15c

    .line 3561
    :cond_109
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcel;

    if-eqz v0, :cond_142

    .line 3563
    const/4 v1, 0x0

    .line 3566
    .local v1, "drmInfo":Landroid/media/MediaPlayer$DrmInfo;
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmDrmLock(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3567
    :try_start_117
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnDrmInfoHandlerDelegate(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    move-result-object v0

    if-eqz v0, :cond_132

    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmDrmInfo(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v0

    if-eqz v0, :cond_132

    .line 3568
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmDrmInfo(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaPlayer$DrmInfo;->-$$Nest$mmakeCopy(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v0

    move-object v1, v0

    .line 3571
    :cond_132
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnDrmInfoHandlerDelegate(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    move-result-object v0

    .line 3572
    .local v0, "onDrmInfoHandlerDelegate":Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
    monitor-exit v2
    :try_end_139
    .catchall {:try_start_117 .. :try_end_139} :catchall_13f

    .line 3575
    if-eqz v0, :cond_13e

    .line 3576
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->notifyClient(Landroid/media/MediaPlayer$DrmInfo;)V

    .line 3578
    .end local v0    # "onDrmInfoHandlerDelegate":Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
    .end local v1    # "drmInfo":Landroid/media/MediaPlayer$DrmInfo;
    :cond_13e
    goto :goto_15c

    .line 3572
    .restart local v1    # "drmInfo":Landroid/media/MediaPlayer$DrmInfo;
    :catchall_13f
    move-exception v0

    :try_start_140
    monitor-exit v2
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_13f

    throw v0

    .line 3579
    .end local v1    # "drmInfo":Landroid/media/MediaPlayer$DrmInfo;
    :cond_142
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_DRM_INFO msg.obj of unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    :goto_15c
    return-void

    .line 3754
    :sswitch_15d
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v0

    .line 3756
    .local v0, "onTimedMetaDataAvailableListener":Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    if-nez v0, :cond_166

    .line 3757
    return-void

    .line 3759
    :cond_166
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Parcel;

    if-eqz v1, :cond_17c

    .line 3760
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    .line 3761
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-static {v1}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v2

    .line 3762
    .local v2, "data":Landroid/media/TimedMetaData;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3763
    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v3, v2}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    .line 3765
    .end local v1    # "parcel":Landroid/os/Parcel;
    .end local v2    # "data":Landroid/media/TimedMetaData;
    :cond_17c
    return-void

    .line 3724
    .end local v0    # "onTimedMetaDataAvailableListener":Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    :sswitch_17d
    monitor-enter p0

    .line 3725
    :try_start_17e
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmSubtitleDataListenerDisabled(Landroid/media/MediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_188

    .line 3726
    monitor-exit p0

    return-void

    .line 3728
    :cond_188
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmExtSubtitleDataListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v0

    .line 3729
    .local v0, "extSubtitleListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmExtSubtitleDataHandler(Landroid/media/MediaPlayer;)Landroid/os/Handler;

    move-result-object v1

    .line 3730
    .local v1, "extSubtitleHandler":Landroid/os/Handler;
    monitor-exit p0
    :try_end_195
    .catchall {:try_start_17e .. :try_end_195} :catchall_1c5

    .line 3731
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Parcel;

    if-eqz v2, :cond_1c4

    .line 3732
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcel;

    .line 3733
    .local v2, "parcel":Landroid/os/Parcel;
    new-instance v3, Landroid/media/SubtitleData;

    invoke-direct {v3, v2}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 3734
    .local v3, "data":Landroid/media/SubtitleData;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3736
    iget-object v4, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->-$$Nest$fgetmIntSubtitleDataListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v4, v5, v3}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    .line 3738
    if-eqz v0, :cond_1c4

    .line 3739
    if-nez v1, :cond_1bc

    .line 3740
    iget-object v4, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v4, v3}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    goto :goto_1c4

    .line 3742
    :cond_1bc
    new-instance v4, Landroid/media/MediaPlayer$EventHandler$1;

    invoke-direct {v4, p0, v0, v3}, Landroid/media/MediaPlayer$EventHandler$1;-><init>(Landroid/media/MediaPlayer$EventHandler;Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/media/SubtitleData;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3751
    .end local v2    # "parcel":Landroid/os/Parcel;
    .end local v3    # "data":Landroid/media/SubtitleData;
    :cond_1c4
    :goto_1c4
    return-void

    .line 3730
    .end local v0    # "extSubtitleListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .end local v1    # "extSubtitleHandler":Landroid/os/Handler;
    :catchall_1c5
    move-exception v0

    :try_start_1c6
    monitor-exit p0
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_1c5

    throw v0

    .line 3661
    :sswitch_1c8
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_3c8

    goto :goto_233

    .line 3667
    :sswitch_1ce
    :try_start_1ce
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$mscanInternalSubtitleTracks(Landroid/media/MediaPlayer;)V
    :try_end_1d3
    .catch Ljava/lang/RuntimeException; {:try_start_1ce .. :try_end_1d3} :catch_1d4

    .line 3672
    goto :goto_1dc

    .line 3668
    :catch_1d4
    move-exception v0

    .line 3669
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v2, v4, v1, v3}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3671
    .local v1, "msg2":Landroid/os/Message;
    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3676
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "msg2":Landroid/os/Message;
    :goto_1dc
    :sswitch_1dc
    const/16 v0, 0x322

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 3678
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmSubtitleController(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    if-eqz v0, :cond_233

    .line 3679
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmSubtitleController(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto :goto_233

    .line 3684
    :sswitch_1f2
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v0

    .line 3685
    .local v0, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v0, :cond_233

    .line 3686
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x2bd

    if-ne v1, v2, :cond_201

    goto :goto_202

    :cond_201
    move v4, v5

    :goto_202
    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    goto :goto_233

    .line 3663
    .end local v0    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_206
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Info ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    nop

    .line 3691
    :cond_233
    :goto_233
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnInfoListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    .line 3692
    .local v0, "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    if-eqz v0, :cond_244

    .line 3693
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 3696
    :cond_244
    return-void

    .line 3644
    .end local v0    # "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    :sswitch_245
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    const/4 v0, 0x0

    .line 3646
    .local v0, "error_was_handled":Z
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnErrorListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    .line 3647
    .local v1, "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    if-eqz v1, :cond_284

    .line 3648
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    .line 3651
    :cond_284
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnCompletionInternalListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3652
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnCompletionListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    .line 3653
    .local v2, "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v2, :cond_29e

    if-nez v0, :cond_29e

    .line 3654
    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3657
    .end local v2    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    :cond_29e
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2, v5}, Landroid/media/MediaPlayer;->-$$Nest$mstayAwake(Landroid/media/MediaPlayer;Z)V

    .line 3658
    return-void

    .line 3706
    .end local v0    # "error_was_handled":Z
    .end local v1    # "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    :sswitch_2a4
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnTimedTextListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v0

    .line 3707
    .local v0, "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    if-nez v0, :cond_2ad

    .line 3708
    return-void

    .line 3709
    :cond_2ad
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_2b7

    .line 3710
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v3}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto :goto_2ce

    .line 3712
    :cond_2b7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Parcel;

    if-eqz v1, :cond_2ce

    .line 3713
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    .line 3714
    .local v1, "parcel":Landroid/os/Parcel;
    new-instance v2, Landroid/media/TimedText;

    invoke-direct {v2, v1}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 3715
    .local v2, "text":Landroid/media/TimedText;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3716
    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v3, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    .line 3719
    .end local v1    # "parcel":Landroid/os/Parcel;
    .end local v2    # "text":Landroid/media/TimedText;
    :cond_2ce
    :goto_2ce
    return-void

    .line 3699
    .end local v0    # "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    :sswitch_2cf
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v0

    .line 3700
    .local v0, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v0, :cond_2da

    .line 3701
    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->onNotifyTime()V

    .line 3703
    :cond_2da
    return-void

    .line 3595
    .end local v0    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_2db
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v0

    .line 3596
    .restart local v0    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v0, :cond_2e6

    .line 3597
    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V

    .line 3600
    .end local v0    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_2e6
    goto/16 :goto_374

    .line 3606
    :sswitch_2e8
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v0

    .line 3607
    .restart local v0    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v0, :cond_2fa

    .line 3608
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2f6

    goto :goto_2f7

    :cond_2f6
    move v4, v5

    :goto_2f7
    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V

    .line 3611
    .end local v0    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_2fa
    goto/16 :goto_374

    .line 3636
    :sswitch_2fc
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnVideoSizeChangedListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    .line 3637
    .local v0, "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    if-eqz v0, :cond_30d

    .line 3638
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 3641
    :cond_30d
    return-void

    .line 3620
    .end local v0    # "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    :sswitch_30e
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnSeekCompleteListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    .line 3621
    .local v0, "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    if-eqz v0, :cond_31b

    .line 3622
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 3628
    .end local v0    # "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    :cond_31b
    :sswitch_31b
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v0

    .line 3629
    .local v0, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v0, :cond_328

    .line 3630
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 3633
    .end local v0    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_328
    return-void

    .line 3614
    :sswitch_329
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnBufferingUpdateListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    .line 3615
    .local v0, "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    if-eqz v0, :cond_338

    .line 3616
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 3617
    :cond_338
    return-void

    .line 3585
    .end local v0    # "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    :sswitch_339
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnCompletionInternalListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3586
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnCompletionListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    .line 3587
    .local v0, "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v0, :cond_351

    .line 3588
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3590
    .end local v0    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    :cond_351
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0, v5}, Landroid/media/MediaPlayer;->-$$Nest$mstayAwake(Landroid/media/MediaPlayer;Z)V

    .line 3591
    return-void

    .line 3541
    :sswitch_357
    :try_start_357
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$mscanInternalSubtitleTracks(Landroid/media/MediaPlayer;)V
    :try_end_35c
    .catch Ljava/lang/RuntimeException; {:try_start_357 .. :try_end_35c} :catch_35d

    .line 3549
    goto :goto_365

    .line 3542
    :catch_35d
    move-exception v0

    .line 3546
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v2, v4, v1, v3}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3548
    .local v1, "msg2":Landroid/os/Message;
    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3551
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "msg2":Landroid/os/Message;
    :goto_365
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnPreparedListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    .line 3552
    .local v0, "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    if-eqz v0, :cond_372

    .line 3553
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 3554
    :cond_372
    return-void

    .line 3768
    .end local v0    # "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    :sswitch_373
    nop

    .line 3841
    :goto_374
    return-void

    nop

    :sswitch_data_376
    .sparse-switch
        0x0 -> :sswitch_373
        0x1 -> :sswitch_357
        0x2 -> :sswitch_339
        0x3 -> :sswitch_329
        0x4 -> :sswitch_30e
        0x5 -> :sswitch_2fc
        0x6 -> :sswitch_2e8
        0x7 -> :sswitch_2e8
        0x8 -> :sswitch_2db
        0x9 -> :sswitch_31b
        0x62 -> :sswitch_2cf
        0x63 -> :sswitch_2a4
        0x64 -> :sswitch_245
        0xc8 -> :sswitch_1c8
        0xc9 -> :sswitch_17d
        0xca -> :sswitch_15d
        0xd2 -> :sswitch_df
        0xd3 -> :sswitch_89
        0x12c -> :sswitch_41
        0x2710 -> :sswitch_3b
    .end sparse-switch

    :sswitch_data_3c8
    .sparse-switch
        0x2bc -> :sswitch_206
        0x2bd -> :sswitch_1f2
        0x2be -> :sswitch_1f2
        0x322 -> :sswitch_1ce
        0x323 -> :sswitch_1dc
    .end sparse-switch
.end method
