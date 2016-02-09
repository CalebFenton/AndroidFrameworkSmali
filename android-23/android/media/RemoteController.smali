.class public final Landroid/media/RemoteController;
.super Ljava/lang/Object;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteController$OnClientUpdateListener;,
        Landroid/media/RemoteController$MetadataEditor;,
        Landroid/media/RemoteController$RcDisplay;,
        Landroid/media/RemoteController$MediaControllerCallback;,
        Landroid/media/RemoteController$TopTransportSessionListener;,
        Landroid/media/RemoteController$EventHandler;,
        Landroid/media/RemoteController$PlaybackInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_BITMAP_DIMENSION:I = 0x200

.field private static final MSG_CLIENT_CHANGE:I = 0x4

.field private static final MSG_DISPLAY_ENABLE:I = 0x5

.field private static final MSG_NEW_MEDIA_METADATA:I = 0x7

.field private static final MSG_NEW_METADATA:I = 0x3

.field private static final MSG_NEW_PENDING_INTENT:I = 0x0

.field private static final MSG_NEW_PLAYBACK_INFO:I = 0x1

.field private static final MSG_NEW_PLAYBACK_STATE:I = 0x6

.field private static final MSG_NEW_TRANSPORT_INFO:I = 0x2

.field public static final POSITION_SYNCHRONIZATION_CHECK:I = 0x1

.field public static final POSITION_SYNCHRONIZATION_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemoteController"

.field private static final TRANSPORT_UNKNOWN:I = 0x0

.field private static final USE_SESSIONS:Z = true

.field private static final mGenLock:Ljava/lang/Object;

.field private static final mInfoLock:Ljava/lang/Object;


# instance fields
.field private mArtworkHeight:I

.field private mArtworkWidth:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mClientGenerationIdCurrent:I

.field private mClientPendingIntentCurrent:Landroid/app/PendingIntent;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSession:Landroid/media/session/MediaController;

.field private mEnabled:Z

.field private final mEventHandler:Landroid/media/RemoteController$EventHandler;

.field private mIsRegistered:Z

.field private mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

.field private final mMaxBitmapDimension:I

.field private mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

.field private mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private final mRcd:Landroid/media/RemoteController$RcDisplay;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static synthetic -get0(Landroid/media/RemoteController;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/media/RemoteController;)Landroid/media/session/MediaController;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get4()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/media/RemoteController;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/media/RemoteController;IZ)V
    .locals 0
    .param p1, "genId"    # I
    .param p2, "clearing"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onClientChange(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/RemoteController;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onDisplayEnable(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V
    .locals 0
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewMediaMetadata(Landroid/media/MediaMetadata;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/media/RemoteController;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onNewMetadata(ILandroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/media/RemoteController;ILandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "genId"    # I
    .param p2, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onNewPendingIntent(ILandroid/app/PendingIntent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/media/RemoteController;ILandroid/media/RemoteController$PlaybackInfo;)V
    .locals 0
    .param p1, "genId"    # I
    .param p2, "pi"    # Landroid/media/RemoteController$PlaybackInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onNewPlaybackInfo(ILandroid/media/RemoteController$PlaybackInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V
    .locals 0
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewPlaybackState(Landroid/media/session/PlaybackState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Landroid/media/RemoteController;II)V
    .locals 0
    .param p1, "genId"    # I
    .param p2, "transportControlFlags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onNewTransportInfo(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delayMs"    # I

    #@0
    .prologue
    invoke-static/range {p0 .. p6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V
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
    .line 68
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    #@7
    .line 69
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@e
    .line 61
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
    .line 107
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V

    #@4
    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V
    .locals 6
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
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 78
    new-instance v2, Landroid/media/RemoteController$MediaControllerCallback;

    #@8
    invoke-direct {v2, p0, v3}, Landroid/media/RemoteController$MediaControllerCallback;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController$MediaControllerCallback;)V

    #@b
    iput-object v2, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    #@d
    .line 83
    iput v5, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    #@f
    .line 88
    iput-boolean v5, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    #@11
    .line 92
    iput v4, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    #@13
    .line 93
    iput v4, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    #@15
    .line 94
    const/4 v2, 0x1

    #@16
    iput-boolean v2, p0, Landroid/media/RemoteController;->mEnabled:Z

    #@18
    .line 121
    if-nez p1, :cond_0

    #@1a
    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v3, "Invalid null Context"

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 124
    :cond_0
    if-nez p2, :cond_1

    #@25
    .line 125
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v3, "Invalid null OnClientUpdateListener"

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 127
    :cond_1
    if-eqz p3, :cond_2

    #@30
    .line 128
    new-instance v2, Landroid/media/RemoteController$EventHandler;

    #@32
    invoke-direct {v2, p0, p0, p3}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    #@35
    iput-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@37
    .line 137
    :goto_0
    iput-object p2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    #@39
    .line 138
    iput-object p1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    #@3b
    .line 139
    new-instance v2, Landroid/media/RemoteController$RcDisplay;

    #@3d
    invoke-direct {v2, p0}, Landroid/media/RemoteController$RcDisplay;-><init>(Landroid/media/RemoteController;)V

    #@40
    iput-object v2, p0, Landroid/media/RemoteController;->mRcd:Landroid/media/RemoteController$RcDisplay;

    #@42
    .line 140
    const-string/jumbo v2, "audio"

    #@45
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@48
    move-result-object v2

    #@49
    check-cast v2, Landroid/media/AudioManager;

    #@4b
    iput-object v2, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    #@4d
    .line 142
    const-string/jumbo v2, "media_session"

    #@50
    .line 141
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@53
    move-result-object v2

    #@54
    check-cast v2, Landroid/media/session/MediaSessionManager;

    #@56
    iput-object v2, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    #@58
    .line 143
    new-instance v2, Landroid/media/RemoteController$TopTransportSessionListener;

    #@5a
    invoke-direct {v2, p0, v3}, Landroid/media/RemoteController$TopTransportSessionListener;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController$TopTransportSessionListener;)V

    #@5d
    iput-object v2, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    #@5f
    .line 145
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@62
    move-result v2

    #@63
    if-eqz v2, :cond_4

    #@65
    .line 146
    const/16 v2, 0x200

    #@67
    iput v2, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    #@69
    .line 120
    :goto_1
    return-void

    #@6a
    .line 130
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@6d
    move-result-object v1

    #@6e
    .line 131
    .local v1, "l":Landroid/os/Looper;
    if-eqz v1, :cond_3

    #@70
    .line 132
    new-instance v2, Landroid/media/RemoteController$EventHandler;

    #@72
    invoke-direct {v2, p0, p0, v1}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    #@75
    iput-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@77
    goto :goto_0

    #@78
    .line 134
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7a
    const-string/jumbo v3, "Calling thread not associated with a looper"

    #@7d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@80
    throw v2

    #@81
    .line 148
    .end local v1    # "l":Landroid/os/Looper;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@88
    move-result-object v0

    #@89
    .line 149
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@8b
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@8d
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@90
    move-result v2

    #@91
    iput v2, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    #@93
    goto :goto_1
.end method

.method private onClientChange(IZ)V
    .locals 3
    .param p1, "genId"    # I
    .param p2, "clearing"    # Z

    #@0
    .prologue
    .line 927
    sget-object v1, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 928
    :try_start_0
    iget v2, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eq v2, p1, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 929
    return-void

    #@9
    :cond_0
    monitor-exit v1

    #@a
    .line 933
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@c
    monitor-enter v2

    #@d
    .line 934
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    #@f
    .line 935
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    const/4 v1, 0x0

    #@10
    iput-object v1, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@12
    monitor-exit v2

    #@13
    .line 937
    if-eqz v0, :cond_1

    #@15
    .line 938
    invoke-interface {v0, p2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    #@18
    .line 926
    :cond_1
    return-void

    #@19
    .line 927
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v2

    #@1a
    monitor-exit v1

    #@1b
    throw v2

    #@1c
    .line 933
    :catchall_1
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method private onDisplayEnable(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 944
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 945
    :try_start_0
    iput-boolean p1, p0, Landroid/media/RemoteController;->mEnabled:Z

    #@5
    .line 946
    iget-object v9, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .local v9, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v2

    #@8
    .line 948
    if-nez p1, :cond_0

    #@a
    .line 951
    sget-object v1, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    #@c
    monitor-enter v1

    #@d
    .line 952
    :try_start_1
    iget v8, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@f
    .local v8, "genId":I
    monitor-exit v1

    #@10
    .line 955
    new-instance v0, Landroid/media/RemoteController$PlaybackInfo;

    #@12
    .line 956
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@15
    move-result-wide v2

    #@16
    .line 957
    const-wide/16 v4, 0x0

    #@18
    .line 955
    const/4 v1, 0x1

    #@19
    .line 957
    const/4 v6, 0x0

    #@1a
    .line 955
    invoke-direct/range {v0 .. v6}, Landroid/media/RemoteController$PlaybackInfo;-><init>(IJJF)V

    #@1d
    .line 958
    .local v0, "pi":Landroid/media/RemoteController$PlaybackInfo;
    iget-object v1, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@1f
    const/4 v2, 0x1

    #@20
    const/4 v3, 0x0

    #@21
    .line 959
    const/4 v5, 0x0

    #@22
    const/4 v7, 0x0

    #@23
    move v4, v8

    #@24
    move-object v6, v0

    #@25
    .line 958
    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@28
    .line 961
    iget-object v1, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@2a
    const/4 v2, 0x2

    #@2b
    const/4 v3, 0x0

    #@2c
    .line 962
    const/4 v5, 0x0

    #@2d
    .line 963
    const/4 v6, 0x0

    #@2e
    const/4 v7, 0x0

    #@2f
    move v4, v8

    #@30
    .line 961
    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@33
    .line 965
    new-instance v6, Landroid/os/Bundle;

    #@35
    const/4 v1, 0x3

    #@36
    invoke-direct {v6, v1}, Landroid/os/Bundle;-><init>(I)V

    #@39
    .line 966
    .local v6, "metadata":Landroid/os/Bundle;
    const/4 v1, 0x7

    #@3a
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    const-string/jumbo v2, ""

    #@41
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@44
    .line 967
    const/4 v1, 0x2

    #@45
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    const-string/jumbo v2, ""

    #@4c
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@4f
    .line 968
    const/16 v1, 0x9

    #@51
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    const-wide/16 v2, 0x0

    #@57
    invoke-virtual {v6, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@5a
    .line 969
    iget-object v1, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@5c
    const/4 v2, 0x3

    #@5d
    const/4 v3, 0x2

    #@5e
    .line 970
    const/4 v5, 0x0

    #@5f
    const/4 v7, 0x0

    #@60
    move v4, v8

    #@61
    .line 969
    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@64
    .line 942
    .end local v0    # "pi":Landroid/media/RemoteController$PlaybackInfo;
    .end local v6    # "metadata":Landroid/os/Bundle;
    .end local v8    # "genId":I
    :cond_0
    return-void

    #@65
    .line 944
    .end local v9    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v1

    #@66
    monitor-exit v2

    #@67
    throw v1

    #@68
    .line 951
    .restart local v9    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_1
    move-exception v2

    #@69
    monitor-exit v1

    #@6a
    throw v2
.end method

.method private onNewMediaMetadata(Landroid/media/MediaMetadata;)V
    .locals 9
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1033
    if-nez p1, :cond_0

    #@3
    .line 1035
    return-void

    #@4
    .line 1040
    :cond_0
    sget-object v7, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@6
    monitor-enter v7

    #@7
    .line 1041
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    #@9
    .line 1042
    .local v1, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    iget-object v8, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@b
    if-eqz v8, :cond_4

    #@d
    .line 1043
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
    .line 1044
    .local v0, "canRate":Z
    :goto_0
    if-eqz v0, :cond_1

    #@18
    const v6, 0x10000001

    #@1b
    :cond_1
    int-to-long v2, v6

    #@1c
    .line 1046
    .local v2, "editableKeys":J
    iget v6, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    #@1e
    iget v8, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    #@20
    .line 1045
    invoke-static {p1, v6, v8}, Landroid/media/session/MediaSessionLegacyHelper;->getOldMetadata(Landroid/media/MediaMetadata;II)Landroid/os/Bundle;

    #@23
    move-result-object v4

    #@24
    .line 1047
    .local v4, "legacyMetadata":Landroid/os/Bundle;
    new-instance v6, Landroid/media/RemoteController$MetadataEditor;

    #@26
    invoke-direct {v6, p0, v4, v2, v3}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V

    #@29
    iput-object v6, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    #@2b
    .line 1048
    iget-object v5, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .local v5, "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    monitor-exit v7

    #@2e
    .line 1050
    if-eqz v1, :cond_2

    #@30
    .line 1051
    invoke-interface {v1, v5}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    #@33
    .line 1032
    :cond_2
    return-void

    #@34
    .line 1043
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
    .line 1042
    .end local v0    # "canRate":Z
    :cond_4
    const/4 v0, 0x0

    #@37
    .restart local v0    # "canRate":Z
    goto :goto_0

    #@38
    .line 1040
    .end local v0    # "canRate":Z
    .end local v1    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v6

    #@39
    monitor-exit v7

    #@3a
    throw v6
.end method

.method private onNewMetadata(ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const v6, 0x1fffffff

    #@5
    .line 891
    sget-object v4, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    #@7
    monitor-enter v4

    #@8
    .line 892
    :try_start_0
    iget v5, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-eq v5, p1, :cond_0

    #@c
    monitor-exit v4

    #@d
    .line 893
    return-void

    #@e
    :cond_0
    monitor-exit v4

    #@f
    .line 900
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    .line 899
    invoke-virtual {p2, v4, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    #@16
    move-result-wide v0

    #@17
    .line 901
    .local v0, "editableKeys":J
    cmp-long v4, v0, v8

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 902
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@22
    .line 904
    :cond_1
    sget-object v5, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@24
    monitor-enter v5

    #@25
    .line 905
    :try_start_1
    iget-object v2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    #@27
    .line 906
    .local v2, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    iget-object v4, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    #@29
    if-eqz v4, :cond_4

    #@2b
    iget-object v4, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    #@2d
    iget-object v4, v4, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@2f
    if-eqz v4, :cond_4

    #@31
    .line 907
    iget-object v4, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    #@33
    iget-object v4, v4, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@35
    if-eq v4, p2, :cond_2

    #@37
    .line 909
    iget-object v4, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    #@39
    iget-object v4, v4, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@3b
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@3e
    .line 912
    :cond_2
    iget-object v6, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    #@40
    .line 914
    const/16 v4, 0x64

    #@42
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    .line 913
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@49
    move-result-object v4

    #@4a
    check-cast v4, Landroid/graphics/Bitmap;

    #@4c
    .line 912
    const/16 v7, 0x64

    #@4e
    invoke-virtual {v6, v7, v4}, Landroid/media/RemoteController$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;

    #@51
    .line 915
    iget-object v4, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    #@53
    const/16 v6, 0x64

    #@55
    invoke-static {v4, v6}, Landroid/media/RemoteController$MetadataEditor;->-wrap0(Landroid/media/RemoteController$MetadataEditor;I)V

    #@58
    .line 919
    :goto_0
    iget-object v3, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5a
    .local v3, "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    monitor-exit v5

    #@5b
    .line 921
    if-eqz v2, :cond_3

    #@5d
    .line 922
    invoke-interface {v2, v3}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    #@60
    .line 890
    :cond_3
    return-void

    #@61
    .line 891
    .end local v0    # "editableKeys":J
    .end local v2    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    .end local v3    # "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    :catchall_0
    move-exception v5

    #@62
    monitor-exit v4

    #@63
    throw v5

    #@64
    .line 917
    .restart local v0    # "editableKeys":J
    .restart local v2    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_4
    :try_start_2
    new-instance v4, Landroid/media/RemoteController$MetadataEditor;

    #@66
    invoke-direct {v4, p0, p2, v0, v1}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V

    #@69
    iput-object v4, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6b
    goto :goto_0

    #@6c
    .line 904
    .end local v2    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_1
    move-exception v4

    #@6d
    monitor-exit v5

    #@6e
    throw v4
.end method

.method private onNewPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "genId"    # I
    .param p2, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 840
    sget-object v0, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 841
    :try_start_0
    iget v1, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eq v1, p1, :cond_0

    #@7
    monitor-exit v0

    #@8
    .line 842
    return-void

    #@9
    :cond_0
    monitor-exit v0

    #@a
    .line 845
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@c
    monitor-enter v0

    #@d
    .line 846
    :try_start_1
    iput-object p2, p0, Landroid/media/RemoteController;->mClientPendingIntentCurrent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@f
    monitor-exit v0

    #@10
    .line 839
    return-void

    #@11
    .line 840
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v0

    #@13
    throw v1

    #@14
    .line 845
    :catchall_1
    move-exception v1

    #@15
    monitor-exit v0

    #@16
    throw v1
.end method

.method private onNewPlaybackInfo(ILandroid/media/RemoteController$PlaybackInfo;)V
    .locals 7
    .param p1, "genId"    # I
    .param p2, "pi"    # Landroid/media/RemoteController$PlaybackInfo;

    #@0
    .prologue
    .line 851
    sget-object v1, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 852
    :try_start_0
    iget v2, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eq v2, p1, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 853
    return-void

    #@9
    :cond_0
    monitor-exit v1

    #@a
    .line 857
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@c
    monitor-enter v2

    #@d
    .line 858
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    #@f
    .line 859
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    iput-object p2, p0, Landroid/media/RemoteController;->mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@11
    monitor-exit v2

    #@12
    .line 861
    if-eqz v0, :cond_1

    #@14
    .line 862
    iget-wide v2, p2, Landroid/media/RemoteController$PlaybackInfo;->mCurrentPosMs:J

    #@16
    const-wide v4, -0x7fe688e67fe67d00L

    #@1b
    cmp-long v1, v2, v4

    #@1d
    if-nez v1, :cond_2

    #@1f
    .line 863
    iget v1, p2, Landroid/media/RemoteController$PlaybackInfo;->mState:I

    #@21
    invoke-interface {v0, v1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    #@24
    .line 850
    :cond_1
    :goto_0
    return-void

    #@25
    .line 851
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v1

    #@27
    throw v2

    #@28
    .line 857
    :catchall_1
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1

    #@2b
    .line 865
    .restart local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_2
    iget v1, p2, Landroid/media/RemoteController$PlaybackInfo;->mState:I

    #@2d
    iget-wide v2, p2, Landroid/media/RemoteController$PlaybackInfo;->mStateChangeTimeMs:J

    #@2f
    iget-wide v4, p2, Landroid/media/RemoteController$PlaybackInfo;->mCurrentPosMs:J

    #@31
    .line 866
    iget v6, p2, Landroid/media/RemoteController$PlaybackInfo;->mSpeed:F

    #@33
    .line 865
    invoke-interface/range {v0 .. v6}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    #@36
    goto :goto_0
.end method

.method private onNewPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 7
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    #@0
    .prologue
    .line 1013
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1014
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v2

    #@6
    .line 1016
    if-eqz v0, :cond_1

    #@8
    .line 1017
    if-nez p1, :cond_2

    #@a
    const/4 v1, 0x0

    #@b
    .line 1019
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
    .line 1020
    :cond_0
    invoke-interface {v0, v1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    #@1a
    .line 1025
    :goto_1
    if-eqz p1, :cond_1

    #@1c
    .line 1027
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    #@1f
    move-result-wide v2

    #@20
    invoke-static {v2, v3}, Landroid/media/session/PlaybackState;->getRccControlFlagsFromActions(J)I

    #@23
    move-result v2

    #@24
    .line 1026
    invoke-interface {v0, v2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    #@27
    .line 1011
    .end local v1    # "playstate":I
    :cond_1
    return-void

    #@28
    .line 1013
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v3

    #@29
    monitor-exit v2

    #@2a
    throw v3

    #@2b
    .line 1018
    .restart local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_2
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    #@2e
    move-result v2

    #@2f
    .line 1017
    invoke-static {v2}, Landroid/media/session/PlaybackState;->getRccStateFromState(I)I

    #@32
    move-result v1

    #@33
    .restart local v1    # "playstate":I
    goto :goto_0

    #@34
    .line 1022
    :cond_3
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    #@37
    move-result-wide v2

    #@38
    .line 1023
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    #@3b
    move-result-wide v4

    #@3c
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    #@3f
    move-result v6

    #@40
    .line 1022
    invoke-interface/range {v0 .. v6}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    #@43
    goto :goto_1
.end method

.method private onNewTransportInfo(II)V
    .locals 3
    .param p1, "genId"    # I
    .param p2, "transportControlFlags"    # I

    #@0
    .prologue
    .line 872
    sget-object v1, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 873
    :try_start_0
    iget v2, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eq v2, p1, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 874
    return-void

    #@9
    :cond_0
    monitor-exit v1

    #@a
    .line 878
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@c
    monitor-enter v1

    #@d
    .line 879
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@f
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v1

    #@10
    .line 881
    if-eqz v0, :cond_1

    #@12
    .line 882
    invoke-interface {v0, p2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    #@15
    .line 871
    :cond_1
    return-void

    #@16
    .line 872
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v2

    #@17
    monitor-exit v1

    #@18
    throw v2

    #@19
    .line 878
    :catchall_1
    move-exception v2

    #@1a
    monitor-exit v1

    #@1b
    throw v2
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
    .line 826
    if-nez p0, :cond_0

    #@2
    .line 827
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
    .line 828
    return-void

    #@1d
    .line 830
    :cond_0
    if-nez p2, :cond_2

    #@1f
    .line 831
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    #@22
    .line 835
    :cond_1
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@25
    move-result-object v0

    #@26
    int-to-long v2, p6

    #@27
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2a
    .line 825
    return-void

    #@2b
    .line 832
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
    .line 833
    return-void
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .locals 14
    .param p1, "controller"    # Landroid/media/session/MediaController;

    #@0
    .prologue
    .line 980
    sget-object v13, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    monitor-enter v13

    #@3
    .line 981
    if-nez p1, :cond_1

    #@5
    .line 982
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 983
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@b
    iget-object v1, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    #@d
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    #@10
    .line 984
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@13
    .line 985
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@15
    const/4 v1, 0x4

    #@16
    const/4 v2, 0x0

    #@17
    .line 986
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    const/4 v5, 0x0

    #@1a
    const/4 v6, 0x0

    #@1b
    .line 985
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_0
    :goto_0
    monitor-exit v13

    #@1f
    .line 975
    return-void

    #@20
    .line 988
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 989
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    #@27
    move-result-object v0

    #@28
    .line 990
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@2a
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    #@2d
    move-result-object v1

    #@2e
    .line 989
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_0

    #@34
    .line 991
    :cond_2
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@36
    if-eqz v0, :cond_3

    #@38
    .line 992
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@3a
    iget-object v1, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    #@3c
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    #@3f
    .line 994
    :cond_3
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@41
    const/4 v1, 0x4

    #@42
    const/4 v2, 0x0

    #@43
    .line 995
    const/4 v3, 0x0

    #@44
    const/4 v4, 0x0

    #@45
    const/4 v5, 0x0

    #@46
    const/4 v6, 0x0

    #@47
    .line 994
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@4a
    .line 996
    iput-object p1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@4c
    .line 997
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@4e
    iget-object v1, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    #@50
    iget-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@52
    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    #@55
    .line 999
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    #@58
    move-result-object v5

    #@59
    .line 1000
    .local v5, "state":Landroid/media/session/PlaybackState;
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@5b
    const/4 v1, 0x6

    #@5c
    const/4 v2, 0x0

    #@5d
    .line 1001
    const/4 v3, 0x0

    #@5e
    const/4 v4, 0x0

    #@5f
    const/4 v6, 0x0

    #@60
    .line 1000
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@63
    .line 1003
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    #@66
    move-result-object v11

    #@67
    .line 1004
    .local v11, "metadata":Landroid/media/MediaMetadata;
    iget-object v6, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    #@69
    const/4 v7, 0x7

    #@6a
    const/4 v8, 0x0

    #@6b
    .line 1005
    const/4 v9, 0x0

    #@6c
    const/4 v10, 0x0

    #@6d
    const/4 v12, 0x0

    #@6e
    .line 1004
    invoke-static/range {v6 .. v12}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    goto :goto_0

    #@72
    .line 980
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
    .line 419
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
    .line 469
    new-instance v0, Landroid/media/RemoteController$MetadataEditor;

    #@3
    invoke-direct {v0, p0}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;)V

    #@6
    .line 470
    .local v0, "editor":Landroid/media/RemoteController$MetadataEditor;
    new-instance v1, Landroid/os/Bundle;

    #@8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@b
    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@d
    .line 471
    const/4 v1, 0x0

    #@e
    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@10
    .line 472
    iput-boolean v2, v0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z

    #@12
    .line 473
    iput-boolean v2, v0, Landroid/media/RemoteController$MetadataEditor;->mArtworkChanged:Z

    #@14
    .line 474
    const-wide/16 v2, 0x0

    #@16
    iput-wide v2, v0, Landroid/media/RemoteController$MetadataEditor;->mEditableKeys:J

    #@18
    .line 475
    return-object v0
.end method

.method getArtworkSize()[I
    .locals 4

    #@0
    .prologue
    .line 1096
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1097
    const/4 v1, 0x2

    #@4
    :try_start_0
    new-array v0, v1, [I

    #@6
    iget v1, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    #@8
    const/4 v3, 0x0

    #@9
    aput v1, v0, v3

    #@b
    iget v1, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    #@d
    const/4 v3, 0x1

    #@e
    aput v1, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .local v0, "size":[I
    monitor-exit v2

    #@11
    .line 1098
    return-object v0

    #@12
    .line 1096
    .end local v0    # "size":[I
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public getEstimatedMediaPosition()J
    .locals 6

    #@0
    .prologue
    .line 244
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 245
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 246
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@9
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    #@c
    move-result-object v0

    #@d
    .line 247
    .local v0, "state":Landroid/media/session/PlaybackState;
    if-eqz v0, :cond_0

    #@f
    .line 248
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
    .line 276
    const-wide/16 v2, -0x1

    #@18
    return-wide v2

    #@19
    .line 244
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method getRcDisplay()Landroid/media/RemoteController$RcDisplay;
    .locals 1

    #@0
    .prologue
    .line 1087
    iget-object v0, p0, Landroid/media/RemoteController;->mRcd:Landroid/media/RemoteController$RcDisplay;

    #@2
    return-object v0
.end method

.method public getRemoteControlClientPackageName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 216
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 217
    :try_start_0
    iget-object v2, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@a
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    return-object v0

    #@10
    .line 216
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method getUpdateListener()Landroid/media/RemoteController$OnClientUpdateListener;
    .locals 1

    #@0
    .prologue
    .line 1108
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
    .line 358
    iget-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 359
    const-string/jumbo v0, "RemoteController"

    #@7
    const-string/jumbo v1, "Cannot use seekTo() from a disabled RemoteController"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 360
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 362
    :cond_0
    const-wide/16 v0, 0x0

    #@11
    cmp-long v0, p1, v0

    #@13
    if-gez v0, :cond_1

    #@15
    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "illegal negative time value"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 365
    :cond_1
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@20
    monitor-enter v1

    #@21
    .line 366
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 367
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
    .line 370
    const/4 v0, 0x1

    #@30
    return v0

    #@31
    .line 365
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
    .line 308
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
    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "not a media key event"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 312
    :cond_0
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@15
    monitor-enter v1

    #@16
    .line 313
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 314
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
    .line 316
    :cond_1
    const/4 v0, 0x0

    #@23
    monitor-exit v1

    #@24
    return v0

    #@25
    .line 312
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
    .line 411
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
    .line 384
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 385
    if-eqz p1, :cond_3

    #@5
    .line 386
    if-lez p2, :cond_2

    #@7
    if-lez p3, :cond_2

    #@9
    .line 387
    :try_start_0
    iget v0, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    #@b
    if-le p2, v0, :cond_0

    #@d
    iget p2, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    #@f
    .line 388
    :cond_0
    iget v0, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    #@11
    if-le p3, v0, :cond_1

    #@13
    iget p3, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    #@15
    .line 389
    :cond_1
    iput p2, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    #@17
    .line 390
    iput p3, p0, Landroid/media/RemoteController;->mArtworkHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :goto_0
    monitor-exit v1

    #@1a
    .line 399
    const/4 v0, 0x1

    #@1b
    return v0

    #@1c
    .line 392
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
    .line 384
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0

    #@28
    .line 395
    :cond_3
    const/4 v0, -0x1

    #@29
    :try_start_2
    iput v0, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    #@2b
    .line 396
    const/4 v0, -0x1

    #@2c
    iput v0, p0, Landroid/media/RemoteController;->mArtworkHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    goto :goto_0
.end method

.method setIsRegistered(Z)V
    .locals 2
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 1076
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1077
    :try_start_0
    iput-boolean p1, p0, Landroid/media/RemoteController;->mIsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 1075
    return-void

    #@7
    .line 1076
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setSynchronizationMode(I)Z
    .locals 4
    .param p1, "sync"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 449
    if-eqz p1, :cond_0

    #@4
    if-eq p1, v1, :cond_0

    #@6
    .line 450
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
    .line 452
    :cond_0
    iget-boolean v2, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    #@22
    if-nez v2, :cond_1

    #@24
    .line 453
    const-string/jumbo v1, "RemoteController"

    #@27
    const-string/jumbo v2, "Cannot set synchronization mode on an unregistered RemoteController"

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 454
    return v0

    #@2e
    .line 456
    :cond_1
    iget-object v2, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    #@30
    iget-object v3, p0, Landroid/media/RemoteController;->mRcd:Landroid/media/RemoteController$RcDisplay;

    #@32
    .line 457
    if-ne v1, p1, :cond_2

    #@34
    move v0, v1

    #@35
    .line 456
    :cond_2
    invoke-virtual {v2, v3, v0}, Landroid/media/AudioManager;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    #@38
    .line 458
    return v1
.end method

.method startListeningToSessions()V
    .locals 5

    #@0
    .prologue
    .line 790
    new-instance v1, Landroid/content/ComponentName;

    #@2
    iget-object v2, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    #@4
    .line 791
    iget-object v3, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    #@6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v3

    #@a
    .line 790
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@d
    .line 792
    .local v1, "listenerComponent":Landroid/content/ComponentName;
    const/4 v0, 0x0

    #@e
    .line 793
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@11
    move-result-object v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 794
    new-instance v0, Landroid/os/Handler;

    #@16
    .end local v0    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1d
    .line 796
    :cond_0
    iget-object v2, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    #@1f
    iget-object v3, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    #@21
    .line 797
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@24
    move-result v4

    #@25
    .line 796
    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    #@28
    .line 798
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
    .line 789
    return-void
.end method

.method stopListeningToSessions()V
    .locals 2

    #@0
    .prologue
    .line 810
    iget-object v0, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    #@2
    iget-object v1, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    #@4
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    #@7
    .line 809
    return-void
.end method
