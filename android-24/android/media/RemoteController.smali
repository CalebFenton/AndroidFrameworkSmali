.class public final Landroid/media/RemoteController;
.super Ljava/lang/Object;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteController$EventHandler;,
        Landroid/media/RemoteController$MediaControllerCallback;,
        Landroid/media/RemoteController$MetadataEditor;,
        Landroid/media/RemoteController$OnClientUpdateListener;,
        Landroid/media/RemoteController$PlaybackInfo;,
        Landroid/media/RemoteController$TopTransportSessionListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_BITMAP_DIMENSION:I = 0x200

.field private static final MSG_CLIENT_CHANGE:I = 0x0

.field private static final MSG_NEW_MEDIA_METADATA:I = 0x2

.field private static final MSG_NEW_PLAYBACK_STATE:I = 0x1

.field public static final POSITION_SYNCHRONIZATION_CHECK:I = 0x1

.field public static final POSITION_SYNCHRONIZATION_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemoteController"

.field private static final mInfoLock:Ljava/lang/Object;


# instance fields
.field private mArtworkHeight:I

.field private mArtworkWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentSession:Landroid/media/session/MediaController;

.field private mEnabled:Z

.field private final mEventHandler:Landroid/media/RemoteController$EventHandler;

.field private mIsRegistered:Z

.field private mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

.field private final mMaxBitmapDimension:I

.field private mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

.field private mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static synthetic -get0(Landroid/media/RemoteController;)Landroid/media/session/MediaController;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/RemoteController;Z)V
    .locals 0
    .param p1, "clearing"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onClientChange(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V
    .locals 0
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewMediaMetadata(Landroid/media/MediaMetadata;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V
    .locals 0
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewPlaybackState(Landroid/media/session/PlaybackState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->updateController(Landroid/media/session/MediaController;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@7
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateListener"    # Landroid/media/RemoteController$OnClientUpdateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V

    #@4
    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateListener"    # Landroid/media/RemoteController$OnClientUpdateListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 70
    new-instance v2, Landroid/media/RemoteController$MediaControllerCallback;

    #@7
    invoke-direct {v2, p0, v3}, Landroid/media/RemoteController$MediaControllerCallback;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController$MediaControllerCallback;)V

    #@a
    iput-object v2, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    #@c
    .line 75
    const/4 v2, 0x0

    #@d
    iput-boolean v2, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    #@f
    .line 78
    iput v4, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    #@11
    .line 79
    iput v4, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    #@13
    .line 80
    const/4 v2, 0x1

    #@14
    iput-boolean v2, p0, Landroid/media/RemoteController;->mEnabled:Z

    #@16
    .line 107
    if-nez p1, :cond_0

    #@18
    .line 108
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v3, "Invalid null Context"

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 110
    :cond_0
    if-nez p2, :cond_1

    #@23
    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@25
    const-string/jumbo v3, "Invalid null OnClientUpdateListener"

    #@28
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2

    #@2c
    .line 113
    :cond_1
    if-eqz p3, :cond_2

    #@2e
    .line 114
    new-instance v2, Landroid/media/RemoteController$EventHandler;

    #@30
    invoke-direct {v2, p0, p0, p3}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    #@33
    iput-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@35
    .line 123
    :goto_0
    iput-object p2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    #@37
    .line 124
    iput-object p1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    #@39
    .line 126
    const-string/jumbo v2, "media_session"

    #@3c
    .line 125
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Landroid/media/session/MediaSessionManager;

    #@42
    iput-object v2, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    #@44
    .line 127
    new-instance v2, Landroid/media/RemoteController$TopTransportSessionListener;

    #@46
    invoke-direct {v2, p0, v3}, Landroid/media/RemoteController$TopTransportSessionListener;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController$TopTransportSessionListener;)V

    #@49
    iput-object v2, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    #@4b
    .line 129
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_4

    #@51
    .line 130
    const/16 v2, 0x200

    #@53
    iput v2, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    #@55
    .line 106
    :goto_1
    return-void

    #@56
    .line 116
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@59
    move-result-object v1

    #@5a
    .line 117
    .local v1, "l":Landroid/os/Looper;
    if-eqz v1, :cond_3

    #@5c
    .line 118
    new-instance v2, Landroid/media/RemoteController$EventHandler;

    #@5e
    invoke-direct {v2, p0, p0, v1}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    #@61
    iput-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@63
    goto :goto_0

    #@64
    .line 120
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@66
    const-string/jumbo v3, "Calling thread not associated with a looper"

    #@69
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v2

    #@6d
    .line 132
    .end local v1    # "l":Landroid/os/Looper;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@74
    move-result-object v0

    #@75
    .line 133
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@77
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@79
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@7c
    move-result v2

    #@7d
    iput v2, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    #@7f
    goto :goto_1
.end method

.method private onClientChange(Z)V
    .locals 3
    .param p1, "clearing"    # Z

    #@0
    .prologue
    .line 583
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 584
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    #@5
    .line 585
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    const/4 v1, 0x0

    #@6
    iput-object v1, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v2

    #@9
    .line 587
    if-eqz v0, :cond_0

    #@b
    .line 588
    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    #@e
    .line 581
    :cond_0
    return-void

    #@f
    .line 583
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1
.end method

.method private onNewMediaMetadata(Landroid/media/MediaMetadata;)V
    .locals 9
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 650
    if-nez p1, :cond_0

    #@3
    .line 652
    return-void

    #@4
    .line 657
    :cond_0
    sget-object v7, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@6
    monitor-enter v7

    #@7
    .line 658
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    #@9
    .line 659
    .local v1, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    iget-object v8, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@b
    if-eqz v8, :cond_4

    #@d
    .line 660
    iget-object v8, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@f
    invoke-virtual {v8}, Landroid/media/session/MediaController;->getRatingType()I

    #@12
    move-result v8

    #@13
    if-eqz v8, :cond_3

    #@15
    const/4 v0, 0x1

    #@16
    .line 661
    .local v0, "canRate":Z
    :goto_0
    if-eqz v0, :cond_1

    #@18
    const v6, 0x10000001

    #@1b
    :cond_1
    int-to-long v2, v6

    #@1c
    .line 663
    .local v2, "editableKeys":J
    iget v6, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    #@1e
    iget v8, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    #@20
    .line 662
    invoke-static {p1, v6, v8}, Landroid/media/session/MediaSessionLegacyHelper;->getOldMetadata(Landroid/media/MediaMetadata;II)Landroid/os/Bundle;

    #@23
    move-result-object v4

    #@24
    .line 664
    .local v4, "legacyMetadata":Landroid/os/Bundle;
    new-instance v6, Landroid/media/RemoteController$MetadataEditor;

    #@26
    invoke-direct {v6, p0, v4, v2, v3}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V

    #@29
    iput-object v6, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    #@2b
    .line 665
    iget-object v5, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .local v5, "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    monitor-exit v7

    #@2e
    .line 667
    if-eqz v1, :cond_2

    #@30
    .line 668
    invoke-interface {v1, v5}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    #@33
    .line 649
    :cond_2
    return-void

    #@34
    .line 660
    .end local v0    # "canRate":Z
    .end local v2    # "editableKeys":J
    .end local v4    # "legacyMetadata":Landroid/os/Bundle;
    .end local v5    # "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    :cond_3
    const/4 v0, 0x0

    #@35
    .restart local v0    # "canRate":Z
    goto :goto_0

    #@36
    .line 659
    .end local v0    # "canRate":Z
    :cond_4
    const/4 v0, 0x0

    #@37
    .restart local v0    # "canRate":Z
    goto :goto_0

    #@38
    .line 657
    .end local v0    # "canRate":Z
    .end local v1    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v6

    #@39
    monitor-exit v7

    #@3a
    throw v6
.end method

.method private onNewPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 7
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    #@0
    .prologue
    .line 630
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 631
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v2

    #@6
    .line 633
    if-eqz v0, :cond_1

    #@8
    .line 634
    if-nez p1, :cond_2

    #@a
    const/4 v1, 0x0

    #@b
    .line 636
    .local v1, "playstate":I
    :goto_0
    if-eqz p1, :cond_0

    #@d
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    #@10
    move-result-wide v2

    #@11
    const-wide/16 v4, -0x1

    #@13
    cmp-long v2, v2, v4

    #@15
    if-nez v2, :cond_3

    #@17
    .line 637
    :cond_0
    invoke-interface {v0, v1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    #@1a
    .line 642
    :goto_1
    if-eqz p1, :cond_1

    #@1c
    .line 644
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    #@1f
    move-result-wide v2

    #@20
    invoke-static {v2, v3}, Landroid/media/session/PlaybackState;->getRccControlFlagsFromActions(J)I

    #@23
    move-result v2

    #@24
    .line 643
    invoke-interface {v0, v2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    #@27
    .line 628
    .end local v1    # "playstate":I
    :cond_1
    return-void

    #@28
    .line 630
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v3

    #@29
    monitor-exit v2

    #@2a
    throw v3

    #@2b
    .line 635
    .restart local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_2
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    #@2e
    move-result v2

    #@2f
    .line 634
    invoke-static {v2}, Landroid/media/session/PlaybackState;->getRccStateFromState(I)I

    #@32
    move-result v1

    #@33
    .restart local v1    # "playstate":I
    goto :goto_0

    #@34
    .line 639
    :cond_3
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    #@37
    move-result-wide v2

    #@38
    .line 640
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    #@3b
    move-result-wide v4

    #@3c
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    #@3f
    move-result v6

    #@40
    .line 639
    invoke-interface/range {v0 .. v6}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    #@43
    goto :goto_1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delayMs"    # I

    #@0
    .prologue
    .line 569
    if-nez p0, :cond_0

    #@2
    .line 570
    const-string/jumbo v0, "RemoteController"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "null event handler, will not deliver message "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 571
    return-void

    #@1d
    .line 573
    :cond_0
    if-nez p2, :cond_2

    #@1f
    .line 574
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    #@22
    .line 578
    :cond_1
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@25
    move-result-object v0

    #@26
    int-to-long v2, p6

    #@27
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2a
    .line 568
    return-void

    #@2b
    .line 575
    :cond_2
    const/4 v0, 0x1

    #@2c
    if-ne p2, v0, :cond_1

    #@2e
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_1

    #@34
    .line 576
    return-void
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .locals 14
    .param p1, "controller"    # Landroid/media/session/MediaController;

    #@0
    .prologue
    .line 597
    sget-object v13, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    monitor-enter v13

    #@3
    .line 598
    if-nez p1, :cond_1

    #@5
    .line 599
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 600
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@b
    iget-object v1, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    #@d
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    #@10
    .line 601
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@13
    .line 602
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@15
    const/4 v1, 0x0

    #@16
    const/4 v2, 0x0

    #@17
    .line 603
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    const/4 v5, 0x0

    #@1a
    const/4 v6, 0x0

    #@1b
    .line 602
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_0
    :goto_0
    monitor-exit v13

    #@1f
    .line 592
    return-void

    #@20
    .line 605
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 606
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    #@27
    move-result-object v0

    #@28
    .line 607
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@2a
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    #@2d
    move-result-object v1

    #@2e
    .line 606
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_0

    #@34
    .line 608
    :cond_2
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@36
    if-eqz v0, :cond_3

    #@38
    .line 609
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@3a
    iget-object v1, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    #@3c
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    #@3f
    .line 611
    :cond_3
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@41
    const/4 v1, 0x0

    #@42
    const/4 v2, 0x0

    #@43
    .line 612
    const/4 v3, 0x0

    #@44
    const/4 v4, 0x0

    #@45
    const/4 v5, 0x0

    #@46
    const/4 v6, 0x0

    #@47
    .line 611
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@4a
    .line 613
    iput-object p1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@4c
    .line 614
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@4e
    iget-object v1, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    #@50
    iget-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@52
    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    #@55
    .line 616
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    #@58
    move-result-object v5

    #@59
    .line 617
    .local v5, "state":Landroid/media/session/PlaybackState;
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@5b
    const/4 v1, 0x1

    #@5c
    const/4 v2, 0x0

    #@5d
    .line 618
    const/4 v3, 0x0

    #@5e
    const/4 v4, 0x0

    #@5f
    const/4 v6, 0x0

    #@60
    .line 617
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@63
    .line 620
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    #@66
    move-result-object v11

    #@67
    .line 621
    .local v11, "metadata":Landroid/media/MediaMetadata;
    iget-object v6, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@69
    const/4 v7, 0x2

    #@6a
    const/4 v8, 0x0

    #@6b
    .line 622
    const/4 v9, 0x0

    #@6c
    const/4 v10, 0x0

    #@6d
    const/4 v12, 0x0

    #@6e
    .line 621
    invoke-static/range {v6 .. v12}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    goto :goto_0

    #@72
    .line 597
    .end local v5    # "state":Landroid/media/session/PlaybackState;
    .end local v11    # "metadata":Landroid/media/MediaMetadata;
    :catchall_0
    move-exception v0

    #@73
    monitor-exit v13

    #@74
    throw v0
.end method


# virtual methods
.method public clearArtworkConfiguration()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 332
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0, v0, v1, v1}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public editMetadata()Landroid/media/RemoteController$MetadataEditor;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 381
    new-instance v0, Landroid/media/RemoteController$MetadataEditor;

    #@3
    invoke-direct {v0, p0}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;)V

    #@6
    .line 382
    .local v0, "editor":Landroid/media/RemoteController$MetadataEditor;
    new-instance v1, Landroid/os/Bundle;

    #@8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@b
    iput-object v1, v0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@d
    .line 383
    const/4 v1, 0x0

    #@e
    iput-object v1, v0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@10
    .line 384
    iput-boolean v2, v0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    #@12
    .line 385
    iput-boolean v2, v0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z

    #@14
    .line 386
    const-wide/16 v2, 0x0

    #@16
    iput-wide v2, v0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    #@18
    .line 387
    return-object v0
.end method

.method public getEstimatedMediaPosition()J
    .locals 6

    #@0
    .prologue
    .line 211
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 212
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 213
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@9
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    #@c
    move-result-object v0

    #@d
    .line 214
    .local v0, "state":Landroid/media/session/PlaybackState;
    if-eqz v0, :cond_0

    #@f
    .line 215
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-wide v4

    #@13
    monitor-exit v2

    #@14
    return-wide v4

    #@15
    .end local v0    # "state":Landroid/media/session/PlaybackState;
    :cond_0
    monitor-exit v2

    #@16
    .line 219
    const-wide/16 v2, -0x1

    #@18
    return-wide v2

    #@19
    .line 211
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method getUpdateListener()Landroid/media/RemoteController$OnClientUpdateListener;
    .locals 1

    #@0
    .prologue
    .line 693
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    #@2
    return-object v0
.end method

.method public seekTo(J)Z
    .locals 3
    .param p1, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    iget-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 272
    const-string/jumbo v0, "RemoteController"

    #@7
    const-string/jumbo v1, "Cannot use seekTo() from a disabled RemoteController"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 273
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 275
    :cond_0
    const-wide/16 v0, 0x0

    #@11
    cmp-long v0, p1, v0

    #@13
    if-gez v0, :cond_1

    #@15
    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "illegal negative time value"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 278
    :cond_1
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@20
    monitor-enter v1

    #@21
    .line 279
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 280
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@27
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_2
    monitor-exit v1

    #@2f
    .line 283
    const/4 v0, 0x1

    #@30
    return v0

    #@31
    .line 278
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v1

    #@33
    throw v0
.end method

.method public sendMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "not a media key event"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 254
    :cond_0
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@15
    monitor-enter v1

    #@16
    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 256
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@1c
    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v0

    #@20
    monitor-exit v1

    #@21
    return v0

    #@22
    .line 258
    :cond_1
    const/4 v0, 0x0

    #@23
    monitor-exit v1

    #@24
    return v0

    #@25
    .line 254
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method public setArtworkConfiguration(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 324
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1, p2}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setArtworkConfiguration(ZII)Z
    .locals 3
    .param p1, "wantBitmap"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 297
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 298
    if-eqz p1, :cond_3

    #@5
    .line 299
    if-lez p2, :cond_2

    #@7
    if-lez p3, :cond_2

    #@9
    .line 300
    :try_start_0
    iget v0, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    #@b
    if-le p2, v0, :cond_0

    #@d
    iget p2, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    #@f
    .line 301
    :cond_0
    iget v0, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    #@11
    if-le p3, v0, :cond_1

    #@13
    iget p3, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    #@15
    .line 302
    :cond_1
    iput p2, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    #@17
    .line 303
    iput p3, p0, Landroid/media/RemoteController;->mArtworkHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :goto_0
    monitor-exit v1

    #@1a
    .line 312
    const/4 v0, 0x1

    #@1b
    return v0

    #@1c
    .line 305
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v2, "Invalid dimensions"

    #@21
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 297
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0

    #@28
    .line 308
    :cond_3
    const/4 v0, -0x1

    #@29
    :try_start_2
    iput v0, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    #@2b
    .line 309
    const/4 v0, -0x1

    #@2c
    iput v0, p0, Landroid/media/RemoteController;->mArtworkHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    goto :goto_0
.end method

.method public setSynchronizationMode(I)Z
    .locals 3
    .param p1, "sync"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 362
    if-eqz p1, :cond_0

    #@4
    if-eq p1, v1, :cond_0

    #@6
    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Unknown synchronization mode "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 365
    :cond_0
    iget-boolean v0, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    #@22
    if-nez v0, :cond_1

    #@24
    .line 366
    const-string/jumbo v0, "RemoteController"

    #@27
    const-string/jumbo v1, "Cannot set synchronization mode on an unregistered RemoteController"

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 367
    return v2

    #@2e
    .line 370
    :cond_1
    return v1
.end method

.method startListeningToSessions()V
    .locals 5

    #@0
    .prologue
    .line 533
    new-instance v1, Landroid/content/ComponentName;

    #@2
    iget-object v2, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    #@4
    .line 534
    iget-object v3, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    #@6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v3

    #@a
    .line 533
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@d
    .line 535
    .local v1, "listenerComponent":Landroid/content/ComponentName;
    const/4 v0, 0x0

    #@e
    .line 536
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@11
    move-result-object v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 537
    new-instance v0, Landroid/os/Handler;

    #@16
    .end local v0    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1d
    .line 539
    :cond_0
    iget-object v2, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    #@1f
    iget-object v3, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    #@21
    .line 540
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@24
    move-result v4

    #@25
    .line 539
    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    #@28
    .line 541
    iget-object v2, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    #@2a
    iget-object v3, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    #@2c
    invoke-virtual {v3, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    #@2f
    move-result-object v3

    #@30
    invoke-interface {v2, v3}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    #@33
    .line 532
    return-void
.end method

.method stopListeningToSessions()V
    .locals 2

    #@0
    .prologue
    .line 553
    iget-object v0, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    #@2
    iget-object v1, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    #@4
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    #@7
    .line 552
    return-void
.end method
