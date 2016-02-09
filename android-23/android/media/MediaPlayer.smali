.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TrackInfo;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnSubtitleDataListener;,
        Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$TimeProvider;,
        Landroid/media/MediaPlayer$1;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_SELECTED_TRACK:I = 0x7

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final KEY_PARAMETER_AUDIO_ATTRIBUTES:I = 0x578

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_SYSTEM:I = -0x80000000

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_META_DATA:I = 0xca

.field public static final MEDIA_MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final MEDIA_MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PAUSED:I = 0x7

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_SKIPPED:I = 0x9

.field private static final MEDIA_STARTED:I = 0x6

.field private static final MEDIA_STOPPED:I = 0x8

.field private static final MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field public static final PLAYBACK_RATE_AUDIO_MODE_DEFAULT:I = 0x0

.field public static final PLAYBACK_RATE_AUDIO_MODE_RESAMPLE:I = 0x2

.field public static final PLAYBACK_RATE_AUDIO_MODE_STRETCH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mBypassInterruptionPolicy:Z

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mInbandTrackIndices:Ljava/util/BitSet;

.field private mIndexTrackPairs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListenerContext:I

.field private mNativeContext:J

.field private mNativeSurfaceTexture:J

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnWhilePlaying:Z

.field private mSelectedSubtitleTrackIndex:I

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSubtitleController:Landroid/media/SubtitleController;

.field private mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

.field private mUsage:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaPlayer;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/media/MediaPlayer;->mNativeContext:J

    #@2
    return-wide v0
.end method

.method static synthetic -get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/media/MediaPlayer;Landroid/media/SubtitleController;)Landroid/media/SubtitleController;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/MediaPlayer;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .param p1, "awake"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 603
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 604
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    #@9
    .line 567
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 618
    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7
    .line 622
    const/high16 v2, -0x80000000

    #@9
    iput v2, p0, Landroid/media/MediaPlayer;->mStreamType:I

    #@b
    .line 623
    iput v4, p0, Landroid/media/MediaPlayer;->mUsage:I

    #@d
    .line 2062
    new-instance v2, Ljava/util/Vector;

    #@f
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@12
    iput-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@14
    .line 2063
    new-instance v2, Ljava/util/BitSet;

    #@16
    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    #@19
    iput-object v2, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    #@1b
    .line 2185
    iput v4, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@1d
    .line 2188
    new-instance v2, Landroid/media/MediaPlayer$1;

    #@1f
    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;)V

    #@22
    iput-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@24
    .line 636
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@27
    move-result-object v1

    #@28
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    #@2a
    .line 637
    new-instance v2, Landroid/media/MediaPlayer$EventHandler;

    #@2c
    invoke-direct {v2, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    #@2f
    iput-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@31
    .line 644
    :goto_0
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider;

    #@33
    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    #@36
    iput-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@38
    .line 645
    new-instance v2, Ljava/util/Vector;

    #@3a
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@3d
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    #@3f
    .line 646
    const-string/jumbo v2, "appops"

    #@42
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@45
    move-result-object v0

    #@46
    .line 647
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    #@49
    move-result-object v2

    #@4a
    iput-object v2, p0, Landroid/media/MediaPlayer;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@4c
    .line 652
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@4e
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@51
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    #@54
    .line 633
    return-void

    #@55
    .line 638
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@58
    move-result-object v1

    #@59
    if-eqz v1, :cond_1

    #@5b
    .line 639
    new-instance v2, Landroid/media/MediaPlayer$EventHandler;

    #@5d
    invoke-direct {v2, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    #@60
    iput-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@62
    goto :goto_0

    #@63
    .line 641
    :cond_1
    iput-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@65
    goto :goto_0
.end method

.method private native _getAudioStreamType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setAudioStreamType(I)V
.end method

.method private native _setAuxEffectSendLevel(F)V
.end method

.method private native _setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _setVolume(FF)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2131
    const-string/jumbo v0, "application/x-subrip"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2132
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 2134
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 919
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    #@4
    move-result v0

    #@5
    .line 920
    .local v0, "s":I
    if-lez v0, :cond_0

    #@7
    .end local v0    # "s":I
    :goto_0
    const/4 v1, 0x0

    #@8
    invoke-static {p0, p1, v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .restart local v0    # "s":I
    :cond_0
    move v0, v1

    #@e
    goto :goto_0
.end method

.method public static create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "audioSessionId"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 937
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    #@8
    move-result-object v7

    #@9
    .line 938
    .local v7, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v7, :cond_0

    #@b
    return-object v11

    #@c
    .line 940
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    #@e
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    #@11
    .line 942
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz p2, :cond_1

    #@13
    move-object v6, p2

    #@14
    .line 944
    .local v6, "aa":Landroid/media/AudioAttributes;
    :goto_0
    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    #@17
    .line 945
    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    #@1a
    .line 947
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@21
    move-result-wide v2

    #@22
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    #@25
    move-result-wide v4

    #@26
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    #@29
    .line 948
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@2c
    .line 949
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    #@2f
    .line 950
    return-object v0

    #@30
    .line 943
    .end local v6    # "aa":Landroid/media/AudioAttributes;
    :cond_1
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    #@32
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@35
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    move-result-object v6

    #@39
    .restart local v6    # "aa":Landroid/media/AudioAttributes;
    goto :goto_0

    #@3a
    .line 957
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .end local v6    # "aa":Landroid/media/AudioAttributes;
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v10

    #@3b
    .line 958
    .local v10, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v1, "MediaPlayer"

    #@3e
    const-string/jumbo v2, "create failed:"

    #@41
    invoke-static {v1, v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    .line 961
    .end local v10    # "ex":Ljava/lang/SecurityException;
    :goto_1
    return-object v11

    #@45
    .line 954
    :catch_1
    move-exception v9

    #@46
    .line 955
    .local v9, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "MediaPlayer"

    #@49
    const-string/jumbo v2, "create failed:"

    #@4c
    invoke-static {v1, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4f
    goto :goto_1

    #@50
    .line 951
    .end local v9    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    #@51
    .line 952
    .local v8, "ex":Ljava/io/IOException;
    const-string/jumbo v1, "MediaPlayer"

    #@54
    const-string/jumbo v2, "create failed:"

    #@57
    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5a
    goto :goto_1
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 836
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 856
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    #@4
    move-result v0

    #@5
    .line 857
    .local v0, "s":I
    if-lez v0, :cond_0

    #@7
    .end local v0    # "s":I
    :goto_0
    const/4 v1, 0x0

    #@8
    invoke-static {p0, p1, p2, v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .restart local v0    # "s":I
    :cond_0
    move v0, v1

    #@e
    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;
    .param p3, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p4, "audioSessionId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 875
    :try_start_0
    new-instance v4, Landroid/media/MediaPlayer;

    #@3
    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    #@6
    .line 876
    .local v4, "mp":Landroid/media/MediaPlayer;
    if-eqz p3, :cond_1

    #@8
    move-object v0, p3

    #@9
    .line 878
    .local v0, "aa":Landroid/media/AudioAttributes;
    :goto_0
    invoke-virtual {v4, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    #@c
    .line 879
    invoke-virtual {v4, p4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    #@f
    .line 880
    invoke-virtual {v4, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    #@12
    .line 881
    if-eqz p2, :cond_0

    #@14
    .line 882
    invoke-virtual {v4, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    #@17
    .line 884
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    #@1a
    .line 885
    return-object v4

    #@1b
    .line 877
    .end local v0    # "aa":Landroid/media/AudioAttributes;
    :cond_1
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    #@1d
    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@20
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-object v0

    #@24
    .restart local v0    # "aa":Landroid/media/AudioAttributes;
    goto :goto_0

    #@25
    .line 892
    .end local v0    # "aa":Landroid/media/AudioAttributes;
    .end local v4    # "mp":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v3

    #@26
    .line 893
    .local v3, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v5, "MediaPlayer"

    #@29
    const-string/jumbo v6, "create failed:"

    #@2c
    invoke-static {v5, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    .line 897
    .end local v3    # "ex":Ljava/lang/SecurityException;
    :goto_1
    return-object v7

    #@30
    .line 889
    :catch_1
    move-exception v2

    #@31
    .line 890
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "MediaPlayer"

    #@34
    const-string/jumbo v6, "create failed:"

    #@37
    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_1

    #@3b
    .line 886
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    #@3c
    .line 887
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v5, "MediaPlayer"

    #@3f
    const-string/jumbo v6, "create failed:"

    #@42
    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    goto :goto_1
.end method

.method private getAudioStreamType()I
    .locals 2

    #@0
    .prologue
    .line 1215
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1216
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_getAudioStreamType()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    #@c
    .line 1218
    :cond_0
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    #@e
    return v0
.end method

.method private getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 2094
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v0

    #@8
    .line 2096
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IMediaPlayer"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2097
    const/4 v3, 0x1

    #@f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 2098
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    #@15
    .line 2099
    sget-object v3, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 2102
    .local v2, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 2103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2100
    return-object v2

    #@24
    .line 2101
    .end local v2    # "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_0
    move-exception v3

    #@25
    .line 2102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 2103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 2101
    throw v3
.end method

.method private isRestricted()Z
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1200
    iget-boolean v4, p0, Landroid/media/MediaPlayer;->mBypassInterruptionPolicy:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 1201
    return v3

    #@6
    .line 1204
    :cond_0
    :try_start_0
    iget v4, p0, Landroid/media/MediaPlayer;->mUsage:I

    #@8
    const/4 v5, -0x1

    #@9
    if-eq v4, v5, :cond_2

    #@b
    iget v2, p0, Landroid/media/MediaPlayer;->mUsage:I

    #@d
    .line 1206
    .local v2, "usage":I
    :goto_0
    iget-object v4, p0, Landroid/media/MediaPlayer;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@f
    .line 1207
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@12
    move-result v5

    #@13
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@16
    move-result-object v6

    #@17
    .line 1206
    const/16 v7, 0x1c

    #@19
    invoke-interface {v4, v7, v2, v5, v6}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    #@1c
    move-result v1

    #@1d
    .line 1208
    .local v1, "mode":I
    if-eqz v1, :cond_1

    #@1f
    const/4 v3, 0x1

    #@20
    :cond_1
    return v3

    #@21
    .line 1205
    .end local v1    # "mode":I
    .end local v2    # "usage":I
    :cond_2
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getAudioStreamType()I

    #@24
    move-result v4

    #@25
    invoke-static {v4}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result v2

    #@29
    .restart local v2    # "usage":I
    goto :goto_0

    #@2a
    .line 1209
    .end local v2    # "usage":I
    :catch_0
    move-exception v0

    #@2b
    .line 1210
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3453
    if-eq p1, v0, :cond_0

    #@3
    .line 3454
    const/4 v1, 0x2

    #@4
    if-ne p1, v1, :cond_1

    #@6
    .line 3453
    :cond_0
    :goto_0
    return v0

    #@7
    .line 3454
    :cond_1
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private native nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setRetransmitEndpoint(Ljava/lang/String;I)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private populateInbandTracks()V
    .locals 7

    #@0
    .prologue
    .line 2307
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    #@3
    move-result-object v2

    #@4
    .line 2308
    .local v2, "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@6
    monitor-enter v4

    #@7
    .line 2309
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v3, v2

    #@9
    if-ge v0, v3, :cond_2

    #@b
    .line 2310
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    #@d
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 2309
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2313
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    #@18
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    #@1b
    .line 2317
    aget-object v3, v2, v0

    #@1d
    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    #@20
    move-result v3

    #@21
    const/4 v5, 0x4

    #@22
    if-ne v3, v5, :cond_1

    #@24
    .line 2318
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@26
    .line 2319
    aget-object v5, v2, v0

    #@28
    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    #@2b
    move-result-object v5

    #@2c
    .line 2318
    invoke-virtual {v3, v5}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    #@2f
    move-result-object v1

    #@30
    .line 2320
    .local v1, "track":Landroid/media/SubtitleTrack;
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v5

    #@36
    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    goto :goto_1

    #@3e
    .line 2308
    .end local v1    # "track":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v3

    #@3f
    monitor-exit v4

    #@40
    throw v3

    #@41
    .line 2322
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v5

    #@47
    const/4 v6, 0x0

    #@48
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    goto :goto_1

    #@50
    :cond_2
    monitor-exit v4

    #@51
    .line 2306
    return-void
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2978
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/media/MediaPlayer;

    #@8
    .line 2979
    .local v1, "mp":Landroid/media/MediaPlayer;
    if-nez v1, :cond_0

    #@a
    .line 2980
    return-void

    #@b
    .line 2983
    :cond_0
    const/16 v2, 0xc8

    #@d
    if-ne p1, v2, :cond_1

    #@f
    const/4 v2, 0x2

    #@10
    if-ne p2, v2, :cond_1

    #@12
    .line 2985
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    #@15
    .line 2987
    :cond_1
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 2988
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@1b
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1e
    move-result-object v0

    #@1f
    .line 2989
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@21
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@24
    .line 2976
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private scanInternalSubtitleTracks()V
    .locals 2

    #@0
    .prologue
    .line 2294
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2295
    const-string/jumbo v0, "MediaPlayer"

    #@7
    const-string/jumbo v1, "setSubtitleAnchor in MediaPlayer"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2296
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    #@10
    .line 2299
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    #@13
    .line 2301
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 2302
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@19
    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    #@1c
    .line 2293
    :cond_1
    return-void
.end method

.method private selectOrDeselectInbandTrack(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 2689
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v0

    #@8
    .line 2691
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.IMediaPlayer"

    #@b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2692
    if-eqz p2, :cond_0

    #@10
    const/4 v2, 0x4

    #@11
    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2693
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 2694
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 2696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 2697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 2687
    return-void

    #@21
    .line 2692
    :cond_0
    const/4 v2, 0x5

    #@22
    goto :goto_0

    #@23
    .line 2695
    :catchall_0
    move-exception v2

    #@24
    .line 2696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 2697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 2695
    throw v2
.end method

.method private selectOrDeselectTrack(IZ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x0

    #@2
    .line 2639
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    #@5
    .line 2641
    const/4 v1, 0x0

    #@6
    .line 2643
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@8
    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    check-cast v1, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 2649
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@10
    check-cast v3, Landroid/media/SubtitleTrack;

    #@12
    .line 2650
    .local v3, "track":Landroid/media/SubtitleTrack;
    if-nez v3, :cond_0

    #@14
    .line 2652
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@16
    check-cast v5, Ljava/lang/Integer;

    #@18
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v5

    #@1c
    invoke-direct {p0, v5, p2}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    #@1f
    .line 2653
    return-void

    #@20
    .line 2644
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    :catch_0
    move-exception v0

    #@21
    .line 2646
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-void

    #@22
    .line 2656
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .restart local v3    # "track":Landroid/media/SubtitleTrack;
    :cond_0
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@24
    if-nez v5, :cond_1

    #@26
    .line 2657
    return-void

    #@27
    .line 2660
    :cond_1
    if-nez p2, :cond_3

    #@29
    .line 2662
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@2b
    invoke-virtual {v5}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    #@2e
    move-result-object v5

    #@2f
    if-ne v5, v3, :cond_2

    #@31
    .line 2663
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@33
    invoke-virtual {v5, v6}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    #@36
    .line 2667
    :goto_0
    return-void

    #@37
    .line 2665
    :cond_2
    const-string/jumbo v5, "MediaPlayer"

    #@3a
    const-string/jumbo v6, "trying to deselect track that was not selected"

    #@3d
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    goto :goto_0

    #@41
    .line 2671
    :cond_3
    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getTrackType()I

    #@44
    move-result v5

    #@45
    if-ne v5, v7, :cond_5

    #@47
    .line 2672
    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    #@4a
    move-result v4

    #@4b
    .line 2673
    .local v4, "ttIndex":I
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@4d
    monitor-enter v6

    #@4e
    .line 2674
    if-ltz v4, :cond_4

    #@50
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@52
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    #@55
    move-result v5

    #@56
    if-ge v4, v5, :cond_4

    #@58
    .line 2675
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@5a
    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v2

    #@5e
    check-cast v2, Landroid/util/Pair;

    #@60
    .line 2676
    .local v2, "p2":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@62
    if-eqz v5, :cond_4

    #@64
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@66
    if-nez v5, :cond_4

    #@68
    .line 2678
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@6a
    check-cast v5, Ljava/lang/Integer;

    #@6c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@6f
    move-result v5

    #@70
    const/4 v7, 0x0

    #@71
    invoke-direct {p0, v5, v7}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@74
    .end local v2    # "p2":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_4
    monitor-exit v6

    #@75
    .line 2683
    .end local v4    # "ttIndex":I
    :cond_5
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@77
    invoke-virtual {v5, v3}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    #@7a
    .line 2637
    return-void

    #@7b
    .line 2673
    .restart local v4    # "ttIndex":I
    :catchall_0
    move-exception v5

    #@7c
    monitor-exit v6

    #@7d
    throw v5
.end method

.method private setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1079
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3
    move-result-object v4

    #@4
    .line 1080
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 1081
    .local v3, "scheme":Ljava/lang/String;
    const-string/jumbo v5, "file"

    #@b
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    .line 1082
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    .line 1093
    :cond_0
    new-instance v1, Ljava/io/File;

    #@17
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1a
    .line 1094
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_2

    #@20
    .line 1095
    new-instance v2, Ljava/io/FileInputStream;

    #@22
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@25
    .line 1096
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@28
    move-result-object v0

    #@29
    .line 1097
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    #@2c
    .line 1098
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    #@2f
    .line 1078
    return-void

    #@30
    .line 1083
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_1
    if-eqz v3, :cond_0

    #@32
    .line 1086
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    #@35
    move-result-object v5

    #@36
    .line 1085
    invoke-direct {p0, v5, p1, p2, p3}, Landroid/media/MediaPlayer;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@39
    .line 1090
    return-void

    #@3a
    .line 1100
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    new-instance v5, Ljava/io/IOException;

    #@3c
    const-string/jumbo v6, "setDataSource failed."

    #@3f
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@42
    throw v5
.end method

.method private native setParameter(ILandroid/os/Parcel;)Z
.end method

.method private declared-synchronized setSubtitleAnchor()V
    .locals 5

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2154
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 2155
    new-instance v2, Landroid/os/HandlerThread;

    #@7
    const-string/jumbo v3, "SetSubtitleAnchorThread"

    #@a
    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@d
    .line 2156
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    #@10
    .line 2157
    new-instance v1, Landroid/os/Handler;

    #@12
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@19
    .line 2158
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/media/MediaPlayer$2;

    #@1b
    invoke-direct {v3, p0, v2}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;Landroid/os/HandlerThread;)V

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 2177
    :try_start_1
    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "thread":Landroid/os/HandlerThread;
    :cond_0
    :goto_0
    monitor-exit p0

    #@25
    .line 2153
    return-void

    #@26
    .line 2178
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "thread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v0

    #@27
    .line 2179
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    #@2e
    .line 2180
    const-string/jumbo v3, "MediaPlayer"

    #@31
    const-string/jumbo v4, "failed to join SetSubtitleAnchorThread"

    #@34
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    goto :goto_0

    #@38
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v3

    #@39
    monitor-exit p0

    #@3a
    throw v3
.end method

.method private stayAwake(Z)V
    .locals 1
    .param p1, "awake"    # Z

    #@0
    .prologue
    .line 1305
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1306
    if-eqz p1, :cond_0

    #@6
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 1308
    :cond_0
    if-nez p1, :cond_1

    #@10
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@12
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 1309
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1d
    .line 1312
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    #@1f
    .line 1313
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    #@22
    .line 1304
    return-void

    #@23
    .line 1307
    :cond_2
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@25
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@28
    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    #@0
    .prologue
    .line 1317
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1318
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@6
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    #@c
    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    #@f
    .line 1316
    :cond_0
    return-void

    #@10
    .line 1318
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2243
    move-object v1, p1

    #@1
    .line 2244
    .local v1, "fIs":Ljava/io/InputStream;
    move-object v0, p2

    #@2
    .line 2248
    .local v0, "fFormat":Landroid/media/MediaFormat;
    iget-object v5, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    #@4
    monitor-enter v5

    #@5
    .line 2249
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    #@7
    invoke-virtual {v4, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v5

    #@b
    .line 2253
    new-instance v3, Landroid/os/HandlerThread;

    #@d
    const-string/jumbo v4, "SubtitleReadThread"

    #@10
    .line 2254
    const/16 v5, 0x9

    #@12
    .line 2253
    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@15
    .line 2255
    .local v3, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    #@18
    .line 2256
    new-instance v2, Landroid/os/Handler;

    #@1a
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1d
    move-result-object v4

    #@1e
    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@21
    .line 2257
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Landroid/media/MediaPlayer$3;

    #@23
    invoke-direct {v4, p0, v1, v0, v3}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    #@26
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@29
    .line 2241
    return-void

    #@2a
    .line 2248
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2380
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 2381
    .local v4, "scheme":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@6
    const-string/jumbo v5, "file"

    #@9
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 2382
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {p0, v5, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2383
    return-void

    #@17
    .line 2386
    :cond_1
    const/4 v2, 0x0

    #@18
    .line 2388
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1b
    move-result-object v3

    #@1c
    .line 2389
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v5, "r"

    #@1f
    invoke-virtual {v3, p2, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v2

    #@23
    .line 2390
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v2, :cond_3

    #@25
    .line 2398
    if-eqz v2, :cond_2

    #@27
    .line 2399
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@2a
    .line 2391
    :cond_2
    return-void

    #@2b
    .line 2393
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {p0, v5, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 2398
    if-eqz v2, :cond_4

    #@34
    .line 2399
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@37
    .line 2394
    :cond_4
    return-void

    #@38
    .line 2396
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    #@39
    .line 2398
    .local v0, "ex":Ljava/io/IOException;
    if-eqz v2, :cond_5

    #@3b
    .line 2399
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@3e
    .line 2379
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_5
    :goto_0
    return-void

    #@3f
    .line 2395
    :catch_1
    move-exception v1

    #@40
    .line 2398
    .local v1, "ex":Ljava/lang/SecurityException;
    if-eqz v2, :cond_5

    #@42
    .line 2399
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@45
    goto :goto_0

    #@46
    .line 2397
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v5

    #@47
    .line 2398
    if-eqz v2, :cond_6

    #@49
    .line 2399
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@4c
    .line 2397
    :cond_6
    throw v5
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2446
    invoke-static/range {p6 .. p6}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2447
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v16, "Illegal mimeType for timed text source: "

    #@10
    move-object/from16 v0, v16

    #@12
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    move-object/from16 v0, p6

    #@18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v3

    #@24
    .line 2452
    :cond_0
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@26
    move-object/from16 v0, p1

    #@28
    invoke-interface {v3, v0}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v14

    #@2c
    .line 2458
    .local v14, "fd2":Ljava/io/FileDescriptor;
    new-instance v13, Landroid/media/MediaFormat;

    #@2e
    invoke-direct {v13}, Landroid/media/MediaFormat;-><init>()V

    #@31
    .line 2459
    .local v13, "fFormat":Landroid/media/MediaFormat;
    const-string/jumbo v3, "mime"

    #@34
    move-object/from16 v0, p6

    #@36
    invoke-virtual {v13, v3, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    .line 2460
    const-string/jumbo v3, "is-timed-text"

    #@3c
    const/4 v4, 0x1

    #@3d
    invoke-virtual {v13, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    #@40
    .line 2463
    move-object/from16 v0, p0

    #@42
    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@44
    if-nez v3, :cond_1

    #@46
    .line 2464
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    #@49
    .line 2467
    :cond_1
    move-object/from16 v0, p0

    #@4b
    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@4d
    invoke-virtual {v3, v13}, Landroid/media/SubtitleController;->hasRendererFor(Landroid/media/MediaFormat;)Z

    #@50
    move-result v3

    #@51
    if-nez v3, :cond_2

    #@53
    .line 2469
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@56
    move-result-object v2

    #@57
    .line 2470
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    #@59
    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@5b
    new-instance v4, Landroid/media/SRTRenderer;

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@61
    move-object/from16 v16, v0

    #@63
    move-object/from16 v0, v16

    #@65
    invoke-direct {v4, v2, v0}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@68
    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    #@6b
    .line 2472
    .end local v2    # "context":Landroid/content/Context;
    :cond_2
    move-object/from16 v0, p0

    #@6d
    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@6f
    invoke-virtual {v3, v13}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    #@72
    move-result-object v10

    #@73
    .line 2473
    .local v10, "track":Landroid/media/SubtitleTrack;
    move-object/from16 v0, p0

    #@75
    iget-object v4, v0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@77
    monitor-enter v4

    #@78
    .line 2474
    :try_start_1
    move-object/from16 v0, p0

    #@7a
    iget-object v3, v0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@7c
    const/16 v16, 0x0

    #@7e
    move-object/from16 v0, v16

    #@80
    invoke-static {v0, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@83
    move-result-object v16

    #@84
    move-object/from16 v0, v16

    #@86
    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@89
    monitor-exit v4

    #@8a
    .line 2477
    move-object v5, v14

    #@8b
    .line 2478
    .local v5, "fd3":Ljava/io/FileDescriptor;
    move-wide/from16 v6, p2

    #@8d
    .line 2479
    .local v6, "offset2":J
    move-wide/from16 v8, p4

    #@8f
    .line 2480
    .local v8, "length2":J
    new-instance v11, Landroid/os/HandlerThread;

    #@91
    .line 2481
    const-string/jumbo v3, "TimedTextReadThread"

    #@94
    .line 2482
    const/16 v4, 0x9

    #@96
    .line 2480
    invoke-direct {v11, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@99
    .line 2483
    .local v11, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    #@9c
    .line 2484
    new-instance v15, Landroid/os/Handler;

    #@9e
    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@a1
    move-result-object v3

    #@a2
    invoke-direct {v15, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@a5
    .line 2485
    .local v15, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/media/MediaPlayer$4;

    #@a7
    move-object/from16 v4, p0

    #@a9
    invoke-direct/range {v3 .. v11}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V

    #@ac
    invoke-virtual {v15, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@af
    .line 2445
    return-void

    #@b0
    .line 2453
    .end local v5    # "fd3":Ljava/io/FileDescriptor;
    .end local v6    # "offset2":J
    .end local v8    # "length2":J
    .end local v10    # "track":Landroid/media/SubtitleTrack;
    .end local v11    # "thread":Landroid/os/HandlerThread;
    .end local v13    # "fFormat":Landroid/media/MediaFormat;
    .end local v14    # "fd2":Ljava/io/FileDescriptor;
    .end local v15    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v12

    #@b1
    .line 2454
    .local v12, "ex":Landroid/system/ErrnoException;
    const-string/jumbo v3, "MediaPlayer"

    #@b4
    invoke-virtual {v12}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@b7
    move-result-object v4

    #@b8
    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@bb
    .line 2455
    new-instance v3, Ljava/lang/RuntimeException;

    #@bd
    invoke-direct {v3, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c0
    throw v3

    #@c1
    .line 2473
    .end local v12    # "ex":Landroid/system/ErrnoException;
    .restart local v10    # "track":Landroid/media/SubtitleTrack;
    .restart local v13    # "fFormat":Landroid/media/MediaFormat;
    .restart local v14    # "fd2":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v3

    #@c2
    monitor-exit v4

    #@c3
    throw v3
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2423
    const-wide/16 v2, 0x0

    #@2
    const-wide v4, 0x7ffffffffffffffL

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move-object v6, p2

    #@a
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    #@d
    .line 2421
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2346
    invoke-static {p2}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 2347
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "Illegal mimeType for timed text source: "

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 2348
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1c
    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 2351
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    #@22
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@25
    .line 2352
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 2353
    new-instance v2, Ljava/io/FileInputStream;

    #@2d
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@30
    .line 2354
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@33
    move-result-object v0

    #@34
    .line 2355
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0, p2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    #@37
    .line 2356
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    #@3a
    .line 2345
    return-void

    #@3b
    .line 2359
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    #@3d
    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@40
    throw v4
.end method

.method public native attachAuxEffect(I)V
.end method

.method public deselectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2633
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    #@4
    .line 2632
    return-void
.end method

.method public easyPlaybackParams(FI)Landroid/media/PlaybackParams;
    .locals 4
    .param p1, "rate"    # F
    .param p2, "audioMode"    # I

    #@0
    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    #@2
    .line 1419
    new-instance v1, Landroid/media/PlaybackParams;

    #@4
    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    #@7
    .line 1420
    .local v1, "params":Landroid/media/PlaybackParams;
    invoke-virtual {v1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    #@a
    .line 1421
    packed-switch p2, :pswitch_data_0

    #@d
    .line 1433
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Audio playback mode "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " is not supported"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 1434
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2a
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 1423
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    #@35
    .line 1436
    :goto_0
    return-object v1

    #@36
    .line 1426
    :pswitch_1
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    #@3d
    move-result-object v2

    #@3e
    .line 1427
    const/4 v3, 0x2

    #@3f
    .line 1426
    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    #@42
    goto :goto_0

    #@43
    .line 1430
    :pswitch_2
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    #@4a
    goto :goto_0

    #@4b
    .line 1421
    nop

    #@4c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 2757
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    #@3
    return-void
.end method

.method public native getAudioSessionId()I
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .locals 1

    #@0
    .prologue
    .line 2782
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2783
    new-instance v0, Landroid/media/MediaPlayer$TimeProvider;

    #@6
    invoke-direct {v0, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    #@9
    iput-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@b
    .line 2785
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@d
    return-object v0
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 4
    .param p1, "update_only"    # Z
    .param p2, "apply_filter"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    .line 1557
    .local v1, "reply":Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    #@7
    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    #@a
    .line 1559
    .local v0, "data":Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 1560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@13
    .line 1561
    return-object v3

    #@14
    .line 1566
    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_1

    #@1a
    .line 1567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 1568
    return-object v3

    #@1e
    .line 1570
    :cond_1
    return-object v0
.end method

.method public native getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public getSelectedTrack(I)I
    .locals 8
    .param p1, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2547
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@2
    if-eqz v6, :cond_3

    #@4
    .line 2548
    const/4 v6, 0x4

    #@5
    if-eq p1, v6, :cond_0

    #@7
    .line 2549
    const/4 v6, 0x3

    #@8
    if-ne p1, v6, :cond_3

    #@a
    .line 2550
    :cond_0
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@c
    invoke-virtual {v6}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    #@f
    move-result-object v5

    #@10
    .line 2551
    .local v5, "subtitleTrack":Landroid/media/SubtitleTrack;
    if-eqz v5, :cond_3

    #@12
    .line 2552
    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@14
    monitor-enter v7

    #@15
    .line 2553
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@18
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    #@1b
    move-result v6

    #@1c
    if-ge v0, v6, :cond_2

    #@1e
    .line 2554
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@20
    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/util/Pair;

    #@26
    .line 2555
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@28
    if-ne v6, v5, :cond_1

    #@2a
    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getTrackType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result v6

    #@2e
    if-ne v6, p1, :cond_1

    #@30
    monitor-exit v7

    #@31
    .line 2556
    return v0

    #@32
    .line 2553
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_2
    monitor-exit v7

    #@36
    .line 2563
    .end local v0    # "i":I
    .end local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@39
    move-result-object v4

    #@3a
    .line 2564
    .local v4, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3d
    move-result-object v3

    #@3e
    .line 2566
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_1
    const-string/jumbo v6, "android.media.IMediaPlayer"

    #@41
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@44
    .line 2567
    const/4 v6, 0x7

    #@45
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 2568
    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 2569
    invoke-virtual {p0, v4, v3}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    #@4e
    .line 2570
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v1

    #@52
    .line 2571
    .local v1, "inbandTrackIndex":I
    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@54
    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@55
    .line 2572
    const/4 v0, 0x0

    #@56
    .restart local v0    # "i":I
    :goto_1
    :try_start_2
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@58
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    #@5b
    move-result v6

    #@5c
    if-ge v0, v6, :cond_5

    #@5e
    .line 2573
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@60
    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v2

    #@64
    check-cast v2, Landroid/util/Pair;

    #@66
    .line 2574
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@68
    if-eqz v6, :cond_4

    #@6a
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@6c
    check-cast v6, Ljava/lang/Integer;

    #@6e
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@71
    move-result v6

    #@72
    if-ne v6, v1, :cond_4

    #@74
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@75
    .line 2581
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@78
    .line 2582
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@7b
    .line 2575
    return v0

    #@7c
    .line 2552
    .end local v1    # "inbandTrackIndex":I
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v3    # "reply":Landroid/os/Parcel;
    .end local v4    # "request":Landroid/os/Parcel;
    .restart local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v6

    #@7d
    monitor-exit v7

    #@7e
    throw v6

    #@7f
    .line 2572
    .end local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    .restart local v1    # "inbandTrackIndex":I
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .restart local v3    # "reply":Landroid/os/Parcel;
    .restart local v4    # "request":Landroid/os/Parcel;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@81
    goto :goto_1

    #@82
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_5
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@83
    .line 2579
    const/4 v6, -0x1

    #@84
    .line 2581
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@87
    .line 2582
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@8a
    .line 2579
    return v6

    #@8b
    .line 2571
    :catchall_1
    move-exception v6

    #@8c
    :try_start_5
    monitor-exit v7

    #@8d
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@8e
    .line 2580
    .end local v0    # "i":I
    .end local v1    # "inbandTrackIndex":I
    :catchall_2
    move-exception v6

    #@8f
    .line 2581
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@92
    .line 2582
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@95
    .line 2580
    throw v6
.end method

.method public native getSyncParams()Landroid/media/SyncParams;
.end method

.method public getTimestamp()Landroid/media/MediaTimestamp;
    .locals 7

    #@0
    .prologue
    .line 1514
    :try_start_0
    new-instance v1, Landroid/media/MediaTimestamp;

    #@2
    .line 1515
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    #@5
    move-result v2

    #@6
    int-to-long v2, v2

    #@7
    const-wide/16 v4, 0x3e8

    #@9
    mul-long/2addr v2, v4

    #@a
    .line 1516
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@d
    move-result-wide v4

    #@e
    .line 1517
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_0

    #@14
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6}, Landroid/media/PlaybackParams;->getSpeed()F

    #@1b
    move-result v6

    #@1c
    .line 1514
    :goto_0
    invoke-direct/range {v1 .. v6}, Landroid/media/MediaTimestamp;-><init>(JJF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    return-object v1

    #@20
    .line 1517
    :cond_0
    const/4 v6, 0x0

    #@21
    goto :goto_0

    #@22
    .line 1518
    :catch_0
    move-exception v0

    #@23
    .line 1519
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    #@24
    return-object v1
.end method

.method public getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2074
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    #@3
    move-result-object v4

    #@4
    .line 2076
    .local v4, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@6
    monitor-enter v6

    #@7
    .line 2077
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@9
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    #@c
    move-result v5

    #@d
    new-array v0, v5, [Landroid/media/MediaPlayer$TrackInfo;

    #@f
    .line 2078
    .local v0, "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    array-length v5, v0

    #@11
    if-ge v1, v5, :cond_1

    #@13
    .line 2079
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@15
    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/util/Pair;

    #@1b
    .line 2080
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1d
    if-eqz v5, :cond_0

    #@1f
    .line 2082
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@21
    check-cast v5, Ljava/lang/Integer;

    #@23
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v5

    #@27
    aget-object v5, v4, v5

    #@29
    aput-object v5, v0, v1

    #@2b
    .line 2078
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 2084
    :cond_0
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@30
    check-cast v3, Landroid/media/SubtitleTrack;

    #@32
    .line 2085
    .local v3, "track":Landroid/media/SubtitleTrack;
    new-instance v5, Landroid/media/MediaPlayer$TrackInfo;

    #@34
    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getTrackType()I

    #@37
    move-result v7

    #@38
    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    #@3b
    move-result-object v8

    #@3c
    invoke-direct {v5, v7, v8}, Landroid/media/MediaPlayer$TrackInfo;-><init>(ILandroid/media/MediaFormat;)V

    #@3f
    aput-object v5, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    goto :goto_1

    #@42
    .line 2076
    .end local v0    # "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v5

    #@43
    monitor-exit v6

    #@44
    throw v5

    #@45
    .restart local v0    # "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    .restart local v1    # "i":I
    :cond_1
    monitor-exit v6

    #@46
    .line 2088
    return-object v0
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 704
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    .line 705
    .local v0, "retcode":I
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@8
    .line 706
    if-eqz v0, :cond_0

    #@a
    .line 707
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "failure code: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 703
    :cond_0
    return-void
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    #@0
    .prologue
    .line 684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 685
    .local v0, "parcel":Landroid/os/Parcel;
    const-string/jumbo v1, "android.media.IMediaPlayer"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 686
    return-object v0
.end method

.method public onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .locals 6
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2207
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@3
    if-ltz v3, :cond_0

    #@5
    .line 2209
    :try_start_0
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@7
    const/4 v4, 0x0

    #@8
    invoke-direct {p0, v3, v4}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    #@b
    .line 2212
    :goto_0
    const/4 v3, -0x1

    #@c
    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@e
    .line 2214
    :cond_0
    invoke-virtual {p0, v5}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    #@11
    .line 2215
    if-nez p1, :cond_1

    #@13
    .line 2216
    return-void

    #@14
    .line 2219
    :cond_1
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@16
    monitor-enter v4

    #@17
    .line 2220
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@19
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v2

    #@1d
    .local v2, "p$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Landroid/util/Pair;

    #@29
    .line 2221
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2b
    if-eqz v3, :cond_2

    #@2d
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2f
    if-ne v3, p1, :cond_2

    #@31
    .line 2223
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@33
    check-cast v3, Ljava/lang/Integer;

    #@35
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@38
    move-result v3

    #@39
    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_3
    monitor-exit v4

    #@3c
    .line 2229
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@3e
    if-ltz v3, :cond_4

    #@40
    .line 2231
    :try_start_2
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@42
    const/4 v4, 0x1

    #@43
    invoke-direct {p0, v3, v4}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    #@46
    .line 2234
    :goto_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@48
    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    #@4b
    .line 2206
    :cond_4
    return-void

    #@4c
    .line 2219
    .end local v2    # "p$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@4d
    monitor-exit v4

    #@4e
    throw v3

    #@4f
    .line 2232
    .restart local v2    # "p$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@50
    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    #@51
    .line 2210
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "p$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    #@52
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1243
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    #@4
    .line 1244
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    #@7
    .line 1242
    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1163
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_prepare()V

    #@3
    .line 1164
    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    #@6
    .line 1162
    return-void
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1659
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    #@5
    .line 1660
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    #@8
    .line 1661
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@a
    .line 1662
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@c
    .line 1663
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@e
    .line 1664
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    #@10
    .line 1665
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@12
    .line 1666
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    #@14
    .line 1667
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@16
    .line 1668
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    #@18
    .line 1669
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 1670
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@1e
    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    #@21
    .line 1671
    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@23
    .line 1673
    :cond_0
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@25
    .line 1674
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    #@28
    .line 1658
    return-void
.end method

.method public reset()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1685
    const/4 v3, -0x1

    #@2
    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@4
    .line 1686
    iget-object v4, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    #@6
    monitor-enter v4

    #@7
    .line 1687
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "is$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1689
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 1690
    :catch_0
    move-exception v0

    #@1e
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@1f
    .line 1693
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :try_start_2
    iget-object v3, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    #@21
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    monitor-exit v4

    #@25
    .line 1695
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 1696
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@2b
    invoke-virtual {v3}, Landroid/media/SubtitleController;->reset()V

    #@2e
    .line 1698
    :cond_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 1699
    iget-object v3, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@34
    invoke-virtual {v3}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    #@37
    .line 1700
    iput-object v5, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@39
    .line 1703
    :cond_2
    const/4 v3, 0x0

    #@3a
    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    #@3d
    .line 1704
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    #@40
    .line 1706
    iget-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@42
    if-eqz v3, :cond_3

    #@44
    .line 1707
    iget-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@46
    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@49
    .line 1710
    :cond_3
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@4b
    monitor-enter v4

    #@4c
    .line 1711
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@4e
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    #@51
    .line 1712
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    #@53
    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@56
    monitor-exit v4

    #@57
    .line 1684
    return-void

    #@58
    .line 1686
    .end local v2    # "is$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@59
    monitor-exit v4

    #@5a
    throw v3

    #@5b
    .line 1710
    .restart local v2    # "is$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    #@5c
    monitor-exit v4

    #@5d
    throw v3
.end method

.method public native seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2615
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    #@4
    .line 2614
    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 5
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1753
    if-nez p1, :cond_0

    #@4
    .line 1754
    const-string/jumbo v0, "Cannot set AudioAttributes to null"

    #@7
    .line 1755
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v3, "Cannot set AudioAttributes to null"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 1757
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    #@13
    move-result v4

    #@14
    iput v4, p0, Landroid/media/MediaPlayer;->mUsage:I

    #@16
    .line 1758
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    #@19
    move-result v4

    #@1a
    and-int/lit8 v4, v4, 0x40

    #@1c
    if-eqz v4, :cond_1

    #@1e
    move v2, v3

    #@1f
    :cond_1
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mBypassInterruptionPolicy:Z

    #@21
    .line 1760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@24
    move-result-object v1

    #@25
    .line 1761
    .local v1, "pattributes":Landroid/os/Parcel;
    invoke-virtual {p1, v1, v3}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    .line 1762
    const/16 v2, 0x578

    #@2a
    invoke-direct {p0, v2, v1}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    #@2d
    .line 1763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1752
    return-void
.end method

.method public native setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "streamtype"    # I

    #@0
    .prologue
    .line 1728
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAudioStreamType(I)V

    #@3
    .line 1729
    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    #@5
    .line 1727
    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 1
    .param p1, "level"    # F

    #@0
    .prologue
    .line 1870
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1871
    return-void

    #@7
    .line 1873
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    #@a
    .line 1869
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 973
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    #@4
    .line 972
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 990
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@3
    move-result-object v9

    #@4
    .line 991
    .local v9, "scheme":Ljava/lang/String;
    const-string/jumbo v0, "file"

    #@7
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 992
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    #@14
    .line 993
    return-void

    #@15
    .line 994
    :cond_0
    const-string/jumbo v0, "content"

    #@18
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 995
    const-string/jumbo v0, "settings"

    #@21
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    .line 994
    if-eqz v0, :cond_1

    #@2b
    .line 998
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    #@2e
    move-result v0

    #@2f
    .line 997
    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    #@32
    move-result-object p2

    #@33
    .line 999
    if-nez p2, :cond_1

    #@35
    .line 1000
    new-instance v0, Ljava/io/FileNotFoundException;

    #@37
    const-string/jumbo v1, "Failed to resolve default ringtone"

    #@3a
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 1004
    :cond_1
    const/4 v7, 0x0

    #@3f
    .line 1006
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@42
    move-result-object v8

    #@43
    .line 1007
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    #@46
    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    move-result-object v7

    #@4a
    .line 1008
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v7, :cond_3

    #@4c
    .line 1023
    if-eqz v7, :cond_2

    #@4e
    .line 1024
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@51
    .line 1009
    :cond_2
    return-void

    #@52
    .line 1014
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@55
    move-result-wide v0

    #@56
    const-wide/16 v2, 0x0

    #@58
    cmp-long v0, v0, v2

    #@5a
    if-gez v0, :cond_5

    #@5c
    .line 1015
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@63
    .line 1023
    :goto_0
    if-eqz v7, :cond_4

    #@65
    .line 1024
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@68
    .line 1019
    :cond_4
    return-void

    #@69
    .line 1017
    :cond_5
    :try_start_2
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@70
    move-result-wide v2

    #@71
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@74
    move-result-wide v4

    #@75
    move-object v0, p0

    #@76
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@79
    goto :goto_0

    #@7a
    .line 1020
    .end local v7    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    #@7b
    .line 1021
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v0, "MediaPlayer"

    #@7e
    new-instance v1, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v2, "Couldn\'t open file on client side; trying server side: "

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v1

    #@92
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@95
    .line 1023
    if-eqz v7, :cond_6

    #@97
    .line 1024
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@9a
    .line 1028
    :cond_6
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {p0, v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    #@a1
    .line 989
    return-void

    #@a2
    .line 1022
    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@a3
    .line 1023
    if-eqz v7, :cond_7

    #@a5
    .line 1024
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@a8
    .line 1022
    :cond_7
    throw v0
.end method

.method public setDataSource(Landroid/media/MediaDataSource;)V
    .locals 0
    .param p1, "dataSource"    # Landroid/media/MediaDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1147
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setDataSource(Landroid/media/MediaDataSource;)V

    #@3
    .line 1146
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1118
    const-wide/16 v2, 0x0

    #@2
    const-wide v4, 0x7ffffffffffffffL

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    #@c
    .line 1116
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1133
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    #@3
    .line 1132
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1046
    invoke-direct {p0, p1, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@4
    .line 1045
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1060
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 1061
    .local v3, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    #@2
    .line 1063
    .local v4, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    #@4
    .line 1064
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@7
    move-result v5

    #@8
    new-array v3, v5, [Ljava/lang/String;

    #@a
    .line 1065
    .local v3, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@d
    move-result v5

    #@e
    new-array v4, v5, [Ljava/lang/String;

    #@10
    .line 1067
    .local v4, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    #@11
    .line 1068
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@14
    move-result-object v5

    #@15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/util/Map$Entry;

    #@25
    .line 1069
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Ljava/lang/String;

    #@2b
    aput-object v5, v3, v2

    #@2d
    .line 1070
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Ljava/lang/String;

    #@33
    aput-object v5, v4, v2

    #@35
    .line 1071
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1074
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v3    # "keys":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@3b
    .line 1058
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 724
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@2
    .line 726
    if-eqz p1, :cond_0

    #@4
    .line 727
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@7
    move-result-object v0

    #@8
    .line 731
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    #@b
    .line 732
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    #@e
    .line 723
    return-void

    #@f
    .line 729
    :cond_0
    const/4 v0, 0x0

    #@10
    .local v0, "surface":Landroid/view/Surface;
    goto :goto_0
.end method

.method public native setLooping(Z)V
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1598
    .local p1, "allow":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "block":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 1604
    .local v1, "request":Landroid/os/Parcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    #@7
    move-result v4

    #@8
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@b
    move-result v5

    #@c
    add-int/lit8 v5, v5, 0x1

    #@e
    add-int/lit8 v5, v5, 0x1

    #@10
    invoke-interface {p2}, Ljava/util/Set;->size()I

    #@13
    move-result v6

    #@14
    add-int/2addr v5, v6

    #@15
    mul-int/lit8 v5, v5, 0x4

    #@17
    add-int v0, v4, v5

    #@19
    .line 1606
    .local v0, "capacity":I
    invoke-virtual {v1}, Landroid/os/Parcel;->dataCapacity()I

    #@1c
    move-result v4

    #@1d
    if-ge v4, v0, :cond_0

    #@1f
    .line 1607
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    #@22
    .line 1610
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@25
    move-result v4

    #@26
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 1611
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v3

    #@2d
    .local v3, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_1

    #@33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Ljava/lang/Integer;

    #@39
    .line 1612
    .local v2, "t":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@3c
    move-result v4

    #@3d
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    goto :goto_0

    #@41
    .line 1614
    .end local v2    # "t":Ljava/lang/Integer;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    #@44
    move-result v4

    #@45
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 1615
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object v3

    #@4c
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_2

    #@52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v2

    #@56
    check-cast v2, Ljava/lang/Integer;

    #@58
    .line 1616
    .restart local v2    # "t":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@5b
    move-result v4

    #@5c
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    goto :goto_1

    #@60
    .line 1618
    .end local v2    # "t":Ljava/lang/Integer;
    :cond_2
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    #@63
    move-result v4

    #@64
    return v4
.end method

.method public native setNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@0
    .prologue
    .line 3076
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@2
    .line 3074
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    #@0
    .prologue
    .line 3042
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@2
    .line 3040
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    #@0
    .prologue
    .line 3312
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@2
    .line 3310
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    #@0
    .prologue
    .line 3444
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    #@2
    .line 3442
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    #@0
    .prologue
    .line 3015
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@2
    .line 3013
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    #@0
    .prologue
    .line 3103
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    #@2
    .line 3101
    return-void
.end method

.method public setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@0
    .prologue
    .line 3189
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@2
    .line 3187
    return-void
.end method

.method public setOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    #@0
    .prologue
    .line 3229
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    #@2
    .line 3227
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedTextListener;

    #@0
    .prologue
    .line 3164
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    #@2
    .line 3162
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@0
    .prologue
    .line 3135
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@2
    .line 3133
    return-void
.end method

.method public native setPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method public setRetransmitEndpoint(Ljava/net/InetSocketAddress;)V
    .locals 6
    .param p1, "endpoint"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 2740
    const/4 v0, 0x0

    #@1
    .line 2741
    .local v0, "addrString":Ljava/lang/String;
    const/4 v1, 0x0

    #@2
    .line 2743
    .local v1, "port":I
    if-eqz p1, :cond_0

    #@4
    .line 2744
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 2745
    .local v0, "addrString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    #@f
    move-result v1

    #@10
    .line 2748
    .end local v0    # "addrString":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->native_setRetransmitEndpoint(Ljava/lang/String;I)I

    #@13
    move-result v2

    #@14
    .line 2749
    .local v2, "ret":I
    if-eqz v2, :cond_1

    #@16
    .line 2750
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "Illegal re-transmit endpoint; native ret "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v3

    #@30
    .line 2738
    :cond_1
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    #@0
    .prologue
    .line 1295
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 1296
    if-eqz p1, :cond_0

    #@6
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1297
    const-string/jumbo v0, "MediaPlayer"

    #@d
    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 1299
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    #@15
    .line 1300
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    #@18
    .line 1294
    :cond_1
    return-void
.end method

.method public setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/SubtitleController;
    .param p2, "anchor"    # Landroid/media/SubtitleController$Anchor;

    #@0
    .prologue
    .line 2144
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@2
    .line 2145
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@4
    invoke-virtual {v0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    #@7
    .line 2142
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 754
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    if-eqz p1, :cond_0

    #@7
    .line 755
    const-string/jumbo v0, "MediaPlayer"

    #@a
    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 757
    :cond_0
    iput-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@12
    .line 758
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    #@15
    .line 759
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    #@18
    .line 753
    return-void
.end method

.method public native setSyncParams(Landroid/media/SyncParams;)V
.end method

.method public setVideoScalingMode(I)V
    .locals 5
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 803
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isVideoScalingModeSupported(I)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "Scaling mode "

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    const-string/jumbo v4, " is not supported"

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 805
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@23
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 807
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@2a
    move-result-object v2

    #@2b
    .line 808
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@2e
    move-result-object v1

    #@2f
    .line 810
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IMediaPlayer"

    #@32
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@35
    .line 811
    const/4 v3, 0x6

    #@36
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 812
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 813
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 815
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 802
    return-void

    #@46
    .line 814
    :catchall_0
    move-exception v3

    #@47
    .line 815
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 814
    throw v3
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    #@0
    .prologue
    .line 1811
    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    #@3
    .line 1810
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    #@0
    .prologue
    .line 1798
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1799
    return-void

    #@7
    .line 1801
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    #@a
    .line 1797
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1267
    const/4 v1, 0x0

    #@2
    .line 1268
    .local v1, "washeld":Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 1269
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1270
    const/4 v1, 0x1

    #@f
    .line 1271
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@11
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@14
    .line 1273
    :cond_0
    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@16
    .line 1276
    :cond_1
    const-string/jumbo v2, "power"

    #@19
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/os/PowerManager;

    #@1f
    .line 1277
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    #@21
    or-int/2addr v2, p2

    #@22
    const-class v3, Landroid/media/MediaPlayer;

    #@24
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2e
    .line 1278
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@30
    const/4 v3, 0x0

    #@31
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@34
    .line 1279
    if-eqz v1, :cond_2

    #@36
    .line 1280
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@38
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@3b
    .line 1266
    :cond_2
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1190
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1191
    invoke-direct {p0, v1, v1}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    #@a
    .line 1193
    :cond_0
    const/4 v0, 0x1

    #@b
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    #@e
    .line 1194
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    #@11
    .line 1189
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1230
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    #@4
    .line 1231
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    #@7
    .line 1229
    return-void
.end method
