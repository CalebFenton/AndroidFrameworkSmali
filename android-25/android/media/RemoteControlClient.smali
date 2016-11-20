.class public Landroid/media/RemoteControlClient;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteControlClient$1;,
        Landroid/media/RemoteControlClient$MetadataEditor;,
        Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;,
        Landroid/media/RemoteControlClient$OnMetadataUpdateListener;,
        Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
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

.method static synthetic -wrap0(Landroid/media/RemoteControlClient;IJ)V
    .locals 0
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onSeekTo(IJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V
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
    .line 823
    const/4 v0, 0x1

    #@1
    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    #@3
    .line 830
    const/4 v0, 0x2

    #@4
    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    #@6
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 841
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@b
    .line 846
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    #@d
    .line 851
    const-wide/16 v0, 0x0

    #@f
    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    #@11
    .line 855
    const-wide/16 v0, -0x1

    #@13
    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    #@15
    .line 859
    const/high16 v0, 0x3f800000    # 1.0f

    #@17
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    #@19
    .line 872
    iput v2, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    #@1b
    .line 878
    new-instance v0, Landroid/os/Bundle;

    #@1d
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@20
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    #@22
    .line 896
    const/4 v0, -0x1

    #@23
    iput v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    #@25
    .line 909
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    #@27
    .line 914
    const/4 v0, 0x0

    #@28
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@2a
    .line 936
    new-instance v0, Landroid/media/RemoteControlClient$1;

    #@2c
    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    #@2f
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    #@31
    .line 351
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    #@33
    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .locals 3
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 841
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@b
    .line 846
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    #@d
    .line 851
    const-wide/16 v0, 0x0

    #@f
    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    #@11
    .line 855
    const-wide/16 v0, -0x1

    #@13
    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    #@15
    .line 859
    const/high16 v0, 0x3f800000    # 1.0f

    #@17
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    #@19
    .line 872
    iput v2, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    #@1b
    .line 878
    new-instance v0, Landroid/os/Bundle;

    #@1d
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@20
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    #@22
    .line 896
    const/4 v0, -0x1

    #@23
    iput v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    #@25
    .line 909
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    #@27
    .line 914
    const/4 v0, 0x0

    #@28
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@2a
    .line 936
    new-instance v0, Landroid/media/RemoteControlClient$1;

    #@2c
    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    #@2f
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    #@31
    .line 370
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    #@33
    .line 369
    return-void
.end method

.method private static getCheckPeriodFromSpeed(F)J
    .locals 4
    .param p0, "speed"    # F

    #@0
    .prologue
    .line 1018
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
    .line 1019
    const-wide/16 v0, 0x3a98

    #@c
    return-wide v0

    #@d
    .line 1021
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
    .line 1022
    const-wide/16 v2, 0x7d0

    #@19
    .line 1021
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@1c
    move-result-wide v0

    #@1d
    return-wide v0
.end method

.method private onSeekTo(IJ)V
    .locals 2
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    #@0
    .prologue
    .line 955
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 956
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    #@5
    if-ne v0, p1, :cond_0

    #@7
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 957
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    #@d
    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;->onPlaybackPositionUpdate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 954
    return-void

    #@12
    .line 955
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
    .line 963
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 964
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    #@5
    if-ne v0, p1, :cond_0

    #@7
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 965
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    #@d
    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;->onMetadataUpdate(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 962
    return-void

    #@12
    .line 963
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
    .line 981
    packed-switch p0, :pswitch_data_0

    #@3
    .line 993
    :pswitch_0
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 988
    :pswitch_1
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 981
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
    .line 661
    iget-object v7, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 662
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
    .line 665
    :cond_0
    :goto_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    #@f
    .line 669
    if-eqz p5, :cond_4

    #@11
    .line 670
    const-wide/16 v4, 0x0

    #@13
    cmp-long v4, p2, v4

    #@15
    if-gez v4, :cond_3

    #@17
    .line 671
    const-wide/16 v4, -0x1

    #@19
    iput-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    #@1b
    .line 678
    :goto_1
    iput p4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    #@1d
    .line 680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@20
    move-result-wide v4

    #@21
    iput-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    #@23
    .line 683
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    #@25
    if-eqz v4, :cond_1

    #@27
    .line 684
    invoke-static {p1}, Landroid/media/session/PlaybackState;->getStateFromRccState(I)I

    #@2a
    move-result v1

    #@2b
    .line 685
    .local v1, "pbState":I
    if-eqz p5, :cond_5

    #@2d
    iget-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    #@2f
    .line 688
    .local v2, "position":J
    :goto_2
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    #@31
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@33
    invoke-direct {v0, v4}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    #@36
    .line 689
    .local v0, "bob":Landroid/media/session/PlaybackState$Builder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@39
    move-result-wide v5

    #@3a
    move v4, p4

    #@3b
    invoke-virtual/range {v0 .. v6}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    #@3e
    .line 690
    const/4 v4, 0x0

    #@3f
    invoke-virtual {v0, v4}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    #@42
    .line 691
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    #@45
    move-result-object v4

    #@46
    iput-object v4, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@48
    .line 692
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
    .line 660
    return-void

    #@51
    .line 663
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
    .line 673
    :cond_3
    iput-wide p2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    goto :goto_1

    #@5b
    .line 661
    :catchall_0
    move-exception v4

    #@5c
    monitor-exit v7

    #@5d
    throw v4

    #@5e
    .line 676
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
    .line 686
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
    .line 592
    new-instance v0, Landroid/media/RemoteControlClient$MetadataEditor;

    #@5
    invoke-direct {v0, p0, v2}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$MetadataEditor;)V

    #@8
    .line 593
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    if-eqz p1, :cond_1

    #@a
    .line 594
    new-instance v1, Landroid/os/Bundle;

    #@c
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@f
    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@11
    .line 595
    iput-object v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@13
    .line 596
    iput-boolean v4, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    #@15
    .line 597
    iput-boolean v4, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    #@17
    .line 598
    const-wide/16 v2, 0x0

    #@19
    iput-wide v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditableKeys:J

    #@1b
    .line 606
    :goto_0
    if-nez p1, :cond_0

    #@1d
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    #@1f
    if-nez v1, :cond_2

    #@21
    .line 607
    :cond_0
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    #@23
    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    #@26
    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    #@28
    .line 611
    :goto_1
    return-object v0

    #@29
    .line 600
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    #@2b
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    #@2d
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@30
    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@32
    .line 601
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    #@34
    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@36
    .line 602
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    #@38
    .line 603
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    #@3a
    goto :goto_0

    #@3b
    .line 609
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
    .line 400
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    #@2
    return-object v0
.end method

.method public getRcMediaIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 926
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V
    .locals 2
    .param p1, "helper"    # Landroid/media/session/MediaSessionLegacyHelper;

    #@0
    .prologue
    .line 377
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    #@2
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addRccListener(Landroid/app/PendingIntent;Landroid/media/session/MediaSession$Callback;)V

    #@7
    .line 378
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    #@9
    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->getSession(Landroid/app/PendingIntent;)Landroid/media/session/MediaSession;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    #@f
    .line 379
    iget v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    #@11
    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    #@14
    .line 376
    return-void
.end method

.method public setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    #@0
    .prologue
    .line 751
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 752
    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 750
    return-void

    #@7
    .line 751
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    #@0
    .prologue
    .line 812
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 813
    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 811
    return-void

    #@7
    .line 812
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    #@0
    .prologue
    .line 800
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 801
    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 799
    return-void

    #@7
    .line 800
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
    .line 628
    const-wide v2, -0x7fe688e67fe67d00L

    #@5
    const/high16 v4, 0x3f800000    # 1.0f

    #@7
    .line 629
    const/4 v5, 0x0

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    .line 628
    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    #@d
    .line 627
    return-void
.end method

.method public setPlaybackState(IJF)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "timeInMs"    # J
    .param p4, "playbackSpeed"    # F

    #@0
    .prologue
    .line 656
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
    .line 655
    return-void
.end method

.method public setTransportControlFlags(I)V
    .locals 6
    .param p1, "transportControlFlags"    # I

    #@0
    .prologue
    .line 713
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 715
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    #@5
    .line 718
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 719
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    #@b
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@d
    invoke-direct {v0, v1}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    #@10
    .line 721
    .local v0, "bob":Landroid/media/session/PlaybackState$Builder;
    invoke-static {p1}, Landroid/media/session/PlaybackState;->getActionsFromRccControlFlags(I)J

    #@13
    move-result-wide v4

    #@14
    .line 720
    invoke-virtual {v0, v4, v5}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    #@17
    .line 722
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    #@1d
    .line 723
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
    .line 712
    return-void

    #@26
    .line 713
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
    .line 386
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    #@2
    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->removeRccListener(Landroid/app/PendingIntent;)V

    #@5
    .line 387
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    #@8
    .line 385
    return-void
.end method
