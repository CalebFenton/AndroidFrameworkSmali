.class public Landroid/media/RemoteControlClient;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteControlClient$MetadataEditor;,
        Landroid/media/RemoteControlClient$OnMetadataUpdateListener;,
        Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;,
        Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;,
        Landroid/media/RemoteControlClient$EventHandler;,
        Landroid/media/RemoteControlClient$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_PLAYBACK_VOLUME:I = 0xf

.field public static final DEFAULT_PLAYBACK_VOLUME_HANDLING:I = 0x1

.field public static final FLAGS_KEY_MEDIA_NONE:I = 0x0

.field public static final FLAG_INFORMATION_REQUEST_ALBUM_ART:I = 0x8

.field public static final FLAG_INFORMATION_REQUEST_KEY_MEDIA:I = 0x2

.field public static final FLAG_INFORMATION_REQUEST_METADATA:I = 0x1

.field public static final FLAG_INFORMATION_REQUEST_PLAYSTATE:I = 0x4

.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final FLAG_KEY_MEDIA_POSITION_UPDATE:I = 0x100

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final FLAG_KEY_MEDIA_RATING:I = 0x200

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20

.field public static MEDIA_POSITION_READABLE:I = 0x0

.field public static MEDIA_POSITION_WRITABLE:I = 0x0

.field private static final MSG_POSITION_DRIFT_CHECK:I = 0xb

.field public static final PLAYBACKINFO_INVALID_VALUE:I = -0x80000000

.field public static final PLAYBACKINFO_PLAYBACK_TYPE:I = 0x1

.field public static final PLAYBACKINFO_USES_STREAM:I = 0x5

.field public static final PLAYBACKINFO_VOLUME:I = 0x2

.field public static final PLAYBACKINFO_VOLUME_HANDLING:I = 0x4

.field public static final PLAYBACKINFO_VOLUME_MAX:I = 0x3

.field public static final PLAYBACK_POSITION_ALWAYS_UNKNOWN:J = -0x7fe688e67fe67d00L

.field public static final PLAYBACK_POSITION_INVALID:J = -0x1L

.field public static final PLAYBACK_SPEED_1X:F = 1.0f

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field private static final PLAYBACK_TYPE_MAX:I = 0x1

.field private static final PLAYBACK_TYPE_MIN:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final PLAYSTATE_BUFFERING:I = 0x8

.field public static final PLAYSTATE_ERROR:I = 0x9

.field public static final PLAYSTATE_FAST_FORWARDING:I = 0x4

.field public static final PLAYSTATE_NONE:I = 0x0

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_REWINDING:I = 0x5

.field public static final PLAYSTATE_SKIPPING_BACKWARDS:I = 0x7

.field public static final PLAYSTATE_SKIPPING_FORWARDS:I = 0x6

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final POSITION_DRIFT_MAX_MS:J = 0x1f4L

.field private static final POSITION_REFRESH_PERIOD_MIN_MS:J = 0x7d0L

.field private static final POSITION_REFRESH_PERIOD_PLAYING_MS:J = 0x3a98L

.field public static final RCSE_ID_UNREGISTERED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RemoteControlClient"


# instance fields
.field private final mCacheLock:Ljava/lang/Object;

.field private mCurrentClientGenId:I

.field private mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMetadata:Landroid/os/Bundle;

.field private mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

.field private mNeedsPositionSync:Z

.field private mOriginalArtwork:Landroid/graphics/Bitmap;

.field private mPlaybackPositionMs:J

.field private mPlaybackSpeed:F

.field private mPlaybackState:I

.field private mPlaybackStateChangeTimeMs:J

.field private mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field private mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

.field private final mRcMediaIntent:Landroid/app/PendingIntent;

.field private mSession:Landroid/media/session/MediaSession;

.field private mSessionPlaybackState:Landroid/media/session/PlaybackState;

.field private mTransportControlFlags:I

.field private mTransportListener:Landroid/media/session/MediaSession$Callback;


# direct methods
.method static synthetic -get0(Landroid/media/RemoteControlClient;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/RemoteControlClient;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/media/RemoteControlClient;)Landroid/media/MediaMetadata;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/media/RemoteControlClient;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/media/RemoteControlClient;)Landroid/media/session/MediaSession;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/media/RemoteControlClient;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/media/RemoteControlClient;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/RemoteControlClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->onPositionDriftCheck()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/RemoteControlClient;IJ)V
    .locals 0
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onSeekTo(IJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V
    .locals 0
    .param p1, "generationId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onUpdateMetadata(IILjava/lang/Object;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 876
    const/4 v0, 0x1

    #@1
    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    #@3
    .line 883
    const/4 v0, 0x2

    #@4
    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    #@6
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 894
    new-instance v1, Ljava/lang/Object;

    #@7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@c
    .line 899
    iput v5, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    #@e
    .line 904
    const-wide/16 v2, 0x0

    #@10
    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    #@12
    .line 908
    const-wide/16 v2, -0x1

    #@14
    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    #@16
    .line 912
    const/high16 v1, 0x3f800000    # 1.0f

    #@18
    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    #@1a
    .line 925
    iput v5, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    #@1c
    .line 931
    new-instance v1, Landroid/os/Bundle;

    #@1e
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@21
    iput-object v1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    #@23
    .line 949
    const/4 v1, -0x1

    #@24
    iput v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    #@26
    .line 962
    iput-boolean v5, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    #@28
    .line 967
    iput-object v4, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@2a
    .line 989
    new-instance v1, Landroid/media/RemoteControlClient$1;

    #@2c
    invoke-direct {v1, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    #@2f
    iput-object v1, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    #@31
    .line 351
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    #@33
    .line 354
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@36
    move-result-object v0

    #@37
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@39
    .line 355
    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    #@3b
    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    #@3e
    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    #@40
    .line 350
    :goto_0
    return-void

    #@41
    .line 356
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@44
    move-result-object v0

    #@45
    if-eqz v0, :cond_1

    #@47
    .line 357
    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    #@49
    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    #@4c
    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    #@4e
    goto :goto_0

    #@4f
    .line 359
    :cond_1
    iput-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    #@51
    .line 360
    const-string/jumbo v1, "RemoteControlClient"

    #@54
    const-string/jumbo v2, "RemoteControlClient() couldn\'t find main application thread"

    #@57
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .locals 3
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 894
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@b
    .line 899
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    #@d
    .line 904
    const-wide/16 v0, 0x0

    #@f
    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    #@11
    .line 908
    const-wide/16 v0, -0x1

    #@13
    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    #@15
    .line 912
    const/high16 v0, 0x3f800000    # 1.0f

    #@17
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    #@19
    .line 925
    iput v2, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    #@1b
    .line 931
    new-instance v0, Landroid/os/Bundle;

    #@1d
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@20
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    #@22
    .line 949
    const/4 v0, -0x1

    #@23
    iput v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    #@25
    .line 962
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    #@27
    .line 967
    const/4 v0, 0x0

    #@28
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@2a
    .line 989
    new-instance v0, Landroid/media/RemoteControlClient$1;

    #@2c
    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    #@2f
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    #@31
    .line 380
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    #@33
    .line 382
    new-instance v0, Landroid/media/RemoteControlClient$EventHandler;

    #@35
    invoke-direct {v0, p0, p0, p2}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    #@38
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    #@3a
    .line 379
    return-void
.end method

.method private static getCheckPeriodFromSpeed(F)J
    .locals 4
    .param p0, "speed"    # F

    #@0
    .prologue
    .line 1091
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x3f800000    # 1.0f

    #@6
    cmpg-float v0, v0, v1

    #@8
    if-gtz v0, :cond_0

    #@a
    .line 1092
    const-wide/16 v0, 0x3a98

    #@c
    return-wide v0

    #@d
    .line 1094
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@10
    move-result v0

    #@11
    const v1, 0x466a6000    # 15000.0f

    #@14
    div-float v0, v1, v0

    #@16
    float-to-long v0, v0

    #@17
    .line 1095
    const-wide/16 v2, 0x7d0

    #@19
    .line 1094
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@1c
    move-result-wide v0

    #@1d
    return-wide v0
.end method

.method private onPositionDriftCheck()V
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    .line 713
    iget-object v5, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@4
    monitor-enter v5

    #@5
    .line 714
    :try_start_0
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    #@7
    if-eqz v4, :cond_0

    #@9
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    if-nez v4, :cond_1

    #@d
    :cond_0
    monitor-exit v5

    #@e
    .line 715
    return-void

    #@f
    .line 714
    :cond_1
    :try_start_1
    iget-boolean v4, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 717
    iget-wide v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    #@15
    cmp-long v4, v6, v12

    #@17
    if-ltz v4, :cond_2

    #@19
    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    const/4 v6, 0x0

    #@1c
    cmpl-float v4, v4, v6

    #@1e
    if-nez v4, :cond_3

    #@20
    :cond_2
    monitor-exit v5

    #@21
    .line 719
    return-void

    #@22
    .line 721
    :cond_3
    :try_start_2
    iget-wide v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    #@24
    .line 722
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@27
    move-result-wide v8

    #@28
    iget-wide v10, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    #@2a
    sub-long/2addr v8, v10

    #@2b
    long-to-float v4, v8

    #@2c
    iget v8, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    #@2e
    div-float/2addr v4, v8

    #@2f
    .line 721
    float-to-long v8, v4

    #@30
    add-long v2, v6, v8

    #@32
    .line 723
    .local v2, "estPos":J
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    #@34
    invoke-interface {v4}, Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;->onGetPlaybackPosition()J

    #@37
    move-result-wide v0

    #@38
    .line 724
    .local v0, "actPos":J
    cmp-long v4, v0, v12

    #@3a
    if-ltz v4, :cond_5

    #@3c
    .line 725
    sub-long v6, v2, v0

    #@3e
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    #@41
    move-result-wide v6

    #@42
    const-wide/16 v8, 0x1f4

    #@44
    cmp-long v4, v6, v8

    #@46
    if-lez v4, :cond_4

    #@48
    .line 728
    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    #@4a
    iget v6, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    #@4c
    invoke-virtual {p0, v4, v0, v1, v6}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    :goto_0
    monitor-exit v5

    #@50
    .line 711
    return-void

    #@51
    .line 732
    :cond_4
    :try_start_3
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    #@53
    .line 733
    iget-object v6, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    #@55
    const/16 v7, 0xb

    #@57
    invoke-virtual {v6, v7}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    #@5a
    move-result-object v6

    #@5b
    .line 734
    iget v7, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    #@5d
    invoke-static {v7}, Landroid/media/RemoteControlClient;->getCheckPeriodFromSpeed(F)J

    #@60
    move-result-wide v8

    #@61
    .line 732
    invoke-virtual {v4, v6, v8, v9}, Landroid/media/RemoteControlClient$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@64
    goto :goto_0

    #@65
    .line 713
    .end local v0    # "actPos":J
    .end local v2    # "estPos":J
    :catchall_0
    move-exception v4

    #@66
    monitor-exit v5

    #@67
    throw v4

    #@68
    .line 738
    .restart local v0    # "actPos":J
    .restart local v2    # "estPos":J
    :cond_5
    :try_start_4
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    #@6a
    const/16 v6, 0xb

    #@6c
    invoke-virtual {v4, v6}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6f
    goto :goto_0
.end method

.method private onSeekTo(IJ)V
    .locals 2
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    #@0
    .prologue
    .line 1028
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1029
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    #@5
    if-ne v0, p1, :cond_0

    #@7
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1030
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    #@d
    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;->onPlaybackPositionUpdate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1027
    return-void

    #@12
    .line 1028
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private onUpdateMetadata(IILjava/lang/Object;)V
    .locals 2
    .param p1, "generationId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1036
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1037
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    #@5
    if-ne v0, p1, :cond_0

    #@7
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1038
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    #@d
    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;->onMetadataUpdate(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1035
    return-void

    #@12
    .line 1036
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method static playbackPositionShouldMove(I)Z
    .locals 1
    .param p0, "playstate"    # I

    #@0
    .prologue
    .line 1054
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1066
    :pswitch_0
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 1061
    :pswitch_1
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1054
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setPlaybackStateInt(IJFZ)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "timeInMs"    # J
    .param p4, "playbackSpeed"    # F
    .param p5, "hasPosition"    # Z

    #@0
    .prologue
    .line 673
    iget-object v7, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 674
    :try_start_0
    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    #@5
    if-ne v4, p1, :cond_0

    #@7
    iget-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    #@9
    cmp-long v4, v4, p2

    #@b
    if-eqz v4, :cond_2

    #@d
    .line 677
    :cond_0
    :goto_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    #@f
    .line 681
    if-eqz p5, :cond_4

    #@11
    .line 682
    const-wide/16 v4, 0x0

    #@13
    cmp-long v4, p2, v4

    #@15
    if-gez v4, :cond_3

    #@17
    .line 683
    const-wide/16 v4, -0x1

    #@19
    iput-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    #@1b
    .line 690
    :goto_1
    iput p4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    #@1d
    .line 692
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@20
    move-result-wide v4

    #@21
    iput-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    #@23
    .line 695
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    #@25
    if-eqz v4, :cond_1

    #@27
    .line 696
    invoke-static {p1}, Landroid/media/session/PlaybackState;->getStateFromRccState(I)I

    #@2a
    move-result v1

    #@2b
    .line 697
    .local v1, "pbState":I
    if-eqz p5, :cond_5

    #@2d
    iget-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    #@2f
    .line 700
    .local v2, "position":J
    :goto_2
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    #@31
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@33
    invoke-direct {v0, v4}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    #@36
    .line 701
    .local v0, "bob":Landroid/media/session/PlaybackState$Builder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@39
    move-result-wide v5

    #@3a
    move v4, p4

    #@3b
    invoke-virtual/range {v0 .. v6}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    #@3e
    .line 702
    const/4 v4, 0x0

    #@3f
    invoke-virtual {v0, v4}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    #@42
    .line 703
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    #@45
    move-result-object v4

    #@46
    iput-object v4, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@48
    .line 704
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    #@4a
    iget-object v5, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@4c
    invoke-virtual {v4, v5}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .end local v0    # "bob":Landroid/media/session/PlaybackState$Builder;
    .end local v1    # "pbState":I
    .end local v2    # "position":J
    :cond_1
    monitor-exit v7

    #@50
    .line 672
    return-void

    #@51
    .line 675
    :cond_2
    :try_start_1
    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    #@53
    cmpl-float v4, v4, p4

    #@55
    if-eqz v4, :cond_1

    #@57
    goto :goto_0

    #@58
    .line 685
    :cond_3
    iput-wide p2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    goto :goto_1

    #@5b
    .line 673
    :catchall_0
    move-exception v4

    #@5c
    monitor-exit v7

    #@5d
    throw v4

    #@5e
    .line 688
    :cond_4
    const-wide v4, -0x7fe688e67fe67d00L

    #@63
    :try_start_2
    iput-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    goto :goto_1

    #@66
    .line 698
    .restart local v1    # "pbState":I
    :cond_5
    const-wide/16 v2, -0x1

    #@68
    .restart local v2    # "position":J
    goto :goto_2
.end method


# virtual methods
.method public editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 5
    .param p1, "startEmpty"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 604
    new-instance v0, Landroid/media/RemoteControlClient$MetadataEditor;

    #@5
    invoke-direct {v0, p0, v2}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$MetadataEditor;)V

    #@8
    .line 605
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    if-eqz p1, :cond_1

    #@a
    .line 606
    new-instance v1, Landroid/os/Bundle;

    #@c
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@f
    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@11
    .line 607
    iput-object v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@13
    .line 608
    iput-boolean v4, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    #@15
    .line 609
    iput-boolean v4, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    #@17
    .line 610
    const-wide/16 v2, 0x0

    #@19
    iput-wide v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditableKeys:J

    #@1b
    .line 618
    :goto_0
    if-nez p1, :cond_0

    #@1d
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    #@1f
    if-nez v1, :cond_2

    #@21
    .line 619
    :cond_0
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    #@23
    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    #@26
    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    #@28
    .line 623
    :goto_1
    return-object v0

    #@29
    .line 612
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    #@2b
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    #@2d
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@30
    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@32
    .line 613
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    #@34
    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@36
    .line 614
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    #@38
    .line 615
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    #@3a
    goto :goto_0

    #@3b
    .line 621
    :cond_2
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    #@3d
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    #@3f
    invoke-direct {v1, v2}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    #@42
    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    #@44
    goto :goto_1
.end method

.method public getMediaSession()Landroid/media/session/MediaSession;
    .locals 1

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    #@2
    return-object v0
.end method

.method public getRcMediaIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 979
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V
    .locals 2
    .param p1, "helper"    # Landroid/media/session/MediaSessionLegacyHelper;

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    #@2
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addRccListener(Landroid/app/PendingIntent;Landroid/media/session/MediaSession$Callback;)V

    #@7
    .line 390
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    #@9
    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->getSession(Landroid/app/PendingIntent;)Landroid/media/session/MediaSession;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    #@f
    .line 391
    iget v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    #@11
    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    #@14
    .line 388
    return-void
.end method

.method public setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    #@0
    .prologue
    .line 796
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 797
    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 795
    return-void

    #@7
    .line 796
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V
    .locals 6
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    #@0
    .prologue
    .line 857
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 858
    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    #@5
    .line 859
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 860
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    #@f
    invoke-static {v0}, Landroid/media/RemoteControlClient;->playbackPositionShouldMove(I)Z

    #@12
    move-result v0

    #@13
    .line 859
    if-eqz v0, :cond_0

    #@15
    .line 863
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    #@17
    .line 864
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    #@19
    const/16 v3, 0xb

    #@1b
    invoke-virtual {v2, v3}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    #@1e
    move-result-object v2

    #@1f
    .line 865
    const-wide/16 v4, 0x0

    #@21
    .line 863
    invoke-virtual {v0, v2, v4, v5}, Landroid/media/RemoteControlClient$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_0
    monitor-exit v1

    #@25
    .line 856
    return-void

    #@26
    .line 857
    :catchall_0
    move-exception v0

    #@27
    monitor-exit v1

    #@28
    throw v0
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    #@0
    .prologue
    .line 845
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 846
    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 844
    return-void

    #@7
    .line 845
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setPlaybackState(I)V
    .locals 6
    .param p1, "state"    # I

    #@0
    .prologue
    .line 640
    const-wide v2, -0x7fe688e67fe67d00L

    #@5
    const/high16 v4, 0x3f800000    # 1.0f

    #@7
    .line 641
    const/4 v5, 0x0

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    .line 640
    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    #@d
    .line 639
    return-void
.end method

.method public setPlaybackState(IJF)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "timeInMs"    # J
    .param p4, "playbackSpeed"    # F

    #@0
    .prologue
    .line 668
    const/4 v5, 0x1

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-wide v2, p2

    #@4
    move v4, p4

    #@5
    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    #@8
    .line 667
    return-void
.end method

.method public setTransportControlFlags(I)V
    .locals 6
    .param p1, "transportControlFlags"    # I

    #@0
    .prologue
    .line 758
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 760
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    #@5
    .line 763
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 764
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    #@b
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@d
    invoke-direct {v0, v1}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    #@10
    .line 766
    .local v0, "bob":Landroid/media/session/PlaybackState$Builder;
    invoke-static {p1}, Landroid/media/session/PlaybackState;->getActionsFromRccControlFlags(I)J

    #@13
    move-result-wide v4

    #@14
    .line 765
    invoke-virtual {v0, v4, v5}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    #@17
    .line 767
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@1d
    .line 768
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    #@1f
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@21
    invoke-virtual {v1, v3}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .end local v0    # "bob":Landroid/media/session/PlaybackState$Builder;
    :cond_0
    monitor-exit v2

    #@25
    .line 757
    return-void

    #@26
    .line 758
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1
.end method

.method public unregisterWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V
    .locals 1
    .param p1, "helper"    # Landroid/media/session/MediaSessionLegacyHelper;

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    #@2
    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->removeRccListener(Landroid/app/PendingIntent;)V

    #@5
    .line 399
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    #@8
    .line 397
    return-void
.end method
