.class public Landroid/media/MediaPlayer;
.super Landroid/media/PlayerBase;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$1;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnSubtitleDataListener;,
        Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$TimeProvider;,
        Landroid/media/MediaPlayer$TrackInfo;
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

.field public static final MEDIA_MIMETYPE_TEXT_CEA_708:Ljava/lang/String; = "text/cea-708"

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
    .line 595
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 596
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    #@9
    .line 558
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 625
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    #@4
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@7
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@a
    move-result-object v1

    #@b
    invoke-direct {p0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;)V

    #@e
    .line 610
    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@10
    .line 613
    const/high16 v1, -0x80000000

    #@12
    iput v1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    #@14
    .line 614
    iput v3, p0, Landroid/media/MediaPlayer;->mUsage:I

    #@16
    .line 2090
    new-instance v1, Ljava/util/Vector;

    #@18
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@1b
    iput-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@1d
    .line 2091
    new-instance v1, Ljava/util/BitSet;

    #@1f
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    #@22
    iput-object v1, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    #@24
    .line 2219
    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@26
    .line 2222
    new-instance v1, Landroid/media/MediaPlayer$1;

    #@28
    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;)V

    #@2b
    iput-object v1, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@2d
    .line 628
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@30
    move-result-object v0

    #@31
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@33
    .line 629
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    #@35
    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    #@38
    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@3a
    .line 636
    :goto_0
    new-instance v1, Landroid/media/MediaPlayer$TimeProvider;

    #@3c
    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    #@3f
    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@41
    .line 637
    new-instance v1, Ljava/util/Vector;

    #@43
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@46
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    #@48
    .line 642
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@4a
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@4d
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    #@50
    .line 624
    return-void

    #@51
    .line 630
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@54
    move-result-object v0

    #@55
    if-eqz v0, :cond_1

    #@57
    .line 631
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    #@59
    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    #@5c
    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@5e
    goto :goto_0

    #@5f
    .line 633
    :cond_1
    iput-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@61
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

.method private attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1015
    const/4 v0, 0x0

    #@2
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string/jumbo v2, "r"

    #@5
    invoke-virtual {p1, p2, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@8
    move-result-object v0

    #@9
    .line 1016
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    .line 1017
    const/4 v2, 0x1

    #@d
    .line 1021
    if-eqz v0, :cond_0

    #@f
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@12
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    #@14
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@15
    .line 1018
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v1

    #@16
    .line 1019
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "MediaPlayer"

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Couldn\'t open "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    const-string/jumbo v4, ": "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 1020
    const/4 v2, 0x0

    #@3c
    return v2

    #@3d
    .line 1021
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v3

    #@3e
    goto :goto_0

    #@3f
    .line 1017
    :cond_1
    return v2

    #@40
    .line 1021
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_2
    move-exception v2

    #@41
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    :catchall_0
    move-exception v3

    #@43
    move-object v5, v3

    #@44
    move-object v3, v2

    #@45
    move-object v2, v5

    #@46
    :goto_1
    if-eqz v0, :cond_2

    #@48
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@4b
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    #@4d
    :try_start_5
    throw v3

    #@4e
    :catch_3
    move-exception v4

    #@4f
    if-nez v3, :cond_3

    #@51
    move-object v3, v4

    #@52
    goto :goto_2

    #@53
    :cond_3
    if-eq v3, v4, :cond_2

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@58
    goto :goto_2

    #@59
    :cond_4
    throw v2
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@5a
    :catchall_1
    move-exception v2

    #@5b
    goto :goto_1
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2165
    const-string/jumbo v0, "application/x-subrip"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2166
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 2168
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
    .line 913
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    #@4
    move-result v0

    #@5
    .line 914
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
    .line 931
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    #@8
    move-result-object v7

    #@9
    .line 932
    .local v7, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v7, :cond_0

    #@b
    return-object v11

    #@c
    .line 934
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    #@e
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    #@11
    .line 936
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz p2, :cond_1

    #@13
    move-object v6, p2

    #@14
    .line 938
    .local v6, "aa":Landroid/media/AudioAttributes;
    :goto_0
    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    #@17
    .line 939
    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    #@1a
    .line 941
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
    .line 942
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@2c
    .line 943
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    #@2f
    .line 944
    return-object v0

    #@30
    .line 937
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
    goto :goto_0

    #@3a
    .line 951
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v10

    #@3b
    .line 952
    .local v10, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v1, "MediaPlayer"

    #@3e
    const-string/jumbo v2, "create failed:"

    #@41
    invoke-static {v1, v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    .line 955
    .end local v10    # "ex":Ljava/lang/SecurityException;
    :goto_1
    return-object v11

    #@45
    .line 948
    :catch_1
    move-exception v9

    #@46
    .line 949
    .local v9, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "MediaPlayer"

    #@49
    const-string/jumbo v2, "create failed:"

    #@4c
    invoke-static {v1, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4f
    goto :goto_1

    #@50
    .line 945
    .end local v9    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    #@51
    .line 946
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
    .line 830
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
    .line 850
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    #@4
    move-result v0

    #@5
    .line 851
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
    .line 869
    :try_start_0
    new-instance v4, Landroid/media/MediaPlayer;

    #@3
    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    #@6
    .line 870
    .local v4, "mp":Landroid/media/MediaPlayer;
    if-eqz p3, :cond_1

    #@8
    move-object v0, p3

    #@9
    .line 872
    .local v0, "aa":Landroid/media/AudioAttributes;
    :goto_0
    invoke-virtual {v4, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    #@c
    .line 873
    invoke-virtual {v4, p4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    #@f
    .line 874
    invoke-virtual {v4, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    #@12
    .line 875
    if-eqz p2, :cond_0

    #@14
    .line 876
    invoke-virtual {v4, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    #@17
    .line 878
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    #@1a
    .line 879
    return-object v4

    #@1b
    .line 871
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
    goto :goto_0

    #@25
    .line 886
    .end local v4    # "mp":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v3

    #@26
    .line 887
    .local v3, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v5, "MediaPlayer"

    #@29
    const-string/jumbo v6, "create failed:"

    #@2c
    invoke-static {v5, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    .line 891
    .end local v3    # "ex":Ljava/lang/SecurityException;
    :goto_1
    return-object v7

    #@30
    .line 883
    :catch_1
    move-exception v2

    #@31
    .line 884
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "MediaPlayer"

    #@34
    const-string/jumbo v6, "create failed:"

    #@37
    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_1

    #@3b
    .line 880
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    #@3c
    .line 881
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
    .line 1220
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1221
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_getAudioStreamType()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    #@c
    .line 1223
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
    .line 2121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 2122
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v0

    #@8
    .line 2124
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IMediaPlayer"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2125
    const/4 v3, 0x1

    #@f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 2126
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    #@15
    .line 2127
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
    .line 2130
    .local v2, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 2131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2128
    return-object v2

    #@24
    .line 2129
    .end local v2    # "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_0
    move-exception v3

    #@25
    .line 2130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 2131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 2129
    throw v3
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3524
    if-eq p1, v0, :cond_0

    #@3
    .line 3525
    const/4 v1, 0x2

    #@4
    if-ne p1, v1, :cond_1

    #@6
    .line 3524
    :cond_0
    :goto_0
    return v0

    #@7
    .line 3525
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
    .line 2352
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    #@3
    move-result-object v2

    #@4
    .line 2353
    .local v2, "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@6
    monitor-enter v4

    #@7
    .line 2354
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v3, v2

    #@9
    if-ge v0, v3, :cond_2

    #@b
    .line 2355
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    #@d
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 2354
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2358
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    #@18
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    #@1b
    .line 2362
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
    .line 2363
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@26
    .line 2364
    aget-object v5, v2, v0

    #@28
    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    #@2b
    move-result-object v5

    #@2c
    .line 2363
    invoke-virtual {v3, v5}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    #@2f
    move-result-object v1

    #@30
    .line 2365
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
    .line 2353
    .end local v1    # "track":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v3

    #@3f
    monitor-exit v4

    #@40
    throw v3

    #@41
    .line 2367
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
    .line 2351
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
    .line 3049
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/media/MediaPlayer;

    #@8
    .line 3050
    .local v1, "mp":Landroid/media/MediaPlayer;
    if-nez v1, :cond_0

    #@a
    .line 3051
    return-void

    #@b
    .line 3054
    :cond_0
    const/16 v2, 0xc8

    #@d
    if-ne p1, v2, :cond_1

    #@f
    const/4 v2, 0x2

    #@10
    if-ne p2, v2, :cond_1

    #@12
    .line 3056
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    #@15
    .line 3058
    :cond_1
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 3059
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@1b
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1e
    move-result-object v0

    #@1f
    .line 3060
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@21
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@24
    .line 3047
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private scanInternalSubtitleTracks()V
    .locals 2

    #@0
    .prologue
    .line 2339
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2340
    const-string/jumbo v0, "MediaPlayer"

    #@7
    const-string/jumbo v1, "setSubtitleAnchor in MediaPlayer"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2341
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    #@10
    .line 2344
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    #@13
    .line 2346
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 2347
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@19
    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    #@1c
    .line 2338
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
    .line 2740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 2741
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v0

    #@8
    .line 2743
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.IMediaPlayer"

    #@b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2744
    if-eqz p2, :cond_0

    #@10
    const/4 v2, 0x4

    #@11
    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2745
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 2746
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 2748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 2749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 2739
    return-void

    #@21
    .line 2744
    :cond_0
    const/4 v2, 0x5

    #@22
    goto :goto_0

    #@23
    .line 2747
    :catchall_0
    move-exception v2

    #@24
    .line 2748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 2749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 2747
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
    .line 2691
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    #@5
    .line 2693
    const/4 v1, 0x0

    #@6
    .line 2695
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
    .line 2701
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@10
    check-cast v3, Landroid/media/SubtitleTrack;

    #@12
    .line 2702
    .local v3, "track":Landroid/media/SubtitleTrack;
    if-nez v3, :cond_0

    #@14
    .line 2704
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
    .line 2705
    return-void

    #@20
    .line 2696
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    :catch_0
    move-exception v0

    #@21
    .line 2698
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-void

    #@22
    .line 2708
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .restart local v3    # "track":Landroid/media/SubtitleTrack;
    :cond_0
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@24
    if-nez v5, :cond_1

    #@26
    .line 2709
    return-void

    #@27
    .line 2712
    :cond_1
    if-nez p2, :cond_3

    #@29
    .line 2714
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@2b
    invoke-virtual {v5}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    #@2e
    move-result-object v5

    #@2f
    if-ne v5, v3, :cond_2

    #@31
    .line 2715
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@33
    invoke-virtual {v5, v6}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    #@36
    .line 2719
    :goto_0
    return-void

    #@37
    .line 2717
    :cond_2
    const-string/jumbo v5, "MediaPlayer"

    #@3a
    const-string/jumbo v6, "trying to deselect track that was not selected"

    #@3d
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    goto :goto_0

    #@41
    .line 2723
    :cond_3
    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getTrackType()I

    #@44
    move-result v5

    #@45
    if-ne v5, v7, :cond_5

    #@47
    .line 2724
    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    #@4a
    move-result v4

    #@4b
    .line 2725
    .local v4, "ttIndex":I
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@4d
    monitor-enter v6

    #@4e
    .line 2726
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
    .line 2727
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@5a
    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v2

    #@5e
    check-cast v2, Landroid/util/Pair;

    #@60
    .line 2728
    .local v2, "p2":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@62
    if-eqz v5, :cond_4

    #@64
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@66
    if-nez v5, :cond_4

    #@68
    .line 2730
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
    .line 2735
    .end local v4    # "ttIndex":I
    :cond_5
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@77
    invoke-virtual {v5, v3}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    #@7a
    .line 2689
    return-void

    #@7b
    .line 2725
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
    .line 1072
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3
    move-result-object v4

    #@4
    .line 1073
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 1074
    .local v3, "scheme":Ljava/lang/String;
    const-string/jumbo v5, "file"

    #@b
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    .line 1075
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    .line 1086
    :cond_0
    new-instance v1, Ljava/io/File;

    #@17
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1a
    .line 1087
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_2

    #@20
    .line 1088
    new-instance v2, Ljava/io/FileInputStream;

    #@22
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@25
    .line 1089
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@28
    move-result-object v0

    #@29
    .line 1090
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    #@2c
    .line 1091
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    #@2f
    .line 1071
    return-void

    #@30
    .line 1076
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_1
    if-eqz v3, :cond_0

    #@32
    .line 1079
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    #@35
    move-result-object v5

    #@36
    .line 1078
    invoke-direct {p0, v5, p1, p2, p3}, Landroid/media/MediaPlayer;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@39
    .line 1083
    return-void

    #@3a
    .line 1093
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
    .line 2188
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 2189
    new-instance v2, Landroid/os/HandlerThread;

    #@7
    const-string/jumbo v3, "SetSubtitleAnchorThread"

    #@a
    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@d
    .line 2190
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    #@10
    .line 2191
    new-instance v1, Landroid/os/Handler;

    #@12
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@19
    .line 2192
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/media/MediaPlayer$2;

    #@1b
    invoke-direct {v3, p0, v2}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;Landroid/os/HandlerThread;)V

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 2211
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
    .line 2187
    return-void

    #@26
    .line 2212
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "thread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v0

    #@27
    .line 2213
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    #@2e
    .line 2214
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
    .line 1317
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1318
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
    .line 1320
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
    .line 1321
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1d
    .line 1324
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    #@1f
    .line 1325
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    #@22
    .line 1316
    return-void

    #@23
    .line 1319
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
    .line 1329
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1330
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
    .line 1328
    :cond_0
    return-void

    #@10
    .line 1330
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
    .line 2277
    move-object v1, p1

    #@1
    .line 2278
    .local v1, "fIs":Ljava/io/InputStream;
    move-object v0, p2

    #@2
    .line 2280
    .local v0, "fFormat":Landroid/media/MediaFormat;
    if-eqz p1, :cond_0

    #@4
    .line 2283
    iget-object v5, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    #@6
    monitor-enter v5

    #@7
    .line 2284
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    #@9
    invoke-virtual {v4, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v5

    #@d
    .line 2290
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    #@10
    .line 2293
    new-instance v3, Landroid/os/HandlerThread;

    #@12
    const-string/jumbo v4, "SubtitleReadThread"

    #@15
    .line 2294
    const/16 v5, 0x9

    #@17
    .line 2293
    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@1a
    .line 2295
    .local v3, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    #@1d
    .line 2296
    new-instance v2, Landroid/os/Handler;

    #@1f
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@22
    move-result-object v4

    #@23
    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@26
    .line 2297
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Landroid/media/MediaPlayer$3;

    #@28
    invoke-direct {v4, p0, p1, p2, v3}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    #@2b
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2e
    .line 2275
    return-void

    #@2f
    .line 2283
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v4

    #@30
    monitor-exit v5

    #@31
    throw v4

    #@32
    .line 2287
    :cond_0
    const-string/jumbo v4, "MediaPlayer"

    #@35
    const-string/jumbo v5, "addSubtitleSource called with null InputStream"

    #@38
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0
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
    .line 2425
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 2426
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
    .line 2427
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {p0, v5, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2428
    return-void

    #@17
    .line 2431
    :cond_1
    const/4 v2, 0x0

    #@18
    .line 2433
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1b
    move-result-object v3

    #@1c
    .line 2434
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
    .line 2435
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v2, :cond_3

    #@25
    .line 2443
    if-eqz v2, :cond_2

    #@27
    .line 2444
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@2a
    .line 2436
    :cond_2
    return-void

    #@2b
    .line 2438
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
    .line 2443
    if-eqz v2, :cond_4

    #@34
    .line 2444
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@37
    .line 2439
    :cond_4
    return-void

    #@38
    .line 2441
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    #@39
    .line 2443
    .local v0, "ex":Ljava/io/IOException;
    if-eqz v2, :cond_5

    #@3b
    .line 2444
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@3e
    .line 2424
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_5
    :goto_0
    return-void

    #@3f
    .line 2440
    :catch_1
    move-exception v1

    #@40
    .line 2443
    .local v1, "ex":Ljava/lang/SecurityException;
    if-eqz v2, :cond_5

    #@42
    .line 2444
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@45
    goto :goto_0

    #@46
    .line 2442
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v5

    #@47
    .line 2443
    if-eqz v2, :cond_6

    #@49
    .line 2444
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@4c
    .line 2442
    :cond_6
    throw v5
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 20
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
    .line 2491
    invoke-static/range {p6 .. p6}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2492
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "Illegal mimeType for timed text source: "

    #@10
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    move-object/from16 v0, p6

    #@16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 2497
    :cond_0
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-interface {v3, v0}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result-object v5

    #@2a
    .line 2503
    .local v5, "fd2":Ljava/io/FileDescriptor;
    new-instance v13, Landroid/media/MediaFormat;

    #@2c
    invoke-direct {v13}, Landroid/media/MediaFormat;-><init>()V

    #@2f
    .line 2504
    .local v13, "fFormat":Landroid/media/MediaFormat;
    const-string/jumbo v3, "mime"

    #@32
    move-object/from16 v0, p6

    #@34
    invoke-virtual {v13, v3, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    .line 2505
    const-string/jumbo v3, "is-timed-text"

    #@3a
    const/4 v4, 0x1

    #@3b
    invoke-virtual {v13, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    #@3e
    .line 2508
    move-object/from16 v0, p0

    #@40
    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@42
    if-nez v3, :cond_1

    #@44
    .line 2509
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    #@47
    .line 2512
    :cond_1
    move-object/from16 v0, p0

    #@49
    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@4b
    invoke-virtual {v3, v13}, Landroid/media/SubtitleController;->hasRendererFor(Landroid/media/MediaFormat;)Z

    #@4e
    move-result v3

    #@4f
    if-nez v3, :cond_2

    #@51
    .line 2514
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@54
    move-result-object v2

    #@55
    .line 2515
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    #@57
    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@59
    new-instance v4, Landroid/media/SRTRenderer;

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget-object v6, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@5f
    invoke-direct {v4, v2, v6}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@62
    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    #@65
    .line 2517
    .end local v2    # "context":Landroid/content/Context;
    :cond_2
    move-object/from16 v0, p0

    #@67
    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@69
    invoke-virtual {v3, v13}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    #@6c
    move-result-object v10

    #@6d
    .line 2518
    .local v10, "track":Landroid/media/SubtitleTrack;
    move-object/from16 v0, p0

    #@6f
    iget-object v4, v0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@71
    monitor-enter v4

    #@72
    .line 2519
    :try_start_1
    move-object/from16 v0, p0

    #@74
    iget-object v3, v0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@76
    const/4 v6, 0x0

    #@77
    invoke-static {v6, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@7a
    move-result-object v6

    #@7b
    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7e
    monitor-exit v4

    #@7f
    .line 2522
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    #@82
    .line 2524
    move-object v14, v5

    #@83
    .line 2525
    .local v14, "fd3":Ljava/io/FileDescriptor;
    move-wide/from16 v18, p2

    #@85
    .line 2526
    .local v18, "offset2":J
    move-wide/from16 v16, p4

    #@87
    .line 2527
    .local v16, "length2":J
    new-instance v11, Landroid/os/HandlerThread;

    #@89
    .line 2528
    const-string/jumbo v3, "TimedTextReadThread"

    #@8c
    .line 2529
    const/16 v4, 0x9

    #@8e
    .line 2527
    invoke-direct {v11, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@91
    .line 2530
    .local v11, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    #@94
    .line 2531
    new-instance v15, Landroid/os/Handler;

    #@96
    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@99
    move-result-object v3

    #@9a
    invoke-direct {v15, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9d
    .line 2532
    .local v15, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/media/MediaPlayer$4;

    #@9f
    move-object/from16 v4, p0

    #@a1
    move-wide/from16 v6, p2

    #@a3
    move-wide/from16 v8, p4

    #@a5
    invoke-direct/range {v3 .. v11}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V

    #@a8
    invoke-virtual {v15, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@ab
    .line 2490
    return-void

    #@ac
    .line 2498
    .end local v5    # "fd2":Ljava/io/FileDescriptor;
    .end local v10    # "track":Landroid/media/SubtitleTrack;
    .end local v11    # "thread":Landroid/os/HandlerThread;
    .end local v13    # "fFormat":Landroid/media/MediaFormat;
    .end local v14    # "fd3":Ljava/io/FileDescriptor;
    .end local v15    # "handler":Landroid/os/Handler;
    .end local v16    # "length2":J
    .end local v18    # "offset2":J
    :catch_0
    move-exception v12

    #@ad
    .line 2499
    .local v12, "ex":Landroid/system/ErrnoException;
    const-string/jumbo v3, "MediaPlayer"

    #@b0
    invoke-virtual {v12}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@b3
    move-result-object v4

    #@b4
    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b7
    .line 2500
    new-instance v3, Ljava/lang/RuntimeException;

    #@b9
    invoke-direct {v3, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@bc
    throw v3

    #@bd
    .line 2518
    .end local v12    # "ex":Landroid/system/ErrnoException;
    .restart local v5    # "fd2":Ljava/io/FileDescriptor;
    .restart local v10    # "track":Landroid/media/SubtitleTrack;
    .restart local v13    # "fFormat":Landroid/media/MediaFormat;
    :catchall_0
    move-exception v3

    #@be
    monitor-exit v4

    #@bf
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
    .line 2468
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
    .line 2466
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
    .line 2391
    invoke-static {p2}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 2392
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
    .line 2393
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1c
    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 2396
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    #@22
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@25
    .line 2397
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 2398
    new-instance v2, Ljava/io/FileInputStream;

    #@2d
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@30
    .line 2399
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@33
    move-result-object v0

    #@34
    .line 2400
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0, p2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    #@37
    .line 2401
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    #@3a
    .line 2390
    return-void

    #@3b
    .line 2404
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
    .line 2685
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    #@4
    .line 2684
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
    .line 1431
    new-instance v1, Landroid/media/PlaybackParams;

    #@4
    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    #@7
    .line 1432
    .local v1, "params":Landroid/media/PlaybackParams;
    invoke-virtual {v1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    #@a
    .line 1433
    packed-switch p2, :pswitch_data_0

    #@d
    .line 1445
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
    .line 1446
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2a
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 1435
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    #@35
    .line 1448
    :goto_0
    return-object v1

    #@36
    .line 1438
    :pswitch_1
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    #@3d
    move-result-object v2

    #@3e
    .line 1439
    const/4 v3, 0x2

    #@3f
    .line 1438
    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    #@42
    goto :goto_0

    #@43
    .line 1442
    :pswitch_2
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    #@4a
    goto :goto_0

    #@4b
    .line 1433
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
    .line 2810
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseRelease()V

    #@3
    .line 2811
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    #@6
    .line 2809
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
    .line 2837
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2838
    new-instance v0, Landroid/media/MediaPlayer$TimeProvider;

    #@6
    invoke-direct {v0, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    #@9
    iput-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@b
    .line 2840
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
    .line 1574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    .line 1575
    .local v1, "reply":Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    #@7
    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    #@a
    .line 1577
    .local v0, "data":Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 1578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@13
    .line 1579
    return-object v3

    #@14
    .line 1584
    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_1

    #@1a
    .line 1585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 1586
    return-object v3

    #@1e
    .line 1588
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
    .line 2599
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@2
    if-eqz v6, :cond_3

    #@4
    .line 2600
    const/4 v6, 0x4

    #@5
    if-eq p1, v6, :cond_0

    #@7
    .line 2601
    const/4 v6, 0x3

    #@8
    if-ne p1, v6, :cond_3

    #@a
    .line 2602
    :cond_0
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@c
    invoke-virtual {v6}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    #@f
    move-result-object v5

    #@10
    .line 2603
    .local v5, "subtitleTrack":Landroid/media/SubtitleTrack;
    if-eqz v5, :cond_3

    #@12
    .line 2604
    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@14
    monitor-enter v7

    #@15
    .line 2605
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
    .line 2606
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@20
    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/util/Pair;

    #@26
    .line 2607
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
    .line 2608
    return v0

    #@32
    .line 2605
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_2
    monitor-exit v7

    #@36
    .line 2615
    .end local v0    # "i":I
    .end local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@39
    move-result-object v4

    #@3a
    .line 2616
    .local v4, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3d
    move-result-object v3

    #@3e
    .line 2618
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_1
    const-string/jumbo v6, "android.media.IMediaPlayer"

    #@41
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@44
    .line 2619
    const/4 v6, 0x7

    #@45
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 2620
    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 2621
    invoke-virtual {p0, v4, v3}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    #@4e
    .line 2622
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v1

    #@52
    .line 2623
    .local v1, "inbandTrackIndex":I
    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@54
    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@55
    .line 2624
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
    .line 2625
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@60
    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v2

    #@64
    check-cast v2, Landroid/util/Pair;

    #@66
    .line 2626
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
    .line 2633
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@78
    .line 2634
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@7b
    .line 2627
    return v0

    #@7c
    .line 2604
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
    .line 2624
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
    .line 2631
    const/4 v6, -0x1

    #@84
    .line 2633
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@87
    .line 2634
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@8a
    .line 2631
    return v6

    #@8b
    .line 2623
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
    .line 2632
    .end local v0    # "i":I
    .end local v1    # "inbandTrackIndex":I
    :catchall_2
    move-exception v6

    #@8f
    .line 2633
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@92
    .line 2634
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@95
    .line 2632
    throw v6
.end method

.method public native getSyncParams()Landroid/media/SyncParams;
.end method

.method public getTimestamp()Landroid/media/MediaTimestamp;
    .locals 7

    #@0
    .prologue
    .line 1532
    :try_start_0
    new-instance v1, Landroid/media/MediaTimestamp;

    #@2
    .line 1533
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
    .line 1534
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@d
    move-result-wide v4

    #@e
    .line 1535
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
    .line 1532
    :goto_0
    invoke-direct/range {v1 .. v6}, Landroid/media/MediaTimestamp;-><init>(JJF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    return-object v1

    #@20
    .line 1535
    :cond_0
    const/4 v6, 0x0

    #@21
    goto :goto_0

    #@22
    .line 1536
    :catch_0
    move-exception v0

    #@23
    .line 1537
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
    .line 2102
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    #@3
    move-result-object v4

    #@4
    .line 2104
    .local v4, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@6
    monitor-enter v6

    #@7
    .line 2105
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@9
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    #@c
    move-result v5

    #@d
    new-array v0, v5, [Landroid/media/MediaPlayer$TrackInfo;

    #@f
    .line 2106
    .local v0, "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    array-length v5, v0

    #@11
    if-ge v1, v5, :cond_1

    #@13
    .line 2107
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@15
    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/util/Pair;

    #@1b
    .line 2108
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1d
    if-eqz v5, :cond_0

    #@1f
    .line 2110
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
    .line 2106
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 2112
    :cond_0
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@30
    check-cast v3, Landroid/media/SubtitleTrack;

    #@32
    .line 2113
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
    .line 2104
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
    .line 2116
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
    .line 694
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    .line 695
    .local v0, "retcode":I
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@8
    .line 696
    if-eqz v0, :cond_0

    #@a
    .line 697
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
    .line 693
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
    .line 674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 675
    .local v0, "parcel":Landroid/os/Parcel;
    const-string/jumbo v1, "android.media.IMediaPlayer"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 676
    return-object v0
.end method

.method public onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .locals 6
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2241
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@3
    if-ltz v3, :cond_0

    #@5
    .line 2243
    :try_start_0
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@7
    const/4 v4, 0x0

    #@8
    invoke-direct {p0, v3, v4}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    #@b
    .line 2246
    :goto_0
    const/4 v3, -0x1

    #@c
    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@e
    .line 2248
    :cond_0
    invoke-virtual {p0, v5}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    #@11
    .line 2249
    if-nez p1, :cond_1

    #@13
    .line 2250
    return-void

    #@14
    .line 2253
    :cond_1
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@16
    monitor-enter v4

    #@17
    .line 2254
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
    .line 2255
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2b
    if-eqz v3, :cond_2

    #@2d
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2f
    if-ne v3, p1, :cond_2

    #@31
    .line 2257
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
    .line 2263
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@3e
    if-ltz v3, :cond_4

    #@40
    .line 2265
    :try_start_2
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@42
    const/4 v4, 0x1

    #@43
    invoke-direct {p0, v3, v4}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    #@46
    .line 2268
    :goto_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@48
    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    #@4b
    .line 2240
    :cond_4
    return-void

    #@4c
    .line 2253
    .end local v2    # "p$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@4d
    monitor-exit v4

    #@4e
    throw v3

    #@4f
    .line 2266
    .restart local v2    # "p$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@50
    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    #@51
    .line 2244
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
    .line 1248
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    #@4
    .line 1249
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    #@7
    .line 1247
    return-void
.end method

.method playerSetAuxEffectSendLevel(F)I
    .locals 1
    .param p1, "level"    # F

    #@0
    .prologue
    .line 1900
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    #@3
    .line 1901
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method playerSetVolume(FF)V
    .locals 0
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    #@0
    .prologue
    .line 1826
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    #@3
    .line 1825
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
    .line 1184
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_prepare()V

    #@3
    .line 1185
    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    #@6
    .line 1183
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
    .line 1678
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseRelease()V

    #@4
    .line 1679
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    #@8
    .line 1680
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    #@b
    .line 1681
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@d
    .line 1682
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@f
    .line 1683
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@11
    .line 1684
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    #@13
    .line 1685
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@15
    .line 1686
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    #@17
    .line 1687
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@19
    .line 1688
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    #@1b
    .line 1689
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 1690
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@21
    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    #@24
    .line 1691
    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@26
    .line 1693
    :cond_0
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@28
    .line 1694
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    #@2b
    .line 1677
    return-void
.end method

.method public reset()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1705
    const/4 v3, -0x1

    #@2
    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    #@4
    .line 1706
    iget-object v4, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    #@6
    monitor-enter v4

    #@7
    .line 1707
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
    .line 1709
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 1710
    :catch_0
    move-exception v0

    #@1e
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@1f
    .line 1713
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
    .line 1715
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 1716
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@2b
    invoke-virtual {v3}, Landroid/media/SubtitleController;->reset()V

    #@2e
    .line 1718
    :cond_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 1719
    iget-object v3, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@34
    invoke-virtual {v3}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    #@37
    .line 1720
    iput-object v5, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    #@39
    .line 1723
    :cond_2
    const/4 v3, 0x0

    #@3a
    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    #@3d
    .line 1724
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    #@40
    .line 1726
    iget-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@42
    if-eqz v3, :cond_3

    #@44
    .line 1727
    iget-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    #@46
    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@49
    .line 1730
    :cond_3
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@4b
    monitor-enter v4

    #@4c
    .line 1731
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    #@4e
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    #@51
    .line 1732
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    #@53
    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@56
    monitor-exit v4

    #@57
    .line 1704
    return-void

    #@58
    .line 1706
    .end local v2    # "is$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@59
    monitor-exit v4

    #@5a
    throw v3

    #@5b
    .line 1730
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
    .line 2667
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    #@4
    .line 2666
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
    .line 1775
    if-nez p1, :cond_0

    #@4
    .line 1776
    const-string/jumbo v0, "Cannot set AudioAttributes to null"

    #@7
    .line 1777
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v3, "Cannot set AudioAttributes to null"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 1779
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V

    #@13
    .line 1780
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    #@16
    move-result v4

    #@17
    iput v4, p0, Landroid/media/MediaPlayer;->mUsage:I

    #@19
    .line 1781
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    #@1c
    move-result v4

    #@1d
    and-int/lit8 v4, v4, 0x40

    #@1f
    if-eqz v4, :cond_1

    #@21
    move v2, v3

    #@22
    :cond_1
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mBypassInterruptionPolicy:Z

    #@24
    .line 1783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@27
    move-result-object v1

    #@28
    .line 1784
    .local v1, "pattributes":Landroid/os/Parcel;
    invoke-virtual {p1, v1, v3}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    .line 1785
    const/16 v2, 0x578

    #@2d
    invoke-direct {p0, v2, v1}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    #@30
    .line 1786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1774
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
    .locals 1
    .param p1, "streamtype"    # I

    #@0
    .prologue
    .line 1749
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@c
    move-result-object v0

    #@d
    .line 1748
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V

    #@10
    .line 1750
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAudioStreamType(I)V

    #@13
    .line 1751
    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    #@15
    .line 1747
    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 0
    .param p1, "level"    # F

    #@0
    .prologue
    .line 1895
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->baseSetAuxEffectSendLevel(F)I

    #@3
    .line 1894
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
    .line 967
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    #@4
    .line 966
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 7
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
    .line 985
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v2

    #@4
    .line 986
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 987
    .local v3, "scheme":Ljava/lang/String;
    const-string/jumbo v5, "file"

    #@b
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 988
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {p0, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    #@18
    .line 989
    return-void

    #@19
    .line 990
    :cond_0
    const-string/jumbo v5, "content"

    #@1c
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_3

    #@22
    .line 991
    const-string/jumbo v5, "settings"

    #@25
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v5

    #@2d
    .line 990
    if-eqz v5, :cond_3

    #@2f
    .line 994
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    #@32
    move-result v4

    #@33
    .line 995
    .local v4, "type":I
    invoke-static {v4}, Landroid/media/RingtoneManager;->getCacheForType(I)Landroid/net/Uri;

    #@36
    move-result-object v1

    #@37
    .line 996
    .local v1, "cacheUri":Landroid/net/Uri;
    invoke-static {p1, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    #@3a
    move-result-object v0

    #@3b
    .line 997
    .local v0, "actualUri":Landroid/net/Uri;
    invoke-direct {p0, v2, v1}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_1

    #@41
    .line 998
    return-void

    #@42
    .line 999
    :cond_1
    invoke-direct {p0, v2, v0}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_2

    #@48
    .line 1000
    return-void

    #@49
    .line 1002
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {p0, v5, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    #@50
    .line 984
    .end local v0    # "actualUri":Landroid/net/Uri;
    .end local v1    # "cacheUri":Landroid/net/Uri;
    .end local v4    # "type":I
    :goto_0
    return-void

    #@51
    .line 1006
    :cond_3
    invoke-direct {p0, v2, p2}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_4

    #@57
    .line 1007
    return-void

    #@58
    .line 1009
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {p0, v5, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    #@5f
    goto :goto_0
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1113
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1117
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@6
    move-result-wide v0

    #@7
    const-wide/16 v2, 0x0

    #@9
    cmp-long v0, v0, v2

    #@b
    if-gez v0, :cond_0

    #@d
    .line 1118
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    #@14
    .line 1112
    :goto_0
    return-void

    #@15
    .line 1120
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@1c
    move-result-wide v2

    #@1d
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@20
    move-result-wide v4

    #@21
    move-object v0, p0

    #@22
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    #@25
    goto :goto_0
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
    .line 1168
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setDataSource(Landroid/media/MediaDataSource;)V

    #@3
    .line 1167
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
    .line 1136
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
    .line 1134
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
    .line 1153
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    #@3
    .line 1152
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
    .line 1039
    invoke-direct {p0, p1, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@4
    .line 1038
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
    .line 1053
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 1054
    .local v3, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    #@2
    .line 1056
    .local v4, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    #@4
    .line 1057
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@7
    move-result v5

    #@8
    new-array v3, v5, [Ljava/lang/String;

    #@a
    .line 1058
    .local v3, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@d
    move-result v5

    #@e
    new-array v4, v5, [Ljava/lang/String;

    #@10
    .line 1060
    .local v4, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    #@11
    .line 1061
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
    .line 1062
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Ljava/lang/String;

    #@2b
    aput-object v5, v3, v2

    #@2d
    .line 1063
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Ljava/lang/String;

    #@33
    aput-object v5, v4, v2

    #@35
    .line 1064
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1067
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v3    # "keys":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@3b
    .line 1051
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 716
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@2
    .line 718
    if-eqz p1, :cond_0

    #@4
    .line 719
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@7
    move-result-object v0

    #@8
    .line 723
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    #@b
    .line 724
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    #@e
    .line 715
    return-void

    #@f
    .line 721
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
    .line 1616
    .local p1, "allow":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "block":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 1622
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
    .line 1624
    .local v0, "capacity":I
    invoke-virtual {v1}, Landroid/os/Parcel;->dataCapacity()I

    #@1c
    move-result v4

    #@1d
    if-ge v4, v0, :cond_0

    #@1f
    .line 1625
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    #@22
    .line 1628
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@25
    move-result v4

    #@26
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 1629
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
    .line 1630
    .local v2, "t":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@3c
    move-result v4

    #@3d
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    goto :goto_0

    #@41
    .line 1632
    .end local v2    # "t":Ljava/lang/Integer;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    #@44
    move-result v4

    #@45
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 1633
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
    .line 1634
    .restart local v2    # "t":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@5b
    move-result v4

    #@5c
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    goto :goto_1

    #@60
    .line 1636
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
    .line 3147
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@2
    .line 3145
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    #@0
    .prologue
    .line 3113
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@2
    .line 3111
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    #@0
    .prologue
    .line 3383
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@2
    .line 3381
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    #@0
    .prologue
    .line 3515
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    #@2
    .line 3513
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    #@0
    .prologue
    .line 3086
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@2
    .line 3084
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    #@0
    .prologue
    .line 3174
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    #@2
    .line 3172
    return-void
.end method

.method public setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@0
    .prologue
    .line 3260
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    #@2
    .line 3258
    return-void
.end method

.method public setOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    #@0
    .prologue
    .line 3300
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    #@2
    .line 3298
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedTextListener;

    #@0
    .prologue
    .line 3235
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    #@2
    .line 3233
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@0
    .prologue
    .line 3206
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@2
    .line 3204
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
    .line 2792
    const/4 v0, 0x0

    #@1
    .line 2793
    .local v0, "addrString":Ljava/lang/String;
    const/4 v1, 0x0

    #@2
    .line 2795
    .local v1, "port":I
    if-eqz p1, :cond_0

    #@4
    .line 2796
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 2797
    .local v0, "addrString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    #@f
    move-result v1

    #@10
    .line 2800
    .end local v0    # "addrString":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->native_setRetransmitEndpoint(Ljava/lang/String;I)I

    #@13
    move-result v2

    #@14
    .line 2801
    .local v2, "ret":I
    if-eqz v2, :cond_1

    #@16
    .line 2802
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
    .line 2790
    :cond_1
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    #@0
    .prologue
    .line 1307
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 1308
    if-eqz p1, :cond_0

    #@6
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1309
    const-string/jumbo v0, "MediaPlayer"

    #@d
    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 1311
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    #@15
    .line 1312
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    #@18
    .line 1306
    :cond_1
    return-void
.end method

.method public setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/SubtitleController;
    .param p2, "anchor"    # Landroid/media/SubtitleController$Anchor;

    #@0
    .prologue
    .line 2178
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@2
    .line 2179
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    #@4
    invoke-virtual {v0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    #@7
    .line 2176
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 748
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    if-eqz p1, :cond_0

    #@7
    .line 749
    const-string/jumbo v0, "MediaPlayer"

    #@a
    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 751
    :cond_0
    iput-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@12
    .line 752
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    #@15
    .line 753
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    #@18
    .line 747
    return-void
.end method

.method public native setSyncParams(Landroid/media/SyncParams;)V
.end method

.method public setVideoScalingMode(I)V
    .locals 5
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 797
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isVideoScalingModeSupported(I)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 798
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
    .line 799
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@23
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 801
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@2a
    move-result-object v2

    #@2b
    .line 802
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@2e
    move-result-object v1

    #@2f
    .line 804
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IMediaPlayer"

    #@32
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@35
    .line 805
    const/4 v3, 0x6

    #@36
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 806
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 807
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 809
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 796
    return-void

    #@46
    .line 808
    :catchall_0
    move-exception v3

    #@47
    .line 809
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 808
    throw v3
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    #@0
    .prologue
    .line 1836
    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    #@3
    .line 1835
    return-void
.end method

.method public setVolume(FF)V
    .locals 0
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    #@0
    .prologue
    .line 1821
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->baseSetVolume(FF)V

    #@3
    .line 1820
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1272
    const/4 v1, 0x0

    #@3
    .line 1275
    .local v1, "washeld":Z
    const-string/jumbo v2, "audio.offload.ignore_setawake"

    #@6
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1276
    const-string/jumbo v2, "MediaPlayer"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "IGNORING setWakeMode "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1277
    return-void

    #@27
    .line 1280
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 1281
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2d
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_1

    #@33
    .line 1282
    const/4 v1, 0x1

    #@34
    .line 1283
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@36
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@39
    .line 1285
    :cond_1
    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3b
    .line 1288
    :cond_2
    const-string/jumbo v2, "power"

    #@3e
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Landroid/os/PowerManager;

    #@44
    .line 1289
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    #@46
    or-int/2addr v2, p2

    #@47
    const-class v3, Landroid/media/MediaPlayer;

    #@49
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@50
    move-result-object v2

    #@51
    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@53
    .line 1290
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@55
    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@58
    .line 1291
    if-eqz v1, :cond_3

    #@5a
    .line 1292
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@5c
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@5f
    .line 1271
    :cond_3
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1211
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseStart()V

    #@3
    .line 1212
    const/4 v0, 0x1

    #@4
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    #@7
    .line 1213
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    #@a
    .line 1210
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
    .line 1235
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    #@4
    .line 1236
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    #@7
    .line 1234
    return-void
.end method
