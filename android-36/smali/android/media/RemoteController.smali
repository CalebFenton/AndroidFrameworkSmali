.class public final Landroid/media/RemoteController;
.super Ljava/lang/Object;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteController$OnClientUpdateListener;,
        Landroid/media/RemoteController$MediaControllerCallback;,
        Landroid/media/RemoteController$EventHandler;,
        Landroid/media/RemoteController$TopTransportSessionListener;,
        Landroid/media/RemoteController$MetadataEditor;,
        Landroid/media/RemoteController$PlaybackInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o MAX_BITMAP_DIMENSION:I = 0x200

.field private static final greylist-max-o MSG_CLIENT_CHANGE:I = 0x0

.field private static final greylist-max-o MSG_NEW_MEDIA_METADATA:I = 0x2

.field private static final greylist-max-o MSG_NEW_PLAYBACK_STATE:I = 0x1

.field public static final whitelist POSITION_SYNCHRONIZATION_CHECK:I = 0x1

.field public static final whitelist POSITION_SYNCHRONIZATION_NONE:I = 0x0

.field private static final greylist-max-o SENDMSG_NOOP:I = 0x1

.field private static final greylist-max-o SENDMSG_QUEUE:I = 0x2

.field private static final greylist-max-o SENDMSG_REPLACE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RemoteController"

.field private static final greylist-max-o mInfoLock:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mArtworkHeight:I

.field private greylist-max-o mArtworkWidth:I

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-r mCurrentSession:Landroid/media/session/MediaController;

.field private greylist-max-o mEnabled:Z

.field private final greylist-max-o mEventHandler:Landroid/media/RemoteController$EventHandler;

.field private greylist-max-o mIsRegistered:Z

.field private greylist-max-o mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

.field private final greylist-max-o mMaxBitmapDimension:I

.field private greylist-max-o mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

.field private greylist-max-o mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private greylist-max-o mSessionCb:Landroid/media/session/MediaController$Callback;

.field private greylist-max-o mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private greylist-max-o mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentSession(Landroid/media/RemoteController;)Landroid/media/session/MediaController;
    .registers 1

    iget-object p0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monClientChange(Landroid/media/RemoteController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onClientChange(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNewMediaMetadata(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewMediaMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNewPlaybackState(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateController(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmInfoLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateListener"    # Landroid/media/RemoteController$OnClientUpdateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V

    .line 95
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateListener"    # Landroid/media/RemoteController$OnClientUpdateListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/media/RemoteController$MediaControllerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/RemoteController$MediaControllerCallback;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController-IA;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 79
    iput v0, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    .line 108
    if-eqz p1, :cond_75

    .line 111
    if-eqz p2, :cond_6d

    .line 114
    if-eqz p3, :cond_24

    .line 115
    new-instance v0, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v0, p0, p0, p3}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    goto :goto_31

    .line 117
    :cond_24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 118
    .local v0, "l":Landroid/os/Looper;
    if-eqz v0, :cond_65

    .line 119
    new-instance v2, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    .line 124
    .end local v0    # "l":Landroid/os/Looper;
    :goto_31
    iput-object p2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 125
    iput-object p1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    .line 126
    nop

    .line 127
    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 128
    new-instance v0, Landroid/media/RemoteController$TopTransportSessionListener;

    invoke-direct {v0, p0, v1}, Landroid/media/RemoteController$TopTransportSessionListener;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController-IA;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 130
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 131
    const/16 v0, 0x200

    iput v0, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    goto :goto_64

    .line 133
    :cond_52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 134
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    .line 136
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :goto_64
    return-void

    .line 121
    .local v0, "l":Landroid/os/Looper;
    :cond_65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Calling thread not associated with a looper"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    .end local v0    # "l":Landroid/os/Looper;
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null OnClientUpdateListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o onClientChange(Z)V
    .registers 5
    .param p1, "clearing"    # Z

    .line 573
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_3
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 575
    .local v1, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 576
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 577
    if-eqz v1, :cond_e

    .line 578
    invoke-interface {v1, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    .line 580
    :cond_e
    return-void

    .line 576
    .end local v1    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private greylist-max-o onNewMediaMetadata(Landroid/media/MediaMetadata;)V
    .registers 9
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .line 640
    if-nez p1, :cond_3

    .line 642
    return-void

    .line 647
    :cond_3
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_6
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 649
    .local v1, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    iget-object v2, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v2, :cond_16

    iget-object v2, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    .line 650
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 651
    .local v2, "canRate":Z
    :goto_17
    if-eqz v2, :cond_1d

    const-wide/32 v3, 0x10000001

    goto :goto_1f

    :cond_1d
    const-wide/16 v3, 0x0

    .line 652
    .local v3, "editableKeys":J
    :goto_1f
    iget v5, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    iget v6, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    invoke-static {p1, v5, v6}, Landroid/media/session/MediaSessionLegacyHelper;->getOldMetadata(Landroid/media/MediaMetadata;II)Landroid/os/Bundle;

    move-result-object v5

    .line 654
    .local v5, "legacyMetadata":Landroid/os/Bundle;
    new-instance v6, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v6, p0, v5, v3, v4}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V

    iput-object v6, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 655
    iget-object v6, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 656
    .end local v2    # "canRate":Z
    .end local v3    # "editableKeys":J
    .end local v5    # "legacyMetadata":Landroid/os/Bundle;
    .local v6, "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_37

    .line 657
    if-eqz v1, :cond_36

    .line 658
    invoke-interface {v1, v6}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    .line 660
    :cond_36
    return-void

    .line 656
    .end local v1    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    .end local v6    # "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private greylist-max-o onNewPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 11
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 620
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 621
    :try_start_3
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    move-object v2, v0

    .line 622
    .local v2, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_47

    .line 623
    if-eqz v2, :cond_46

    .line 624
    if-nez p1, :cond_e

    const/4 v0, 0x0

    move v3, v0

    goto :goto_17

    .line 625
    :cond_e
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/media/RemoteControlClient;->getRccStateFromState(I)I

    move-result v0

    move v3, v0

    :goto_17
    nop

    .line 626
    .local v3, "playstate":I
    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_25

    goto :goto_35

    .line 629
    :cond_25
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v4

    .line 630
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v8

    .line 629
    invoke-interface/range {v2 .. v8}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_38

    .line 627
    :cond_35
    :goto_35
    invoke-interface {v2, v3}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    .line 632
    :goto_38
    if-eqz p1, :cond_46

    .line 633
    nop

    .line 634
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/media/RemoteControlClient;->getRccControlFlagsFromActions(J)I

    move-result v0

    .line 633
    invoke-interface {v2, v0}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    .line 637
    .end local v3    # "playstate":I
    :cond_46
    return-void

    .line 622
    .end local v2    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0
.end method

.method private static greylist-max-o sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 10
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delayMs"    # I

    .line 559
    if-nez p0, :cond_1b

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null event handler, will not deliver message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 563
    :cond_1b
    if-nez p2, :cond_21

    .line 564
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2b

    .line 565
    :cond_21
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2b

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 566
    return-void

    .line 568
    :cond_2b
    :goto_2b
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p6

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 569
    return-void
.end method

.method private greylist-max-o updateController(Landroid/media/session/MediaController;)V
    .registers 19
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 587
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v3, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v3

    .line 588
    if-nez v2, :cond_23

    .line 589
    :try_start_9
    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_77

    .line 590
    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v4, v1, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v4}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 591
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    .line 592
    iget-object v4, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v4 .. v10}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_77

    .line 595
    :cond_23
    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_37

    .line 596
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    iget-object v4, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    .line 597
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 598
    :cond_37
    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_42

    .line 599
    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v4, v1, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v4}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 601
    :cond_42
    iget-object v4, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 603
    iput-object v2, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    .line 604
    iget-object v0, v1, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v4, v1, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    iget-object v5, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    invoke-virtual {v0, v4, v5}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 606
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    move-object v9, v0

    .line 607
    .local v9, "state":Landroid/media/session/PlaybackState;
    iget-object v4, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 610
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    move-object v15, v0

    .line 611
    .local v15, "metadata":Landroid/media/MediaMetadata;
    iget-object v10, v1, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v16}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 615
    .end local v9    # "state":Landroid/media/session/PlaybackState;
    .end local v15    # "metadata":Landroid/media/MediaMetadata;
    :cond_77
    :goto_77
    monitor-exit v3

    .line 616
    return-void

    .line 615
    :catchall_79
    move-exception v0

    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_9 .. :try_end_7b} :catchall_79

    throw v0
.end method


# virtual methods
.method public whitelist clearArtworkConfiguration()Z
    .registers 3

    .line 322
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public whitelist editMetadata()Landroid/media/RemoteController$MetadataEditor;
    .registers 4

    .line 371
    new-instance v0, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v0, p0}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;)V

    .line 372
    .local v0, "editor":Landroid/media/RemoteController$MetadataEditor;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 373
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 374
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z

    .line 375
    iput-boolean v1, v0, Landroid/media/RemoteController$MetadataEditor;->mArtworkChanged:Z

    .line 376
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditableKeys:J

    .line 377
    return-object v0
.end method

.method public whitelist getEstimatedMediaPosition()J
    .registers 5

    .line 212
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_15

    .line 214
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 215
    .local v1, "state":Landroid/media/session/PlaybackState;
    if-eqz v1, :cond_15

    .line 216
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 219
    .end local v1    # "state":Landroid/media/session/PlaybackState;
    :cond_15
    monitor-exit v0

    .line 220
    const-wide/16 v0, -0x1

    return-wide v0

    .line 219
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method greylist getUpdateListener()Landroid/media/RemoteController$OnClientUpdateListener;
    .registers 2

    .line 684
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    return-object v0
.end method

.method public whitelist seekTo(J)Z
    .registers 5
    .param p1, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 260
    iget-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-nez v0, :cond_d

    .line 261
    const-string v0, "RemoteController"

    const-string v1, "Cannot use seekTo() from a disabled RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v0, 0x0

    return v0

    .line 264
    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_29

    .line 267
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_16
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_23

    .line 269
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 271
    :cond_23
    monitor-exit v0

    .line 272
    const/4 v0, 0x1

    return v0

    .line 271
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_26

    throw v1

    .line 265
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal negative time value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 240
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 243
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_d
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_19

    .line 245
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 247
    :cond_19
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 248
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw v1

    .line 241
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a media key event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setArtworkConfiguration(II)Z
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public greylist setArtworkConfiguration(ZII)Z
    .registers 7
    .param p1, "wantBitmap"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 287
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    if-eqz p1, :cond_24

    .line 289
    if-lez p2, :cond_1c

    if-lez p3, :cond_1c

    .line 290
    :try_start_9
    iget v1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    if-le p2, v1, :cond_10

    iget v1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    move p2, v1

    .line 291
    :cond_10
    iget v1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    if-le p3, v1, :cond_17

    iget v1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    move p3, v1

    .line 292
    :cond_17
    iput p2, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 293
    iput p3, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    goto :goto_29

    .line 295
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid dimensions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/RemoteController;
    .end local p1    # "wantBitmap":Z
    .end local p2    # "width":I
    .end local p3    # "height":I
    throw v1

    .line 298
    .restart local p0    # "this":Landroid/media/RemoteController;
    .restart local p1    # "wantBitmap":Z
    .restart local p2    # "width":I
    .restart local p3    # "height":I
    :cond_24
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 299
    iput v1, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    .line 301
    :goto_29
    monitor-exit v0

    .line 302
    const/4 v0, 0x1

    return v0

    .line 301
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public whitelist setSynchronizationMode(I)Z
    .registers 5
    .param p1, "sync"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 352
    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 353
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown synchronization mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1f
    :goto_1f
    iget-boolean v1, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    if-nez v1, :cond_2c

    .line 356
    const-string v0, "RemoteController"

    const-string v1, "Cannot set synchronization mode on an unregistered RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x0

    return v0

    .line 360
    :cond_2c
    return v0
.end method

.method greylist-max-o startListeningToSessions()V
    .registers 5

    .line 523
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 524
    invoke-interface {v2}, Landroid/media/RemoteController$OnClientUpdateListener;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 525
    .local v0, "listenerComponent":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 526
    .local v1, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 527
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, v2

    .line 529
    :cond_1e
    iget-object v2, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 531
    iget-object v2, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v3, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 532
    invoke-virtual {v3, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 531
    invoke-interface {v2, v3}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    .line 537
    return-void
.end method

.method greylist-max-o stopListeningToSessions()V
    .registers 3

    .line 543
    iget-object v0, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 548
    return-void
.end method
