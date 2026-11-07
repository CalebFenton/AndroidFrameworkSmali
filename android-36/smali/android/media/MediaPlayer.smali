.class public Landroid/media/MediaPlayer;
.super Landroid/media/PlayerBase;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;
.implements Landroid/media/VolumeAutomation;
.implements Landroid/media/AudioRouting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$OnSubtitleDataListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$TimeProvider;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnRtpRxNoticeListener;,
        Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;,
        Landroid/media/MediaPlayer$OnDrmConfigHelper;,
        Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;,
        Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;,
        Landroid/media/MediaPlayer$TrackInfo;,
        Landroid/media/MediaPlayer$DrmInfo;,
        Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;,
        Landroid/media/MediaPlayer$OnDrmInfoListener;,
        Landroid/media/MediaPlayer$OnDrmPreparedListener;,
        Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;,
        Landroid/media/MediaPlayer$ProvisioningServerErrorException;,
        Landroid/media/MediaPlayer$NoDrmSchemeException;,
        Landroid/media/MediaPlayer$ProvisioningThread;,
        Landroid/media/MediaPlayer$MetricsConstants;,
        Landroid/media/MediaPlayer$PrepareDrmStatusCode;,
        Landroid/media/MediaPlayer$SeekMode;,
        Landroid/media/MediaPlayer$PlaybackRateAudioMode;
    }
.end annotation


# static fields
.field public static final greylist-max-o APPLY_METADATA_FILTER:Z = true

.field public static final greylist BYPASS_METADATA_FILTER:Z = false

.field private static final greylist-max-o IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final greylist-max-o INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final greylist-max-o INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final greylist-max-o INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final greylist-max-o INVOKE_ID_GET_SELECTED_TRACK:I = 0x7

.field private static final greylist-max-o INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final greylist-max-o INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final blacklist INVOKE_ID_SET_PLAYER_IID:I = 0x8

.field private static final greylist-max-o INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final greylist-max-o KEY_PARAMETER_AUDIO_ATTRIBUTES:I = 0x578

.field private static final greylist-max-o MEDIA_AUDIO_ROUTING_CHANGED:I = 0x2710

.field private static final greylist-max-o MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final greylist-max-o MEDIA_DRM_INFO:I = 0xd2

.field private static final greylist-max-o MEDIA_ERROR:I = 0x64

.field public static final whitelist MEDIA_ERROR_IO:I = -0x3ec

.field public static final whitelist MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final whitelist MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final whitelist MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final greylist-max-o MEDIA_ERROR_SYSTEM:I = -0x80000000

.field public static final whitelist MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final whitelist MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final whitelist MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final greylist-max-o MEDIA_INFO:I = 0xc8

.field public static final whitelist MEDIA_INFO_AUDIO_NOT_PLAYING:I = 0x324

.field public static final whitelist MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final whitelist MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final whitelist MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final greylist-max-r MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final whitelist MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final greylist-max-o MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf

.field public static final whitelist MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final whitelist MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final whitelist MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final greylist-max-r MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final whitelist MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final whitelist MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final whitelist MEDIA_INFO_VIDEO_NOT_PLAYING:I = 0x325

.field public static final whitelist MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final whitelist MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final greylist-max-o MEDIA_META_DATA:I = 0xca

.field public static final greylist-max-o MEDIA_MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final greylist-max-o MEDIA_MIMETYPE_TEXT_CEA_708:Ljava/lang/String; = "text/cea-708"

.field public static final whitelist MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final greylist-max-o MEDIA_MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field private static final greylist-max-o MEDIA_NOP:I = 0x0

.field private static final greylist-max-o MEDIA_NOTIFY_TIME:I = 0x62

.field private static final greylist-max-o MEDIA_PAUSED:I = 0x7

.field private static final greylist-max-o MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final greylist-max-o MEDIA_PREPARED:I = 0x1

.field private static final blacklist MEDIA_RTP_RX_NOTICE:I = 0x12c

.field private static final greylist-max-o MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final greylist-max-o MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final greylist-max-o MEDIA_SKIPPED:I = 0x9

.field private static final greylist-max-o MEDIA_STARTED:I = 0x6

.field private static final greylist-max-o MEDIA_STOPPED:I = 0x8

.field private static final greylist-max-o MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final greylist-max-o MEDIA_TIMED_TEXT:I = 0x63

.field private static final greylist-max-o MEDIA_TIME_DISCONTINUITY:I = 0xd3

.field public static final greylist METADATA_ALL:Z = false

.field public static final greylist-max-o METADATA_UPDATE_ONLY:Z = true

.field public static final greylist-max-o PLAYBACK_RATE_AUDIO_MODE_DEFAULT:I = 0x0

.field public static final greylist-max-o PLAYBACK_RATE_AUDIO_MODE_RESAMPLE:I = 0x2

.field public static final greylist-max-o PLAYBACK_RATE_AUDIO_MODE_STRETCH:I = 0x1

.field public static final whitelist PREPARE_DRM_STATUS_PREPARATION_ERROR:I = 0x3

.field public static final whitelist PREPARE_DRM_STATUS_PROVISIONING_NETWORK_ERROR:I = 0x1

.field public static final whitelist PREPARE_DRM_STATUS_PROVISIONING_SERVER_ERROR:I = 0x2

.field public static final whitelist PREPARE_DRM_STATUS_SUCCESS:I = 0x0

.field public static final whitelist SEEK_CLOSEST:I = 0x3

.field public static final whitelist SEEK_CLOSEST_SYNC:I = 0x2

.field public static final whitelist SEEK_NEXT_SYNC:I = 0x1

.field public static final whitelist SEEK_PREVIOUS_SYNC:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final whitelist VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final whitelist VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private greylist-max-o mActiveDrmScheme:Z

.field private greylist-max-o mDrmConfigAllowed:Z

.field private greylist-max-o mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

.field private greylist-max-o mDrmInfoResolved:Z

.field private final greylist-max-o mDrmLock:Ljava/lang/Object;

.field private greylist-max-o mDrmObj:Landroid/media/MediaDrm;

.field private greylist-max-o mDrmProvisioningInProgress:Z

.field private greylist-max-o mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

.field private greylist-max-o mDrmSessionId:[B

.field private greylist-max-o mDrmUUID:Ljava/util/UUID;

.field private blacklist mEnableSelfRoutingMonitor:Z

.field private greylist mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private greylist-max-o mExtSubtitleDataHandler:Landroid/os/Handler;

.field private greylist-max-o mExtSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private greylist-max-o mInbandTrackIndices:Ljava/util/BitSet;

.field private greylist-max-o mIndexTrackPairs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/media/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIntSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private greylist-max-o mListenerContext:I

.field private greylist-max-o mNativeContext:J

.field private greylist-max-o mNativeSurfaceTexture:J

.field private greylist-max-o mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final greylist-max-o mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private greylist mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private greylist-max-o mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

.field private greylist-max-o mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

.field private greylist-max-o mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

.field private greylist mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private greylist mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private greylist-max-o mOnMediaTimeDiscontinuityHandler:Landroid/os/Handler;

.field private greylist-max-o mOnMediaTimeDiscontinuityListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

.field private greylist mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private blacklist mOnRtpRxNoticeExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mOnRtpRxNoticeListener:Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

.field private greylist mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private greylist-max-o mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

.field private greylist mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private greylist-max-o mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private greylist-max-o mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private greylist-max-o mPrepareDrmInProgress:Z

.field private greylist-max-o mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mScreenOnWhilePlaying:Z

.field private greylist-max-o mSelectedSubtitleTrackIndex:I

.field private greylist-max-o mStayAwake:Z

.field private greylist-max-o mStreamType:I

.field private greylist-max-o mSubtitleController:Landroid/media/SubtitleController;

.field private greylist-max-o mSubtitleDataListenerDisabled:Z

.field private greylist-max-o mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private greylist-max-o mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

.field private final blacklist mTimeProviderLock:Ljava/lang/Object;

.field private greylist-max-o mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDrmInfo(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDrmLock(Landroid/media/MediaPlayer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDrmObj(Landroid/media/MediaPlayer;)Landroid/media/MediaDrm;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtSubtitleDataHandler(Landroid/media/MediaPlayer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtSubtitleDataListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndexTrackPairs(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntSubtitleDataListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mIntSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeContext(Landroid/media/MediaPlayer;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/MediaPlayer;->mNativeContext:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnBufferingUpdateListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnCompletionInternalListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnCompletionListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDrmInfoHandlerDelegate(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDrmPreparedHandlerDelegate(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnErrorListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnInfoListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnMediaTimeDiscontinuityHandler(Landroid/media/MediaPlayer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnMediaTimeDiscontinuityListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnPreparedListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnRtpRxNoticeExecutor(Landroid/media/MediaPlayer;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnRtpRxNoticeExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnRtpRxNoticeListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnRtpRxNoticeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnRtpRxNoticeListener:Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnSeekCompleteListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnTimedTextListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnVideoSizeChangedListener(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpenSubtitleSources(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtitleController(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtitleDataListenerDisabled(Landroid/media/MediaPlayer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/MediaPlayer;->mSubtitleDataListenerDisabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeProviderLock(Landroid/media/MediaPlayer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDrmProvisioningInProgress(Landroid/media/MediaPlayer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrepareDrmInProgress(Landroid/media/MediaPlayer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubtitleController(Landroid/media/MediaPlayer;Landroid/media/SubtitleController;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbroadcastRoutingChange(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer;->broadcastRoutingChange()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanDrmObj(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresumePrepareDrm(Landroid/media/MediaPlayer;Ljava/util/UUID;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->resumePrepareDrm(Ljava/util/UUID;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mscanInternalSubtitleTracks(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartImpl(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer;->startImpl()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstayAwake(Landroid/media/MediaPlayer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtryToDisableNativeRoutingCallback(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer;->tryToDisableNativeRoutingCallback()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 623
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 624
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    .line 625
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 667
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;-><init>(Landroid/content/Context;I)V

    .line 668
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 683
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;-><init>(Landroid/content/Context;I)V

    .line 684
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionId"    # I

    .line 687
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 642
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 646
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    .line 1507
    iput-object v0, p0, Landroid/media/MediaPlayer;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1667
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 2741
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    .line 2742
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    .line 2877
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2880
    new-instance v1, Landroid/media/MediaPlayer$3;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mIntSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 3510
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    .line 3968
    new-instance v1, Landroid/media/MediaPlayer$7;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$7;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 691
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_59

    .line 692
    new-instance v0, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_6a

    .line 693
    :cond_59
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_68

    .line 694
    new-instance v0, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_6a

    .line 696
    :cond_68
    iput-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 699
    :goto_6a
    new-instance v0, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v0, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 700
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    .line 703
    if-nez p1, :cond_7f

    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    goto :goto_83

    .line 704
    :cond_7f
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    :goto_83
    nop

    .line 706
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_90

    .line 707
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 713
    :cond_90
    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v1

    .line 714
    .local v1, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_94
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v4

    .line 715
    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->resolvePlaybackSessionId(Landroid/content/Context;I)I

    move-result v5

    .line 714
    invoke-direct {p0, v3, v4, v5}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;Landroid/os/Parcel;I)V
    :try_end_a4
    .catchall {:try_start_94 .. :try_end_a4} :catchall_b1

    .line 716
    if-eqz v1, :cond_a9

    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 717
    .end local v1    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_a9
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->baseRegisterPlayer(I)V

    .line 718
    return-void

    .line 713
    .restart local v1    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_b1
    move-exception v3

    if-eqz v1, :cond_bc

    :try_start_b4
    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b8

    goto :goto_bc

    :catchall_b8
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_bc
    :goto_bc
    throw v3
.end method

.method private greylist-max-o HandleProvisioninig(Ljava/util/UUID;)I
    .registers 8
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 5738
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    const/4 v1, 0x3

    const-string v2, "MediaPlayer"

    if-eqz v0, :cond_d

    .line 5739
    const-string v0, "HandleProvisioninig: Unexpected mDrmProvisioningInProgress"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5740
    return v1

    .line 5743
    :cond_d
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 5744
    .local v0, "provReq":Landroid/media/MediaDrm$ProvisionRequest;
    if-nez v0, :cond_1b

    .line 5745
    const-string v3, "HandleProvisioninig: getProvisionRequest returned null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5746
    return v1

    .line 5749
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleProvisioninig provReq  data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5750
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " url: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5751
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5749
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5754
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    .line 5756
    new-instance v1, Landroid/media/MediaPlayer$ProvisioningThread;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/media/MediaPlayer$ProvisioningThread;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer-IA;)V

    invoke-virtual {v1, v0, p1, p0}, Landroid/media/MediaPlayer$ProvisioningThread;->initialize(Landroid/media/MediaDrm$ProvisionRequest;Ljava/util/UUID;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$ProvisioningThread;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    .line 5757
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v1}, Landroid/media/MediaPlayer$ProvisioningThread;->start()V

    .line 5762
    iget-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    if-eqz v1, :cond_61

    .line 5763
    const/4 v1, 0x0

    .local v1, "result":I
    goto :goto_86

    .line 5767
    .end local v1    # "result":I
    :cond_61
    :try_start_61
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v1}, Landroid/media/MediaPlayer$ProvisioningThread;->join()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_66} :catch_67

    .line 5770
    goto :goto_7e

    .line 5768
    :catch_67
    move-exception v1

    .line 5769
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleProvisioninig: Thread.join Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7e
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v1}, Landroid/media/MediaPlayer$ProvisioningThread;->status()I

    move-result v1

    .line 5773
    .local v1, "result":I
    iput-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    .line 5776
    :goto_86
    return v1
.end method

.method private native greylist-max-o _getAudioStreamType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native greylist-max-o _notifyAt(J)V
.end method

.method private native greylist-max-o _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _prepare(Landroid/os/Parcel;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _prepareAsync(Landroid/os/Parcel;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native greylist-max-o _prepareDrm([B[B)V
.end method

.method private native greylist-max-o _release()V
.end method

.method private native greylist-max-o _releaseDrm()V
.end method

.method private native greylist-max-o _reset()V
.end method

.method private final native greylist-max-o _seekTo(JI)V
.end method

.method private native greylist-max-o _setAudioStreamType(I)V
.end method

.method private native greylist-max-o _setAuxEffectSendLevel(F)V
.end method

.method private native greylist-max-o _setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native greylist-max-o _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native greylist-max-o _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native greylist-max-o _setVolume(FF)V
.end method

.method private native greylist-max-o _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native greylist-max-o _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private greylist-max-o attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1150
    const-string v0, "fuse.sys.transcode_player_optimize"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1152
    .local v0, "optimize":Z
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1153
    .local v2, "opts":Landroid/os/Bundle;
    const-string v3, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1154
    if-eqz v0, :cond_1b

    .line 1155
    :try_start_14
    const-string v3, "*/*"

    invoke-virtual {p1, p2, v3, v2}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    goto :goto_21

    .line 1156
    :cond_1b
    const-string v3, "r"

    invoke-virtual {p1, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_21
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_21} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_21} :catch_38
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_38

    :goto_21
    nop

    .line 1157
    .local v3, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_22
    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2c

    .line 1158
    nop

    .line 1159
    if-eqz v3, :cond_2b

    :try_start_28
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_2b} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_2b} :catch_38
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_38

    .line 1158
    :cond_2b
    return v4

    .line 1154
    :catchall_2c
    move-exception v4

    if-eqz v3, :cond_37

    :try_start_2f
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v5

    :try_start_34
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "optimize":Z
    .end local v2    # "opts":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "resolver":Landroid/content/ContentResolver;
    .end local p2    # "uri":Landroid/net/Uri;
    :cond_37
    :goto_37
    throw v4
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_38} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_38} :catch_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_38

    .line 1159
    .end local v3    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v0    # "optimize":Z
    .restart local v2    # "opts":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "resolver":Landroid/content/ContentResolver;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catch_38
    move-exception v3

    .line 1160
    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, "MediaPlayer"

    const-string v5, "Error setting data source via ContentResolver"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    return v1
.end method

.method private static greylist-max-o availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 2820
    const-string v0, "application/x-subrip"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2821
    const/4 v0, 0x1

    return v0

    .line 2823
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist broadcastRoutingChange()V
    .registers 4

    .line 1597
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 1598
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1601
    :try_start_6
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    if-eqz v1, :cond_11

    .line 1602
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->baseUpdateDeviceIds(Ljava/util/List;)V

    .line 1605
    :cond_11
    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 1606
    .local v2, "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    invoke-virtual {v2}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    .line 1607
    .end local v2    # "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    goto :goto_1b

    .line 1608
    :cond_2b
    monitor-exit v0

    .line 1609
    return-void

    .line 1608
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private greylist-max-o cleanDrmObj()V
    .registers 4

    .line 5834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanDrmObj: mDrmObj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDrmSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    .line 5835
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5834
    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5837
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 5838
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-virtual {v0, v2}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 5839
    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    .line 5841
    :cond_38
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    if-eqz v0, :cond_43

    .line 5842
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 5843
    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    .line 5845
    :cond_43
    return-void
.end method

.method public static whitelist create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .line 999
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "audioSessionId"    # I

    .line 1016
    const-string v1, "create failed:"

    const-string v2, "MediaPlayer"

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 1017
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_10

    return-object v3

    .line 1019
    :cond_10
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4, p0, p3}, Landroid/media/MediaPlayer;-><init>(Landroid/content/Context;I)V

    move-object v5, v4

    .line 1021
    .local v5, "mp":Landroid/media/MediaPlayer;
    if-eqz p2, :cond_1a

    move-object v4, p2

    goto :goto_23

    .line 1022
    :cond_1a
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    :goto_23
    nop

    .line 1023
    .local v4, "aa":Landroid/media/AudioAttributes;
    invoke-virtual {v5, v4}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 1024
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1025
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1026
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3c} :catch_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_3c} :catch_42
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_3c} :catch_3d

    .line 1027
    return-object v5

    .line 1034
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v4    # "aa":Landroid/media/AudioAttributes;
    .end local v5    # "mp":Landroid/media/MediaPlayer;
    :catch_3d
    move-exception v0

    .line 1035
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 1031
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_42
    move-exception v0

    .line 1032
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_4b

    .line 1028
    :catch_47
    move-exception v0

    .line 1029
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1037
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_4b
    nop

    .line 1038
    :goto_4c
    return-object v3
.end method

.method public static whitelist create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 916
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .line 937
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;
    .param p3, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p4, "audioSessionId"    # I

    .line 955
    const-string v0, "create failed:"

    const-string v1, "MediaPlayer"

    :try_start_4
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2, p0, p4}, Landroid/media/MediaPlayer;-><init>(Landroid/content/Context;I)V

    .line 956
    .local v2, "mp":Landroid/media/MediaPlayer;
    if-eqz p3, :cond_d

    move-object v3, p3

    goto :goto_16

    .line 957
    :cond_d
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    :goto_16
    nop

    .line 958
    .local v3, "aa":Landroid/media/AudioAttributes;
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 959
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 960
    if-eqz p2, :cond_22

    .line 961
    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 963
    :cond_22
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_25} :catch_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_25} :catch_2b
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_25} :catch_26

    .line 964
    return-object v2

    .line 971
    .end local v2    # "mp":Landroid/media/MediaPlayer;
    .end local v3    # "aa":Landroid/media/AudioAttributes;
    :catch_26
    move-exception v2

    .line 972
    .local v2, "ex":Ljava/lang/SecurityException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 968
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_2b
    move-exception v2

    .line 969
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_34

    .line 965
    :catch_30
    move-exception v2

    .line 966
    .local v2, "ex":Ljava/io/IOException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 974
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_34
    nop

    .line 976
    :goto_35
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist createPlayerIIdParcel()Landroid/os/Parcel;
    .registers 3

    .line 721
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v0

    .line 722
    .local v0, "parcel":Landroid/os/Parcel;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    iget v1, p0, Landroid/media/MediaPlayer;->mPlayerIId:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    return-object v0
.end method

.method private greylist-max-o getAudioStreamType()I
    .registers 3

    .line 1428
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_c

    .line 1429
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_getAudioStreamType()I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 1431
    :cond_c
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    return v0
.end method

.method private static final greylist-max-o getByteArrayFromUUID(Ljava/util/UUID;)[B
    .registers 11
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 5848
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 5849
    .local v0, "msb":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 5851
    .local v2, "lsb":J
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 5852
    .local v4, "uuidBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    const/16 v6, 0x8

    if-ge v5, v6, :cond_28

    .line 5853
    rsub-int/lit8 v7, v5, 0x7

    mul-int/2addr v7, v6

    ushr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 5854
    add-int/lit8 v7, v5, 0x8

    rsub-int/lit8 v8, v5, 0x7

    mul-int/2addr v8, v6

    ushr-long v8, v2, v8

    long-to-int v6, v8

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    .line 5852
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 5857
    .end local v5    # "i":I
    :cond_28
    return-object v4
.end method

.method private greylist-max-o getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2773
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2775
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2776
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2777
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2778
    sget-object v2, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 2779
    .local v2, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    nop

    .line 2781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2782
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2779
    return-object v2

    .line 2781
    .end local v2    # "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_24
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2782
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2783
    throw v2
.end method

.method private blacklist getRoutedDevicesInternal()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1548
    .local v0, "audioDeviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_getRoutedDeviceIds()[I

    move-result-object v1

    .line 1549
    .local v1, "deviceIds":[I
    if-eqz v1, :cond_23

    array-length v2, v1

    if-nez v2, :cond_f

    goto :goto_23

    .line 1553
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_22

    .line 1554
    aget v3, v1, v2

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v3

    .line 1556
    .local v3, "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    if-eqz v3, :cond_1f

    .line 1557
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    .end local v3    # "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1560
    .end local v2    # "i":I
    :cond_22
    return-object v0

    .line 1550
    :cond_23
    :goto_23
    return-object v0
.end method

.method private greylist-max-o isVideoScalingModeSupported(I)Z
    .registers 4
    .param p1, "mode"    # I

    .line 5866
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method private native greylist-max-o nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native greylist-max-o native_enableDeviceCallback(Z)V
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native blacklist native_getRoutedDeviceIds()[I
.end method

.method private native greylist-max-o native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native greylist-max-o native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private native blacklist native_setAudioSessionId(I)V
.end method

.method private final native greylist-max-o native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native greylist-max-o native_setOutputDevice(I)Z
.end method

.method private final native greylist-max-o native_setRetransmitEndpoint(Ljava/lang/String;I)I
.end method

.method private native blacklist native_setup(Ljava/lang/Object;Landroid/os/Parcel;I)V
.end method

.method private greylist-max-o populateInbandTracks()V
    .registers 7

    .line 3017
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    .line 3018
    .local v0, "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 3019
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    :try_start_8
    array-length v3, v0

    if-ge v2, v3, :cond_6e

    .line 3020
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3021
    goto :goto_6b

    .line 3023
    :cond_14
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 3026
    aget-object v3, v0, v2

    if-nez v3, :cond_35

    .line 3027
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected NULL track at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    :cond_35
    aget-object v3, v0, v2

    if-eqz v3, :cond_5d

    aget-object v3, v0, v2

    .line 3031
    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5d

    .line 3032
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    aget-object v4, v0, v2

    .line 3033
    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 3032
    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v3

    .line 3034
    .local v3, "track":Landroid/media/SubtitleTrack;
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3035
    nop

    .end local v3    # "track":Landroid/media/SubtitleTrack;
    goto :goto_6b

    .line 3036
    :cond_5d
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3019
    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3039
    .end local v2    # "i":I
    :cond_6e
    monitor-exit v1

    .line 3040
    return-void

    .line 3039
    :catchall_70
    move-exception v2

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_8 .. :try_end_72} :catchall_70

    throw v2
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 10
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 3854
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 3855
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-nez v0, :cond_c

    .line 3856
    return-void

    .line 3859
    :cond_c
    sparse-switch p1, :sswitch_data_76

    goto :goto_66

    .line 3878
    :sswitch_10
    const-string v1, "MediaPlayer"

    const-string v2, "postEventFromNative MEDIA_DRM_INFO"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    instance-of v1, p4, Landroid/os/Parcel;

    if-eqz v1, :cond_2e

    .line 3880
    move-object v1, p4

    check-cast v1, Landroid/os/Parcel;

    .line 3881
    .local v1, "parcel":Landroid/os/Parcel;
    new-instance v2, Landroid/media/MediaPlayer$DrmInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Landroid/os/Parcel;Landroid/media/MediaPlayer-IA;)V

    .line 3882
    .local v2, "drmInfo":Landroid/media/MediaPlayer$DrmInfo;
    iget-object v3, v0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3883
    :try_start_27
    iput-object v2, v0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    .line 3884
    monitor-exit v3

    .line 3885
    .end local v1    # "parcel":Landroid/os/Parcel;
    .end local v2    # "drmInfo":Landroid/media/MediaPlayer$DrmInfo;
    goto :goto_66

    .line 3884
    .restart local v1    # "parcel":Landroid/os/Parcel;
    .restart local v2    # "drmInfo":Landroid/media/MediaPlayer$DrmInfo;
    :catchall_2b
    move-exception v4

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2b

    throw v4

    .line 3886
    .end local v1    # "parcel":Landroid/os/Parcel;
    .end local v2    # "drmInfo":Landroid/media/MediaPlayer$DrmInfo;
    :cond_2e
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_DRM_INFO msg.obj of unexpected type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    goto :goto_66

    .line 3861
    :sswitch_47
    const/4 v1, 0x2

    if-ne p2, v1, :cond_66

    .line 3862
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/media/MediaPlayer$6;

    invoke-direct {v2, v0}, Landroid/media/MediaPlayer$6;-><init>(Landroid/media/MediaPlayer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3868
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3869
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_66

    .line 3895
    :sswitch_5b
    iget-object v1, v0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3896
    const/4 v2, 0x1

    :try_start_5f
    iput-boolean v2, v0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    .line 3897
    monitor-exit v1

    goto :goto_66

    :catchall_63
    move-exception v2

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_63

    throw v2

    .line 3902
    :cond_66
    :goto_66
    iget-object v1, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v1, :cond_75

    .line 3903
    iget-object v1, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3904
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3906
    .end local v1    # "m":Landroid/os/Message;
    :cond_75
    return-void

    :sswitch_data_76
    .sparse-switch
        0x1 -> :sswitch_5b
        0xc8 -> :sswitch_47
        0xd2 -> :sswitch_10
    .end sparse-switch
.end method

.method private greylist-max-o prepareDrm_createDrmStep(Ljava/util/UUID;)V
    .registers 6
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 5581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareDrm_createDrmStep: UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5584
    :try_start_18
    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    .line 5585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareDrm_createDrmStep: Created mDrmObj="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_37} :catch_39

    .line 5589
    nop

    .line 5590
    return-void

    .line 5586
    :catch_39
    move-exception v0

    .line 5587
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareDrm_createDrmStep: MediaDrm failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5588
    throw v0
.end method

.method private greylist-max-o prepareDrm_openSessionStep(Ljava/util/UUID;)V
    .registers 6
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation

    .line 5594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareDrm_openSessionStep: uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5600
    :try_start_18
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    .line 5601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareDrm_openSessionStep: mDrmSessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    .line 5602
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5601
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5606
    invoke-static {p1}, Landroid/media/MediaPlayer;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-direct {p0, v0, v2}, Landroid/media/MediaPlayer;->_prepareDrm([B[B)V

    .line 5607
    const-string v0, "prepareDrm_openSessionStep: _prepareDrm/Crypto succeeded"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4a} :catch_4c

    .line 5612
    nop

    .line 5614
    return-void

    .line 5609
    :catch_4c
    move-exception v0

    .line 5610
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareDrm_openSessionStep: open/crypto failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5611
    throw v0
.end method

.method private greylist-max-o resetDrmState()V
    .registers 8

    .line 5803
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5804
    :try_start_3
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetDrmState:  mDrmInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDrmProvisioningThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPrepareDrmInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mActiveDrmScheme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5810
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    .line 5811
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    .line 5813
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_75

    if-eqz v3, :cond_6c

    .line 5816
    :try_start_4b
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v3}, Landroid/media/MediaPlayer$ProvisioningThread;->join()V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_50} :catch_51
    .catchall {:try_start_4b .. :try_end_50} :catchall_75

    .line 5820
    goto :goto_6a

    .line 5818
    :catch_51
    move-exception v3

    .line 5819
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_52
    const-string v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetDrmState: ProvThread.join Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5821
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_6a
    iput-object v2, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    .line 5824
    :cond_6c
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    .line 5825
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    .line 5827
    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    .line 5828
    monitor-exit v0

    .line 5829
    return-void

    .line 5828
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_52 .. :try_end_77} :catchall_75

    throw v1
.end method

.method private greylist-max-o resumePrepareDrm(Ljava/util/UUID;)Z
    .registers 7
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 5781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumePrepareDrm: uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5784
    const/4 v0, 0x0

    .line 5787
    .local v0, "success":Z
    :try_start_19
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->prepareDrm_openSessionStep(Ljava/util/UUID;)V

    .line 5789
    iput-object p1, p0, Landroid/media/MediaPlayer;->mDrmUUID:Ljava/util/UUID;

    .line 5790
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_21} :catch_23

    .line 5792
    const/4 v0, 0x1

    .line 5796
    goto :goto_3a

    .line 5793
    :catch_23
    move-exception v2

    .line 5794
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HandleProvisioninig: Thread run _prepareDrm resume failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5798
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3a
    return v0
.end method

.method private greylist-max-o scanInternalSubtitleTracks()V
    .registers 2

    .line 3007
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    .line 3009
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    .line 3011
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_f

    .line 3012
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    .line 3014
    :cond_f
    return-void
.end method

.method private greylist-max-o selectOrDeselectInbandTrack(IZ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3410
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3412
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3413
    if-eqz p2, :cond_11

    const/4 v2, 0x4

    goto :goto_12

    :cond_11
    const/4 v2, 0x5

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3414
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3415
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 3417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3419
    nop

    .line 3420
    return-void

    .line 3417
    :catchall_23
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3419
    throw v2
.end method

.method private greylist-max-o selectOrDeselectTrack(IZ)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3360
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    .line 3362
    const/4 v0, 0x0

    .line 3364
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :try_start_4
    iget-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_c} :catch_7c

    .line 3368
    .end local v0    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    nop

    .line 3370
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack;

    .line 3371
    .local v0, "track":Landroid/media/SubtitleTrack;
    if-nez v0, :cond_1f

    .line 3373
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p2}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    .line 3374
    return-void

    .line 3377
    :cond_1f
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v2, :cond_24

    .line 3378
    return-void

    .line 3381
    :cond_24
    if-nez p2, :cond_3d

    .line 3383
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v2}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v2

    if-ne v2, v0, :cond_35

    .line 3384
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    goto :goto_3c

    .line 3386
    :cond_35
    const-string v2, "MediaPlayer"

    const-string v3, "trying to deselect track that was not selected"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    :goto_3c
    return-void

    .line 3392
    :cond_3d
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_76

    .line 3393
    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result v2

    .line 3394
    .local v2, "ttIndex":I
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3

    .line 3395
    if-ltz v2, :cond_71

    :try_start_4d
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_71

    .line 3396
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 3397
    .local v4, "p2":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_71

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v5, :cond_71

    .line 3399
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    .line 3402
    .end local v4    # "p2":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_71
    monitor-exit v3

    goto :goto_76

    :catchall_73
    move-exception v4

    monitor-exit v3
    :try_end_75
    .catchall {:try_start_4d .. :try_end_75} :catchall_73

    throw v4

    .line 3404
    .end local v2    # "ttIndex":I
    :cond_76
    :goto_76
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v2, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 3405
    return-void

    .line 3365
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :catch_7c
    move-exception v1

    .line 3367
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-void
.end method

.method private greylist-max-r setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
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

    .line 1201
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v0, 0x0

    .line 1202
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1204
    .local v1, "values":[Ljava/lang/String;
    if-eqz p2, :cond_39

    .line 1205
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 1206
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 1208
    const/4 v2, 0x0

    .line 1209
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1210
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v2

    .line 1211
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    .line 1212
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    .line 1213
    goto :goto_19

    .line 1215
    .end local v2    # "i":I
    :cond_39
    invoke-direct {p0, p1, v0, v1, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    .line 1216
    return-void
.end method

.method private greylist-max-r setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
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

    .line 1222
    .local p4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1223
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1224
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1225
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    .line 1226
    :cond_15
    if-eqz v1, :cond_20

    .line 1228
    nop

    .line 1229
    invoke-static {p1, p4}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;Ljava/util/List;)Landroid/os/IBinder;

    move-result-object v2

    .line 1228
    invoke-direct {p0, v2, p1, p2, p3}, Landroid/media/MediaPlayer;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1233
    return-void

    .line 1236
    :cond_20
    :goto_20
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1237
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1238
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_35

    .line 1239
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1240
    .end local v3    # "is":Ljava/io/FileInputStream;
    return-void

    .line 1237
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_35
    move-exception v4

    :try_start_36
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3e
    throw v4
.end method

.method private greylist-max-o setOnMediaTimeDiscontinuityListenerInt(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 4247
    monitor-enter p0

    .line 4248
    :try_start_1
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    .line 4249
    iput-object p2, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityHandler:Landroid/os/Handler;

    .line 4250
    monitor-exit p0

    .line 4251
    return-void

    .line 4250
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private greylist-max-o setOnSubtitleDataListenerInt(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 4165
    monitor-enter p0

    .line 4166
    :try_start_1
    iput-object p1, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 4167
    iput-object p2, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    .line 4168
    monitor-exit p0

    .line 4169
    return-void

    .line 4168
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private native greylist setParameter(ILandroid/os/Parcel;)Z
.end method

.method private declared-synchronized greylist-max-o setSubtitleAnchor()V
    .registers 7

    monitor-enter p0

    .line 2844
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_3f

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 2845
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$TimeProvider;

    .line 2846
    .local v0, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SetSubtitleAnchorThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2847
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2848
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2849
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/media/MediaPlayer$2;

    invoke-direct {v3, p0, v0, v1}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$TimeProvider;Landroid/os/HandlerThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_41

    .line 2869
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_41

    .line 2873
    goto :goto_3f

    .line 2870
    .end local p0    # "this":Landroid/media/MediaPlayer;
    :catch_30
    move-exception v3

    .line 2871
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 2872
    const-string v4, "MediaPlayer"

    const-string v5, "failed to join SetSubtitleAnchorThread"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_41

    .line 2875
    .end local v0    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    .end local v1    # "thread":Landroid/os/HandlerThread;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    .line 2843
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method private greylist-max-o startImpl()V
    .registers 2

    .line 1418
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->baseStart([I)V

    .line 1419
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1420
    invoke-direct {p0}, Landroid/media/MediaPlayer;->tryToEnableNativeRoutingCallback()V

    .line 1421
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1422
    return-void
.end method

.method private greylist-max-o stayAwake(Z)V
    .registers 3
    .param p1, "awake"    # Z

    .line 1778
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_23

    .line 1779
    if-eqz p1, :cond_14

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1780
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_23

    .line 1781
    :cond_14
    if-nez p1, :cond_23

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1782
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1785
    :cond_23
    :goto_23
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1786
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1787
    return-void
.end method

.method private blacklist testDisableNativeRoutingCallbacksLocked()V
    .registers 2

    .line 1652
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_12

    .line 1654
    const/4 v0, 0x0

    :try_start_d
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->native_enableDeviceCallback(Z)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_10} :catch_11

    .line 1658
    goto :goto_12

    .line 1655
    :catch_11
    move-exception v0

    .line 1660
    :cond_12
    :goto_12
    return-void
.end method

.method private blacklist testEnableNativeRoutingCallbacksLocked()Z
    .registers 4

    .line 1617
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_20

    .line 1619
    const/4 v0, 0x1

    :try_start_d
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->native_enableDeviceCallback(Z)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_10} :catch_11

    .line 1620
    return v0

    .line 1621
    :catch_11
    move-exception v0

    .line 1622
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x3

    const-string v2, "MediaPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1623
    const-string v1, "testEnableNativeRoutingCallbacks failed"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1627
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist tryToDisableNativeRoutingCallback()V
    .registers 3

    .line 1639
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1640
    :try_start_3
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    if-eqz v1, :cond_d

    .line 1641
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    .line 1642
    invoke-direct {p0}, Landroid/media/MediaPlayer;->testDisableNativeRoutingCallbacksLocked()V

    .line 1644
    :cond_d
    monitor-exit v0

    .line 1645
    return-void

    .line 1644
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist tryToEnableNativeRoutingCallback()V
    .registers 3

    .line 1631
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1632
    :try_start_3
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    if-nez v1, :cond_d

    .line 1633
    invoke-direct {p0}, Landroid/media/MediaPlayer;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    .line 1635
    :cond_d
    monitor-exit v0

    .line 1636
    return-void

    .line 1635
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private greylist-max-o updateSurfaceScreenOn()V
    .registers 3

    .line 1790
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_14

    .line 1791
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1793
    :cond_14
    return-void
.end method


# virtual methods
.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1685
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1686
    if-eqz p1, :cond_23

    :try_start_5
    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1687
    invoke-direct {p0}, Landroid/media/MediaPlayer;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mEnableSelfRoutingMonitor:Z

    .line 1688
    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 1690
    if-eqz p2, :cond_1b

    move-object v3, p2

    goto :goto_1d

    :cond_1b
    iget-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    :goto_1d
    invoke-direct {v2, p0, p1, v3}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 1688
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    :cond_23
    monitor-exit v0

    .line 1693
    return-void

    .line 1692
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public greylist addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2940
    move-object v0, p1

    .line 2941
    .local v0, "fIs":Ljava/io/InputStream;
    move-object v1, p2

    .line 2943
    .local v1, "fFormat":Landroid/media/MediaFormat;
    if-eqz p1, :cond_11

    .line 2946
    iget-object v2, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v2

    .line 2947
    :try_start_7
    iget-object v3, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2948
    monitor-exit v2

    goto :goto_18

    :catchall_e
    move-exception v3

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v3

    .line 2950
    :cond_11
    const-string v2, "MediaPlayer"

    const-string v3, "addSubtitleSource called with null InputStream"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :goto_18
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    .line 2956
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SubtitleReadThread"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2958
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2959
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2960
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Landroid/media/MediaPlayer$4;

    invoke-direct {v4, p0, v0, v1, v2}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3004
    return-void
.end method

.method public whitelist addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11
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

    .line 3088
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3089
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_5e

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_5e

    .line 3094
    :cond_f
    const/4 v1, 0x0

    .line 3096
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_10
    const-string v2, "fuse.sys.transcode_player_optimize"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3098
    .local v2, "optimize":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3099
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3100
    .local v4, "opts":Landroid/os/Bundle;
    const-string v5, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3101
    if-eqz v2, :cond_2f

    const-string v5, "*/*"

    invoke-virtual {v3, p2, v5, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    goto :goto_35

    .line 3102
    :cond_2f
    const-string v5, "r"

    invoke-virtual {v3, p2, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_35} :catch_59
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_35} :catch_52
    .catchall {:try_start_10 .. :try_end_35} :catchall_4b

    :goto_35
    move-object v1, v5

    .line 3103
    if-nez v1, :cond_3e

    .line 3111
    if-eqz v1, :cond_3d

    .line 3112
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 3104
    :cond_3d
    return-void

    .line 3106
    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_45} :catch_59
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_52
    .catchall {:try_start_3e .. :try_end_45} :catchall_4b

    .line 3111
    if-eqz v1, :cond_4a

    .line 3112
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 3107
    :cond_4a
    return-void

    .line 3111
    .end local v2    # "optimize":Z
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "opts":Landroid/os/Bundle;
    :catchall_4b
    move-exception v2

    if-eqz v1, :cond_51

    .line 3112
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 3114
    :cond_51
    throw v2

    .line 3109
    :catch_52
    move-exception v2

    .line 3111
    if-eqz v1, :cond_5d

    .line 3112
    :goto_55
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_5d

    .line 3108
    :catch_59
    move-exception v2

    .line 3111
    if-eqz v1, :cond_5d

    .line 3112
    goto :goto_55

    .line 3115
    :cond_5d
    :goto_5d
    return-void

    .line 3090
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_5e
    :goto_5e
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    return-void
.end method

.method public whitelist addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .registers 19
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

    .line 3159
    move-object/from16 v1, p6

    invoke-static {v1}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 3165
    :try_start_8
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_c} :catch_7a

    move-object v4, v0

    .line 3169
    .local v4, "dupedFd":Ljava/io/FileDescriptor;
    nop

    .line 3171
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    move-object v11, v0

    .line 3172
    .local v11, "fFormat":Landroid/media/MediaFormat;
    const-string v0, "mime"

    invoke-virtual {v11, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3173
    const-string v0, "is-timed-text"

    const/4 v2, 0x1

    invoke-virtual {v11, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3176
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_26

    .line 3177
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    .line 3180
    :cond_26
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, v11}, Landroid/media/SubtitleController;->hasRendererFor(Landroid/media/MediaFormat;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3182
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3183
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v3, Landroid/media/SRTRenderer;

    iget-object v5, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v3, v0, v5}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 3185
    .end local v0    # "context":Landroid/content/Context;
    :cond_3e
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, v11}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v9

    .line 3186
    .local v9, "track":Landroid/media/SubtitleTrack;
    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v2

    .line 3187
    :try_start_47
    iget-object v0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-static {v3, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3188
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_77

    .line 3190
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    .line 3192
    move-wide v5, p2

    .line 3193
    .local v5, "offset2":J
    move-wide/from16 v7, p4

    .line 3194
    .local v7, "length2":J
    new-instance v10, Landroid/os/HandlerThread;

    const-string v0, "TimedTextReadThread"

    const/16 v2, 0x9

    invoke-direct {v10, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 3197
    .local v10, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 3198
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3199
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Landroid/media/MediaPlayer$5;

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Landroid/media/MediaPlayer$5;-><init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3248
    return-void

    .line 3188
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v5    # "offset2":J
    .end local v7    # "length2":J
    .end local v10    # "thread":Landroid/os/HandlerThread;
    :catchall_77
    move-exception v0

    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v0

    .line 3166
    .end local v4    # "dupedFd":Ljava/io/FileDescriptor;
    .end local v9    # "track":Landroid/media/SubtitleTrack;
    .end local v11    # "fFormat":Landroid/media/MediaFormat;
    :catch_7a
    move-exception v0

    .line 3167
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v2, "MediaPlayer"

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3168
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3160
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal mimeType for timed text source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3136
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "mimeType":Ljava/lang/String;
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    .line 3137
    return-void
.end method

.method public whitelist addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3060
    invoke-static {p2}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3065
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3066
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3067
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1b

    .line 3068
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 3069
    .end local v1    # "is":Ljava/io/FileInputStream;
    return-void

    .line 3066
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :catchall_1b
    move-exception v2

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw v2

    .line 3061
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "is":Ljava/io/FileInputStream;
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal mimeType for timed text source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3062
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native whitelist attachAuxEffect(I)V
.end method

.method public whitelist clearOnMediaTimeDiscontinuityListener()V
    .registers 2

    .line 4242
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/media/MediaPlayer;->setOnMediaTimeDiscontinuityListenerInt(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V

    .line 4243
    return-void
.end method

.method public whitelist clearOnSubtitleDataListener()V
    .registers 2

    .line 4160
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/media/MediaPlayer;->setOnSubtitleDataListenerInt(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    .line 4161
    return-void
.end method

.method public whitelist createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .registers 3
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;

    .line 1495
    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method public whitelist deselectTrack(I)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3354
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 3355
    return-void
.end method

.method public greylist-max-o easyPlaybackParams(FI)Landroid/media/PlaybackParams;
    .registers 6
    .param p1, "rate"    # F
    .param p2, "audioMode"    # I

    .line 1909
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 1910
    .local v0, "params":Landroid/media/PlaybackParams;
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 1911
    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p2, :pswitch_data_4a

    .line 1923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio playback mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1924
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1920
    .end local v1    # "msg":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 1921
    goto :goto_49

    .line 1916
    :pswitch_34
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v1

    .line 1917
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    .line 1918
    goto :goto_49

    .line 1913
    :pswitch_41
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 1914
    nop

    .line 1926
    :goto_49
    return-object v0

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_41
        :pswitch_34
        :pswitch_2c
    .end packed-switch
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 3480
    invoke-direct {p0}, Landroid/media/MediaPlayer;->tryToDisableNativeRoutingCallback()V

    .line 3481
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseRelease()V

    .line 3482
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    .line 3483
    return-void
.end method

.method public native whitelist getAudioSessionId()I
.end method

.method public native whitelist getCurrentPosition()I
.end method

.method public whitelist getDrmInfo()Landroid/media/MediaPlayer$DrmInfo;
    .registers 6

    .line 4922
    const/4 v0, 0x0

    .line 4926
    .local v0, "drmInfo":Landroid/media/MediaPlayer$DrmInfo;
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4927
    :try_start_4
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    if-nez v2, :cond_1e

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    if-eqz v2, :cond_d

    goto :goto_1e

    .line 4928
    :cond_d
    const-string v2, "The Player has not been prepared yet"

    .line 4929
    .local v2, "msg":Ljava/lang/String;
    const-string v3, "MediaPlayer"

    const-string v4, "The Player has not been prepared yet"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The Player has not been prepared yet"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "drmInfo":Landroid/media/MediaPlayer$DrmInfo;
    .end local p0    # "this":Landroid/media/MediaPlayer;
    throw v3

    .line 4933
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v0    # "drmInfo":Landroid/media/MediaPlayer$DrmInfo;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    :cond_1e
    :goto_1e
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    if-eqz v2, :cond_29

    .line 4934
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-static {v2}, Landroid/media/MediaPlayer$DrmInfo;->-$$Nest$mmakeCopy(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v2

    move-object v0, v2

    .line 4936
    :cond_29
    monitor-exit v1

    .line 4938
    return-object v0

    .line 4936
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public whitelist getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 5347
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrmPropertyString: propertyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5350
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5352
    :try_start_1b
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v1, :cond_33

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z

    if-eqz v1, :cond_24

    goto :goto_33

    .line 5353
    :cond_24
    const-string v1, "MediaPlayer"

    const-string v2, "getDrmPropertyString NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5354
    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string v2, "getDrmPropertyString: Has to prepareDrm() first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "propertyName":Ljava/lang/String;
    throw v1
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_79

    .line 5358
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "propertyName":Ljava/lang/String;
    :cond_33
    :goto_33
    :try_start_33
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v1, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_5e
    .catchall {:try_start_33 .. :try_end_39} :catchall_79

    .line 5362
    .local v1, "value":Ljava/lang/String;
    nop

    .line 5363
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_79

    .line 5365
    const-string v0, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmPropertyString: propertyName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5367
    return-object v1

    .line 5359
    .end local v1    # "value":Ljava/lang/String;
    :catch_5e
    move-exception v1

    .line 5360
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5f
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrmPropertyString Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5361
    nop

    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "propertyName":Ljava/lang/String;
    throw v1

    .line 5363
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "propertyName":Ljava/lang/String;
    :catchall_79
    move-exception v1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_5f .. :try_end_7b} :catchall_79

    throw v1
.end method

.method public native whitelist getDuration()I
.end method

.method public whitelist getKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;
    .registers 14
    .param p1, "keySetId"    # [B
    .param p2, "initData"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "keyType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 5204
    .local p5, "optionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyRequest:  keySetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5205
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5206
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " keyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " optionalParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5204
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5211
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5212
    :try_start_4b
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_dd

    if-eqz v0, :cond_cb

    .line 5218
    const/4 v0, 0x3

    if-eq p4, v0, :cond_65

    .line 5219
    :try_start_52
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    goto :goto_66

    .line 5242
    :catchall_55
    move-exception v0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    goto/16 :goto_e1

    .line 5237
    :catch_5b
    move-exception v0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    goto :goto_9e

    .line 5233
    :catch_60
    move-exception v0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    goto :goto_bc

    .line 5220
    :cond_65
    move-object v0, p1

    :goto_66
    move-object v3, v0

    .line 5223
    .local v3, "scope":[B
    if-eqz p5, :cond_70

    .line 5224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_6e
    .catch Landroid/media/NotProvisionedException; {:try_start_52 .. :try_end_6e} :catch_60
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6e} :catch_5b
    .catchall {:try_start_52 .. :try_end_6e} :catchall_55

    move-object v7, v0

    goto :goto_72

    .line 5225
    :cond_70
    const/4 v0, 0x0

    move-object v7, v0

    :goto_72
    nop

    .line 5227
    .local v7, "hmapOptionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_73
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;
    :try_end_75
    .catch Landroid/media/NotProvisionedException; {:try_start_73 .. :try_end_75} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_75} :catch_9a
    .catchall {:try_start_73 .. :try_end_75} :catchall_dd

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p2    # "initData":[B
    .end local p3    # "mimeType":Ljava/lang/String;
    .end local p4    # "keyType":I
    .local v4, "initData":[B
    .local v5, "mimeType":Ljava/lang/String;
    .local v6, "keyType":I
    :try_start_78
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p2

    .line 5229
    .local p2, "request":Landroid/media/MediaDrm$KeyRequest;
    const-string p3, "MediaPlayer"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getKeyRequest:   --> request: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Landroid/media/NotProvisionedException; {:try_start_78 .. :try_end_94} :catch_98
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_94} :catch_96
    .catchall {:try_start_78 .. :try_end_94} :catchall_e3

    .line 5231
    :try_start_94
    monitor-exit v1

    return-object p2

    .line 5237
    .end local v3    # "scope":[B
    .end local v7    # "hmapOptionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p2    # "request":Landroid/media/MediaDrm$KeyRequest;
    :catch_96
    move-exception v0

    goto :goto_9e

    .line 5233
    :catch_98
    move-exception v0

    goto :goto_bc

    .line 5237
    .end local v4    # "initData":[B
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "keyType":I
    .local p2, "initData":[B
    .restart local p3    # "mimeType":Ljava/lang/String;
    .restart local p4    # "keyType":I
    :catch_9a
    move-exception v0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 5238
    .end local p2    # "initData":[B
    .end local p3    # "mimeType":Ljava/lang/String;
    .end local p4    # "keyType":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "initData":[B
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "keyType":I
    :goto_9e
    const-string p2, "MediaPlayer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getKeyRequest Exception "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5239
    nop

    .end local v4    # "initData":[B
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "keyType":I
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "keySetId":[B
    .end local p5    # "optionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v0

    .line 5233
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "keySetId":[B
    .restart local p2    # "initData":[B
    .restart local p3    # "mimeType":Ljava/lang/String;
    .restart local p4    # "keyType":I
    .restart local p5    # "optionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_b8
    move-exception v0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 5234
    .end local p2    # "initData":[B
    .end local p3    # "mimeType":Ljava/lang/String;
    .end local p4    # "keyType":I
    .local v0, "e":Landroid/media/NotProvisionedException;
    .restart local v4    # "initData":[B
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "keyType":I
    :goto_bc
    const-string p2, "MediaPlayer"

    const-string p3, "getKeyRequest NotProvisionedException: Unexpected. Shouldn\'t have reached here."

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5236
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "getKeyRequest: Unexpected provisioning error."

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "initData":[B
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "keyType":I
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "keySetId":[B
    .end local p5    # "optionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw p2

    .line 5213
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "keySetId":[B
    .restart local p2    # "initData":[B
    .restart local p3    # "mimeType":Ljava/lang/String;
    .restart local p4    # "keyType":I
    .restart local p5    # "optionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_cb
    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p2    # "initData":[B
    .end local p3    # "mimeType":Ljava/lang/String;
    .end local p4    # "keyType":I
    .restart local v4    # "initData":[B
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "keyType":I
    const-string p2, "MediaPlayer"

    const-string p3, "getKeyRequest NoDrmSchemeException"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5214
    new-instance p2, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string p3, "getKeyRequest: Has to set a DRM scheme first."

    invoke-direct {p2, p3}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    .end local v4    # "initData":[B
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "keyType":I
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "keySetId":[B
    .end local p5    # "optionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw p2

    .line 5242
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "keySetId":[B
    .restart local p2    # "initData":[B
    .restart local p3    # "mimeType":Ljava/lang/String;
    .restart local p4    # "keyType":I
    .restart local p5    # "optionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_dd
    move-exception v0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p2    # "initData":[B
    .end local p3    # "mimeType":Ljava/lang/String;
    .end local p4    # "keyType":I
    .restart local v4    # "initData":[B
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "keyType":I
    :goto_e1
    monitor-exit v1
    :try_end_e2
    .catchall {:try_start_94 .. :try_end_e2} :catchall_e3

    throw v0

    :catchall_e3
    move-exception v0

    goto :goto_e1
.end method

.method public greylist getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .registers 3

    .line 3515
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3516
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-nez v1, :cond_e

    .line 3517
    new-instance v1, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 3519
    :cond_e
    iget-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    monitor-exit v0

    return-object v1

    .line 3520
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public greylist getMetadata(ZZ)Landroid/media/Metadata;
    .registers 7
    .param p1, "update_only"    # Z
    .param p2, "apply_filter"    # Z

    .line 2155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2156
    .local v0, "reply":Landroid/os/Parcel;
    new-instance v1, Landroid/media/Metadata;

    invoke-direct {v1}, Landroid/media/Metadata;-><init>()V

    .line 2158
    .local v1, "data":Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    .line 2159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2160
    return-object v3

    .line 2165
    :cond_14
    invoke-virtual {v1, v0}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2167
    return-object v3

    .line 2169
    :cond_1e
    return-object v1
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 1828
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1829
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method public native whitelist getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public whitelist getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .registers 2

    .line 1538
    monitor-enter p0

    .line 1539
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaPlayer;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 1540
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .registers 3

    .line 1573
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    .line 1574
    .local v0, "audioDeviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1575
    const/4 v1, 0x0

    return-object v1

    .line 1577
    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceInfo;

    return-object v1
.end method

.method public whitelist getRoutedDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1590
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSelectedTrack(I)I
    .registers 9
    .param p1, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3268
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_3a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3a

    .line 3271
    :cond_a
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v0

    .line 3272
    .local v0, "subtitleTrack":Landroid/media/SubtitleTrack;
    if-eqz v0, :cond_3a

    .line 3273
    iget-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 3274
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    :try_start_16
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 3275
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 3276
    .local v3, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v4, v0, :cond_32

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_32

    .line 3277
    monitor-exit v1

    return v2

    .line 3274
    .end local v3    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 3280
    .end local v2    # "i":I
    :cond_35
    monitor-exit v1

    goto :goto_3a

    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_37

    throw v2

    .line 3284
    .end local v0    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :cond_3a
    :goto_3a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3285
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3287
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_42
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3288
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3290
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 3291
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3292
    .local v2, "inbandTrackIndex":I
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_8f

    .line 3293
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_59
    :try_start_59
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_82

    .line 3294
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 3295
    .local v5, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_7f

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_7f

    .line 3296
    monitor-exit v3
    :try_end_78
    .catchall {:try_start_59 .. :try_end_78} :catchall_8c

    .line 3302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3296
    return v4

    .line 3293
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 3299
    .end local v4    # "i":I
    :cond_82
    :try_start_82
    monitor-exit v3
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_8c

    .line 3300
    nop

    .line 3302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3300
    const/4 v3, -0x1

    return v3

    .line 3299
    :catchall_8c
    move-exception v4

    :try_start_8d
    monitor-exit v3
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    .end local v0    # "request":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "trackType":I
    :try_start_8e
    throw v4
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8f

    .line 3302
    .end local v2    # "inbandTrackIndex":I
    .restart local v0    # "request":Landroid/os/Parcel;
    .restart local v1    # "reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "trackType":I
    :catchall_8f
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3304
    throw v2
.end method

.method public native whitelist getSyncParams()Landroid/media/SyncParams;
.end method

.method public whitelist getTimestamp()Landroid/media/MediaTimestamp;
    .registers 7

    .line 2112
    :try_start_0
    new-instance v0, Landroid/media/MediaTimestamp;

    .line 2113
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 2114
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 2115
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v5

    goto :goto_1e

    :cond_1d
    const/4 v5, 0x0

    :goto_1e
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaTimestamp;-><init>(JJF)V
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_21} :catch_22

    .line 2112
    return-object v0

    .line 2116
    :catch_22
    move-exception v0

    .line 2117
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2753
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    .line 2755
    .local v0, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 2756
    :try_start_7
    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Landroid/media/MediaPlayer$TrackInfo;

    .line 2757
    .local v2, "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v2

    if-ge v3, v4, :cond_42

    .line 2758
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2759
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_2c

    .line 2761
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v0, v5

    aput-object v5, v2, v3

    goto :goto_3f

    .line 2763
    :cond_2c
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/media/SubtitleTrack;

    .line 2764
    .local v5, "track":Landroid/media/SubtitleTrack;
    new-instance v6, Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v7

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/media/MediaPlayer$TrackInfo;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v6, v2, v3

    .line 2757
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v5    # "track":Landroid/media/SubtitleTrack;
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2767
    .end local v3    # "i":I
    :cond_42
    monitor-exit v1

    return-object v2

    .line 2768
    .end local v2    # "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw v2
.end method

.method public native whitelist getVideoHeight()I
.end method

.method public native whitelist getVideoWidth()I
.end method

.method public greylist invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .registers 7
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .line 779
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 780
    .local v0, "retcode":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 781
    if-nez v0, :cond_b

    .line 784
    return-void

    .line 782
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native whitelist isLooping()Z
.end method

.method public native whitelist isPlaying()Z
.end method

.method public greylist newRequest()Landroid/os/Parcel;
    .registers 3

    .line 758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 759
    .local v0, "parcel":Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 760
    return-object v0
.end method

.method public greylist-max-o notifyAt(J)V
    .registers 3
    .param p1, "mediaTimeUs"    # J

    .line 2336
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_notifyAt(J)V

    .line 2337
    return-void
.end method

.method public greylist-max-o onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .registers 8
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    .line 2899
    iget v0, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_f

    .line 2901
    :try_start_5
    iget v0, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_a} :catch_b

    .line 2903
    goto :goto_c

    .line 2902
    :catch_b
    move-exception v0

    .line 2904
    :goto_c
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2906
    :cond_f
    monitor-enter p0

    .line 2907
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mSubtitleDataListenerDisabled:Z

    .line 2908
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_58

    .line 2909
    if-nez p1, :cond_17

    .line 2910
    return-void

    .line 2913
    :cond_17
    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v2

    .line 2914
    :try_start_1a
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2915
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_3f

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v5, p1, :cond_3f

    .line 2917
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2918
    goto :goto_40

    .line 2920
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_3f
    goto :goto_20

    .line 2921
    :cond_40
    :goto_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_55

    .line 2923
    iget v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz v2, :cond_54

    .line 2925
    :try_start_45
    iget v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    invoke-direct {p0, v2, v0}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_4a} :catch_4b

    .line 2927
    goto :goto_4c

    .line 2926
    :catch_4b
    move-exception v0

    .line 2928
    :goto_4c
    monitor-enter p0

    .line 2929
    :try_start_4d
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mSubtitleDataListenerDisabled:Z

    .line 2930
    monitor-exit p0

    goto :goto_54

    :catchall_51
    move-exception v0

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_51

    throw v0

    .line 2933
    :cond_54
    :goto_54
    return-void

    .line 2921
    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0

    .line 2908
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method public whitelist pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1458
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1459
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    .line 1460
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->basePause()V

    .line 1461
    return-void
.end method

.method greylist-max-o playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 4
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;

    .line 1484
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    return v0
.end method

.method greylist-max-o playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .registers 3
    .param p1, "id"    # I

    .line 1489
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o playerPause()V
    .registers 1

    .line 1472
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 1473
    return-void
.end method

.method greylist-max-o playerSetAuxEffectSendLevel(ZF)I
    .registers 4
    .param p1, "muting"    # Z
    .param p2, "level"    # F

    .line 2512
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move v0, p2

    :goto_5
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    .line 2513
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o playerSetVolume(ZFF)V
    .registers 6
    .param p1, "muting"    # Z
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .line 2429
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    move v1, p2

    :goto_6
    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    move v0, p3

    :goto_a
    invoke-direct {p0, v1, v0}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    .line 2430
    return-void
.end method

.method greylist-max-o playerStart()V
    .registers 1

    .line 1467
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 1468
    return-void
.end method

.method greylist-max-o playerStop()V
    .registers 1

    .line 1477
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 1478
    return-void
.end method

.method public whitelist prepare()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1337
    invoke-direct {p0}, Landroid/media/MediaPlayer;->createPlayerIIdParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 1339
    .local v0, "piidParcel":Landroid/os/Parcel;
    :try_start_4
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_prepare(Landroid/os/Parcel;)I

    move-result v1

    .line 1340
    .local v1, "retCode":I
    if-eqz v1, :cond_24

    .line 1341
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare(): could not set piid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaPlayer;->mPlayerIId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_36

    .line 1344
    .end local v1    # "retCode":I
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1345
    nop

    .line 1346
    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    .line 1349
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1350
    const/4 v2, 0x1

    :try_start_2f
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    .line 1351
    monitor-exit v1

    .line 1353
    return-void

    .line 1351
    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_33

    throw v2

    .line 1344
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1345
    throw v1
.end method

.method public whitelist prepareAsync()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1369
    invoke-direct {p0}, Landroid/media/MediaPlayer;->createPlayerIIdParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 1371
    .local v0, "piidParcel":Landroid/os/Parcel;
    :try_start_4
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_prepareAsync(Landroid/os/Parcel;)I

    move-result v1

    .line 1372
    .local v1, "retCode":I
    if-eqz v1, :cond_24

    .line 1373
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareAsync(): could not set piid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaPlayer;->mPlayerIId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_29

    .line 1376
    .end local v1    # "retCode":I
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1377
    nop

    .line 1378
    return-void

    .line 1376
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1377
    throw v1
.end method

.method public whitelist prepareDrm(Ljava/util/UUID;)V
    .registers 11
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;,
            Landroid/media/ResourceBusyException;,
            Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;,
            Landroid/media/MediaPlayer$ProvisioningServerErrorException;
        }
    .end annotation

    .line 4982
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareDrm: uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOnDrmConfigHelper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    const/4 v0, 0x0

    .line 4986
    .local v0, "allDoneWithoutProvisioning":Z
    const/4 v1, 0x0

    .line 4988
    .local v1, "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4991
    :try_start_29
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    if-eqz v3, :cond_149

    .line 4998
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v3, :cond_129

    .line 5005
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    if-nez v3, :cond_118

    .line 5012
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez v3, :cond_107

    .line 5019
    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    .line 5021
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    .line 5023
    iget-object v4, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_15a

    move-object v1, v4

    .line 5027
    const/4 v4, 0x0

    :try_start_43
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->prepareDrm_createDrmStep(Ljava/util/UUID;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_fb
    .catchall {:try_start_43 .. :try_end_46} :catchall_15a

    .line 5032
    nop

    .line 5034
    :try_start_47
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z

    .line 5035
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_15a

    .line 5039
    iget-object v2, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    if-eqz v2, :cond_53

    .line 5040
    iget-object v2, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    invoke-interface {v2, p0}, Landroid/media/MediaPlayer$OnDrmConfigHelper;->onDrmConfig(Landroid/media/MediaPlayer;)V

    .line 5043
    :cond_53
    iget-object v5, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5044
    :try_start_56
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_f8

    .line 5045
    const/4 v2, 0x0

    .line 5048
    .local v2, "earlyExit":Z
    :try_start_59
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->prepareDrm_openSessionStep(Ljava/util/UUID;)V

    .line 5050
    iput-object p1, p0, Landroid/media/MediaPlayer;->mDrmUUID:Ljava/util/UUID;

    .line 5051
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_60
    .catch Ljava/lang/IllegalStateException; {:try_start_59 .. :try_end_60} :catch_d8
    .catch Landroid/media/NotProvisionedException; {:try_start_59 .. :try_end_60} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_60} :catch_70
    .catchall {:try_start_59 .. :try_end_60} :catchall_6d

    .line 5053
    const/4 v0, 0x1

    .line 5099
    :try_start_61
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez v3, :cond_67

    .line 5100
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    .line 5102
    :cond_67
    if-eqz v2, :cond_cf

    .line 5103
    :goto_69
    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_f8

    goto :goto_cf

    .line 5099
    :catchall_6d
    move-exception v3

    goto/16 :goto_eb

    .line 5094
    :catch_70
    move-exception v3

    .line 5095
    .local v3, "e":Ljava/lang/Exception;
    :try_start_71
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prepareDrm: Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5096
    const/4 v2, 0x1

    .line 5097
    nop

    .end local v0    # "allDoneWithoutProvisioning":Z
    .end local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .end local v2    # "earlyExit":Z
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "uuid":Ljava/util/UUID;
    throw v3

    .line 5060
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "allDoneWithoutProvisioning":Z
    .restart local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .restart local v2    # "earlyExit":Z
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "uuid":Ljava/util/UUID;
    :catch_8c
    move-exception v3

    .line 5061
    .local v3, "e":Landroid/media/NotProvisionedException;
    const-string v6, "MediaPlayer"

    const-string v7, "prepareDrm: NotProvisionedException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5064
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->HandleProvisioninig(Ljava/util/UUID;)I

    move-result v6

    .line 5068
    .local v6, "result":I
    if-eqz v6, :cond_c6

    .line 5069
    const/4 v2, 0x1

    .line 5072
    packed-switch v6, :pswitch_data_15e

    .line 5087
    const-string v7, "prepareDrm: Post-provisioning preparation failed."

    goto :goto_bb

    .line 5080
    :pswitch_a1
    const-string v7, "prepareDrm: Provisioning was required but the request was denied by the server."

    .line 5082
    .local v7, "msg":Ljava/lang/String;
    const-string v8, "MediaPlayer"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5083
    new-instance v8, Landroid/media/MediaPlayer$ProvisioningServerErrorException;

    invoke-direct {v8, v7}, Landroid/media/MediaPlayer$ProvisioningServerErrorException;-><init>(Ljava/lang/String;)V

    .end local v0    # "allDoneWithoutProvisioning":Z
    .end local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .end local v2    # "earlyExit":Z
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "uuid":Ljava/util/UUID;
    throw v8

    .line 5074
    .end local v7    # "msg":Ljava/lang/String;
    .restart local v0    # "allDoneWithoutProvisioning":Z
    .restart local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .restart local v2    # "earlyExit":Z
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "uuid":Ljava/util/UUID;
    :pswitch_ae
    const-string v7, "prepareDrm: Provisioning was required but failed due to a network error."

    .line 5076
    .restart local v7    # "msg":Ljava/lang/String;
    const-string v8, "MediaPlayer"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5077
    new-instance v8, Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;

    invoke-direct {v8, v7}, Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;-><init>(Ljava/lang/String;)V

    .end local v0    # "allDoneWithoutProvisioning":Z
    .end local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .end local v2    # "earlyExit":Z
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "uuid":Ljava/util/UUID;
    throw v8

    .line 5088
    .restart local v0    # "allDoneWithoutProvisioning":Z
    .restart local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .restart local v2    # "earlyExit":Z
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "uuid":Ljava/util/UUID;
    :goto_bb
    const-string v8, "MediaPlayer"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5089
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "allDoneWithoutProvisioning":Z
    .end local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .end local v2    # "earlyExit":Z
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "uuid":Ljava/util/UUID;
    throw v8
    :try_end_c6
    .catchall {:try_start_71 .. :try_end_c6} :catchall_6d

    .line 5099
    .end local v3    # "e":Landroid/media/NotProvisionedException;
    .end local v6    # "result":I
    .end local v7    # "msg":Ljava/lang/String;
    .restart local v0    # "allDoneWithoutProvisioning":Z
    .restart local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .restart local v2    # "earlyExit":Z
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "uuid":Ljava/util/UUID;
    :cond_c6
    :try_start_c6
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez v3, :cond_cc

    .line 5100
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    .line 5102
    :cond_cc
    if-eqz v2, :cond_cf

    .line 5103
    goto :goto_69

    .line 5106
    .end local v2    # "earlyExit":Z
    :cond_cf
    :goto_cf
    monitor-exit v5
    :try_end_d0
    .catchall {:try_start_c6 .. :try_end_d0} :catchall_f8

    .line 5110
    if-eqz v0, :cond_d7

    .line 5111
    if-eqz v1, :cond_d7

    .line 5112
    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->notifyClient(I)V

    .line 5115
    :cond_d7
    return-void

    .line 5054
    .restart local v2    # "earlyExit":Z
    :catch_d8
    move-exception v3

    .line 5055
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_d9
    const-string v6, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    .line 5057
    .local v6, "msg":Ljava/lang/String;
    const-string v7, "MediaPlayer"

    const-string v8, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    const/4 v2, 0x1

    .line 5059
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "allDoneWithoutProvisioning":Z
    .end local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .end local v2    # "earlyExit":Z
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "uuid":Ljava/util/UUID;
    throw v7
    :try_end_eb
    .catchall {:try_start_d9 .. :try_end_eb} :catchall_6d

    .line 5099
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v6    # "msg":Ljava/lang/String;
    .restart local v0    # "allDoneWithoutProvisioning":Z
    .restart local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .restart local v2    # "earlyExit":Z
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "uuid":Ljava/util/UUID;
    :goto_eb
    :try_start_eb
    iget-boolean v6, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez v6, :cond_f1

    .line 5100
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    .line 5102
    :cond_f1
    if-eqz v2, :cond_f6

    .line 5103
    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    .line 5105
    :cond_f6
    nop

    .end local v0    # "allDoneWithoutProvisioning":Z
    .end local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "uuid":Ljava/util/UUID;
    throw v3

    .line 5106
    .end local v2    # "earlyExit":Z
    .restart local v0    # "allDoneWithoutProvisioning":Z
    .restart local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "uuid":Ljava/util/UUID;
    :catchall_f8
    move-exception v2

    monitor-exit v5
    :try_end_fa
    .catchall {:try_start_eb .. :try_end_fa} :catchall_f8

    throw v2

    .line 5028
    :catch_fb
    move-exception v3

    .line 5029
    .local v3, "e":Ljava/lang/Exception;
    :try_start_fc
    const-string v5, "MediaPlayer"

    const-string v6, "prepareDrm(): Exception "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5030
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    .line 5031
    nop

    .end local v0    # "allDoneWithoutProvisioning":Z
    .end local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "uuid":Ljava/util/UUID;
    throw v3

    .line 5013
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "allDoneWithoutProvisioning":Z
    .restart local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "uuid":Ljava/util/UUID;
    :cond_107
    const-string v3, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    .line 5014
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "MediaPlayer"

    const-string v5, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5015
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "allDoneWithoutProvisioning":Z
    .end local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "uuid":Ljava/util/UUID;
    throw v4

    .line 5006
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v0    # "allDoneWithoutProvisioning":Z
    .restart local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "uuid":Ljava/util/UUID;
    :cond_118
    const-string v3, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    .line 5008
    .restart local v3    # "msg":Ljava/lang/String;
    const-string v4, "MediaPlayer"

    const-string v5, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5009
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "allDoneWithoutProvisioning":Z
    .end local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "uuid":Ljava/util/UUID;
    throw v4

    .line 4999
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v0    # "allDoneWithoutProvisioning":Z
    .restart local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "uuid":Ljava/util/UUID;
    :cond_129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareDrm(): Wrong usage: There is already an active DRM scheme with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mDrmUUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5001
    .restart local v3    # "msg":Ljava/lang/String;
    const-string v4, "MediaPlayer"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5002
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "allDoneWithoutProvisioning":Z
    .end local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "uuid":Ljava/util/UUID;
    throw v4

    .line 4992
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v0    # "allDoneWithoutProvisioning":Z
    .restart local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "uuid":Ljava/util/UUID;
    :cond_149
    const-string v3, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    .line 4994
    .restart local v3    # "msg":Ljava/lang/String;
    const-string v4, "MediaPlayer"

    const-string v5, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4995
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "allDoneWithoutProvisioning":Z
    .end local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "uuid":Ljava/util/UUID;
    throw v4

    .line 5035
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v0    # "allDoneWithoutProvisioning":Z
    .restart local v1    # "onDrmPreparedHandlerDelegate":Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "uuid":Ljava/util/UUID;
    :catchall_15a
    move-exception v3

    monitor-exit v2
    :try_end_15c
    .catchall {:try_start_fc .. :try_end_15c} :catchall_15a

    throw v3

    nop

    :pswitch_data_15e
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_a1
    .end packed-switch
.end method

.method public whitelist provideKeyResponse([B[B)[B
    .registers 9
    .param p1, "keySetId"    # [B
    .param p2, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 5268
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provideKeyResponse: keySetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5269
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5268
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5271
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5273
    :try_start_2d
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_b4

    if-eqz v1, :cond_a5

    .line 5279
    if-nez p1, :cond_3a

    .line 5280
    :try_start_33
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    goto :goto_3b

    .line 5297
    :catch_36
    move-exception v1

    goto :goto_7c

    .line 5292
    :catch_38
    move-exception v1

    goto :goto_96

    .line 5281
    :cond_3a
    move-object v1, p1

    :goto_3b
    nop

    .line 5283
    .local v1, "scope":[B
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v2, v1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v2

    .line 5285
    .local v2, "keySetResult":[B
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provideKeyResponse: keySetId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5286
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5287
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5285
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Landroid/media/NotProvisionedException; {:try_start_33 .. :try_end_7a} :catch_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_7a} :catch_36
    .catchall {:try_start_33 .. :try_end_7a} :catchall_b4

    .line 5290
    :try_start_7a
    monitor-exit v0

    return-object v2

    .line 5298
    .end local v2    # "keySetResult":[B
    .local v1, "e":Ljava/lang/Exception;
    :goto_7c
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "provideKeyResponse Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5299
    nop

    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "keySetId":[B
    .end local p2    # "response":[B
    throw v1

    .line 5293
    .local v1, "e":Landroid/media/NotProvisionedException;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "keySetId":[B
    .restart local p2    # "response":[B
    :goto_96
    const-string v2, "MediaPlayer"

    const-string v3, "provideKeyResponse NotProvisionedException: Unexpected. Shouldn\'t have reached here."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5295
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "provideKeyResponse: Unexpected provisioning error."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "keySetId":[B
    .end local p2    # "response":[B
    throw v2

    .line 5274
    .end local v1    # "e":Landroid/media/NotProvisionedException;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "keySetId":[B
    .restart local p2    # "response":[B
    :cond_a5
    const-string v1, "MediaPlayer"

    const-string v2, "getKeyRequest NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5275
    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string v2, "getKeyRequest: Has to set a DRM scheme first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "keySetId":[B
    .end local p2    # "response":[B
    throw v1

    .line 5301
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "keySetId":[B
    .restart local p2    # "response":[B
    :catchall_b4
    move-exception v1

    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_7a .. :try_end_b6} :catchall_b4

    throw v1
.end method

.method public whitelist release()V
    .registers 5

    .line 2246
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseRelease()V

    .line 2247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 2248
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 2249
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2250
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 2251
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2252
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 2253
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2254
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 2255
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 2256
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 2257
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnRtpRxNoticeListener:Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

    .line 2258
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnRtpRxNoticeExecutor:Ljava/util/concurrent/Executor;

    .line 2259
    iget-object v2, p0, Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2260
    :try_start_22
    iget-object v3, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v3, :cond_2d

    .line 2261
    iget-object v3, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v3}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 2262
    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 2264
    :cond_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_4a

    .line 2265
    monitor-enter p0

    .line 2266
    :try_start_2f
    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mSubtitleDataListenerDisabled:Z

    .line 2267
    iput-object v1, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 2268
    iput-object v1, p0, Landroid/media/MediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    .line 2269
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    .line 2270
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnMediaTimeDiscontinuityHandler:Landroid/os/Handler;

    .line 2271
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_47

    .line 2274
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    .line 2275
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    .line 2276
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    .line 2277
    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDrmState()V

    .line 2279
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 2280
    return-void

    .line 2271
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0

    .line 2264
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public whitelist releaseDrm()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 5132
    const-string v0, "MediaPlayer"

    const-string v1, "releaseDrm:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5134
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5135
    :try_start_a
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_41

    if-eqz v1, :cond_32

    .line 5145
    :try_start_e
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_releaseDrm()V

    .line 5148
    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    .line 5150
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_18
    .catchall {:try_start_e .. :try_end_17} :catchall_41

    .line 5156
    goto :goto_20

    .line 5154
    :catch_18
    move-exception v1

    .line 5155
    .local v1, "e":Ljava/lang/Exception;
    :try_start_19
    const-string v2, "MediaPlayer"

    const-string v3, "releaseDrm: Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5157
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_20
    monitor-exit v0

    .line 5158
    return-void

    .line 5151
    :catch_22
    move-exception v1

    .line 5152
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MediaPlayer"

    const-string v3, "releaseDrm: Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5153
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "releaseDrm: The player is not in a valid state."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaPlayer;
    throw v2

    .line 5136
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    :cond_32
    const-string v1, "MediaPlayer"

    const-string v2, "releaseDrm(): No active DRM scheme to release."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5137
    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string v2, "releaseDrm: No active DRM scheme to release."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaPlayer;
    throw v1

    .line 5157
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_19 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 1703
    iget-object v0, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1704
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1705
    iget-object v1, p0, Landroid/media/MediaPlayer;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    :cond_10
    invoke-direct {p0}, Landroid/media/MediaPlayer;->testDisableNativeRoutingCallbacksLocked()V

    .line 1708
    monitor-exit v0

    .line 1709
    return-void

    .line 1708
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist reset()V
    .registers 5

    .line 2290
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2291
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v0

    .line 2292
    :try_start_6
    iget-object v1, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_65

    .line 2294
    .local v2, "is":Ljava/io/InputStream;
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_65

    .line 2296
    goto :goto_1d

    .line 2295
    :catch_1c
    move-exception v3

    .line 2297
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_1d
    goto :goto_c

    .line 2298
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 2299
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_65

    .line 2300
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_2d

    .line 2301
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->reset()V

    .line 2303
    :cond_2d
    iget-object v1, p0, Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2304
    :try_start_30
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    .line 2305
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 2306
    iput-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 2308
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_62

    .line 2310
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 2311
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 2313
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v0, :cond_4d

    .line 2314
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2317
    :cond_4d
    iget-object v0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v0

    .line 2318
    :try_start_50
    iget-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 2319
    iget-object v1, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 2320
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_5f

    .line 2322
    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDrmState()V

    .line 2323
    return-void

    .line 2320
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1

    .line 2308
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0

    .line 2299
    :catchall_65
    move-exception v1

    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v1
.end method

.method public whitelist restoreKeys([B)V
    .registers 7
    .param p1, "keySetId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 5314
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreKeys: keySetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5318
    :try_start_1f
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_57

    if-eqz v1, :cond_48

    .line 5324
    :try_start_23
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaDrm;->restoreKeys([B[B)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2d
    .catchall {:try_start_23 .. :try_end_2a} :catchall_57

    .line 5328
    nop

    .line 5330
    :try_start_2b
    monitor-exit v0

    .line 5331
    return-void

    .line 5325
    :catch_2d
    move-exception v1

    .line 5326
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreKeys Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5327
    nop

    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "keySetId":[B
    throw v1

    .line 5319
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "keySetId":[B
    :cond_48
    const-string v1, "MediaPlayer"

    const-string v2, "restoreKeys NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5320
    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string v2, "restoreKeys: Has to set a DRM scheme first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "keySetId":[B
    throw v1

    .line 5330
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "keySetId":[B
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_2b .. :try_end_59} :catchall_57

    throw v1
.end method

.method public whitelist seekTo(I)V
    .registers 5
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2086
    int-to-long v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaPlayer;->seekTo(JI)V

    .line 2087
    return-void
.end method

.method public whitelist seekTo(JI)V
    .registers 9
    .param p1, "msec"    # J
    .param p3, "mode"    # I

    .line 2062
    if-ltz p3, :cond_63

    const/4 v0, 0x3

    if-gt p3, v0, :cond_63

    .line 2067
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    const-string v1, "seekTo offset "

    const-string v2, "MediaPlayer"

    if-lez v0, :cond_35

    .line 2068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is too large, cap to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    const-wide/32 p1, 0x7fffffff

    goto :goto_5f

    .line 2070
    :cond_35
    const-wide/32 v3, -0x80000000

    cmp-long v0, p1, v3

    if-gez v0, :cond_5f

    .line 2071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is too small, cap to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    const-wide/32 p1, -0x80000000

    .line 2074
    :cond_5f
    :goto_5f
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->_seekTo(JI)V

    .line 2075
    return-void

    .line 2063
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal seek mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2064
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist selectTrack(I)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3336
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 3337
    return-void
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)V
    .registers 5
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2381
    if-eqz p1, :cond_16

    .line 2385
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 2386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2387
    .local v0, "pattributes":Landroid/os/Parcel;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2388
    const/16 v1, 0x578

    invoke-direct {p0, v1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    .line 2389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2390
    return-void

    .line 2382
    .end local v0    # "pattributes":Landroid/os/Parcel;
    :cond_16
    const-string v0, "Cannot set AudioAttributes to null"

    .line 2383
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot set AudioAttributes to null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setAudioSessionId(I)V
    .registers 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2463
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->native_setAudioSessionId(I)V

    .line 2464
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->baseUpdateSessionId(I)V

    .line 2465
    return-void
.end method

.method public whitelist setAudioStreamType(I)V
    .registers 4
    .param p1, "streamtype"    # I

    .line 2352
    const-string v0, "MediaPlayer"

    const-string v1, "setAudioStreamType()"

    invoke-static {p1, v0, v1}, Landroid/media/MediaPlayer;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 2353
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2354
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 2353
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 2355
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAudioStreamType(I)V

    .line 2356
    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 2357
    return-void
.end method

.method public whitelist setAuxEffectSendLevel(F)V
    .registers 2
    .param p1, "level"    # F

    .line 2507
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->baseSetAuxEffectSendLevel(F)I

    .line 2508
    return-void
.end method

.method public whitelist setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
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

    .line 1050
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    .line 1051
    return-void
.end method

.method public whitelist setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
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

    .line 1146
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    .line 1147
    return-void
.end method

.method public whitelist setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1082
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz p1, :cond_86

    .line 1086
    if-eqz p2, :cond_7e

    .line 1090
    if-eqz p4, :cond_19

    .line 1091
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 1092
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_19

    instance-of v1, v0, Ljava/net/CookieManager;

    if-eqz v1, :cond_11

    goto :goto_19

    .line 1093
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The cookie handler has to be of CookieManager type when cookies are provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1100
    .end local v0    # "cookieHandler":Ljava/net/CookieHandler;
    :cond_19
    :goto_19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1101
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1102
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1103
    .local v2, "authority":Ljava/lang/String;
    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1104
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1105
    return-void

    .line 1106
    :cond_39
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 1107
    const-string v3, "settings"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 1110
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v3

    .line 1111
    .local v3, "type":I
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v4

    .line 1112
    .local v4, "cacheUri":Landroid/net/Uri;
    invoke-static {p1, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 1113
    .local v5, "actualUri":Landroid/net/Uri;
    invoke-direct {p0, v0, v4}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 1114
    return-void

    .line 1115
    :cond_60
    invoke-direct {p0, v0, v5}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 1116
    return-void

    .line 1118
    :cond_67
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 1120
    .end local v3    # "type":I
    .end local v4    # "cacheUri":Landroid/net/Uri;
    .end local v5    # "actualUri":Landroid/net/Uri;
    goto :goto_7d

    .line 1122
    :cond_6f
    invoke-direct {p0, v0, p2}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1123
    return-void

    .line 1125
    :cond_76
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 1128
    :goto_7d
    return-void

    .line 1087
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "authority":Ljava/lang/String;
    :cond_7e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1083
    :cond_86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .registers 9
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1258
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    .line 1263
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_25

    .line 1265
    :cond_15
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1267
    :goto_25
    return-void
.end method

.method public whitelist setDataSource(Landroid/media/MediaDataSource;)V
    .registers 2
    .param p1, "dataSource"    # Landroid/media/MediaDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1321
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setDataSource(Landroid/media/MediaDataSource;)V

    .line 1322
    return-void
.end method

.method public whitelist setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1281
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1282
    return-void
.end method

.method public whitelist setDataSource(Ljava/io/FileDescriptor;JJ)V
    .registers 14
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

    .line 1298
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_2d

    move-object v1, v0

    .line 1299
    .local v1, "modernFd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_b

    .line 1300
    :try_start_7
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_15

    .line 1302
    :cond_b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_20

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    .end local p2    # "offset":J
    .end local p4    # "length":J
    .local v4, "offset":J
    .local v6, "length":J
    :try_start_12
    invoke-direct/range {v2 .. v7}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1b

    .line 1304
    .end local v4    # "offset":J
    .end local v6    # "length":J
    .restart local p2    # "offset":J
    .restart local p4    # "length":J
    :goto_15
    if-eqz v1, :cond_1a

    :try_start_17
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_2d

    .line 1306
    .end local v1    # "modernFd":Landroid/os/ParcelFileDescriptor;
    :cond_1a
    goto :goto_35

    .line 1298
    .end local p2    # "offset":J
    .end local p4    # "length":J
    .restart local v1    # "modernFd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "offset":J
    .restart local v6    # "length":J
    :catchall_1b
    move-exception v0

    move-wide p2, v4

    move-wide p4, v6

    move-object v2, v0

    .end local v4    # "offset":J
    .end local v6    # "length":J
    .restart local p2    # "offset":J
    .restart local p4    # "length":J
    goto :goto_22

    :catchall_20
    move-exception v0

    move-object v2, v0

    :goto_22
    if-eqz v1, :cond_2c

    :try_start_24
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v0

    :try_start_29
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "offset":J
    .end local p4    # "length":J
    :cond_2c
    :goto_2c
    throw v2
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2d

    .line 1304
    .end local v1    # "modernFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "offset":J
    .restart local p4    # "length":J
    :catch_2d
    move-exception v0

    .line 1305
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MediaPlayer"

    const-string v2, "Ignoring IO error while setting data source"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1307
    .end local v0    # "e":Ljava/io/IOException;
    :goto_35
    return-void
.end method

.method public whitelist setDataSource(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 1181
    return-void
.end method

.method public greylist setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
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

    .line 1194
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 1195
    return-void
.end method

.method public whitelist setDisplay(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .line 801
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 803
    if-eqz p1, :cond_9

    .line 804
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .local v0, "surface":Landroid/view/Surface;
    goto :goto_a

    .line 806
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_9
    const/4 v0, 0x0

    .line 808
    .restart local v0    # "surface":Landroid/view/Surface;
    :goto_a
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 809
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 810
    return-void
.end method

.method public whitelist setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    .line 5385
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrmPropertyString: propertyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5387
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5389
    :try_start_25
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v1, :cond_3d

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z

    if-eqz v1, :cond_2e

    goto :goto_3d

    .line 5390
    :cond_2e
    const-string v1, "MediaPlayer"

    const-string v2, "setDrmPropertyString NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string v2, "setDrmPropertyString: Has to prepareDrm() first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "propertyName":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    throw v1
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_60

    .line 5395
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "propertyName":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_3d
    :goto_3d
    :try_start_3d
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_45
    .catchall {:try_start_3d .. :try_end_42} :catchall_60

    .line 5399
    nop

    .line 5400
    :try_start_43
    monitor-exit v0

    .line 5401
    return-void

    .line 5396
    :catch_45
    move-exception v1

    .line 5397
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDrmPropertyString Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5398
    nop

    .end local p0    # "this":Landroid/media/MediaPlayer;
    .end local p1    # "propertyName":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    throw v1

    .line 5400
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/media/MediaPlayer;
    .restart local p1    # "propertyName":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_43 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public native whitelist setLooping(Z)V
.end method

.method public greylist-max-o setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 2197
    .local p1, "allow":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "block":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v0

    .line 2203
    .local v0, "request":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 2205
    .local v1, "capacity":I
    invoke-virtual {v0}, Landroid/os/Parcel;->dataCapacity()I

    move-result v2

    if-ge v2, v1, :cond_21

    .line 2206
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 2209
    :cond_21
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2210
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2211
    .local v3, "t":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2212
    .end local v3    # "t":Ljava/lang/Integer;
    goto :goto_2c

    .line 2213
    :cond_40
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2214
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2215
    .restart local v3    # "t":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2216
    .end local v3    # "t":Ljava/lang/Integer;
    goto :goto_4b

    .line 2217
    :cond_5f
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v2

    return v2
.end method

.method public native whitelist setNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public whitelist setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 4005
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 4006
    return-void
.end method

.method public whitelist setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .line 3958
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 3959
    return-void
.end method

.method public whitelist setOnDrmConfigHelper(Landroid/media/MediaPlayer$OnDrmConfigHelper;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnDrmConfigHelper;

    .line 4705
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4706
    :try_start_3
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    .line 4707
    monitor-exit v0

    .line 4708
    return-void

    .line 4707
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist setOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnDrmInfoListener;

    .line 4736
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V

    .line 4737
    return-void
.end method

.method public whitelist setOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnDrmInfoListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 4747
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4748
    if-eqz p1, :cond_d

    .line 4749
    :try_start_5
    new-instance v1, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    invoke-direct {v1, p0, p0, p1, p2}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    goto :goto_10

    .line 4751
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    .line 4753
    :goto_10
    monitor-exit v0

    .line 4754
    return-void

    .line 4753
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist setOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnDrmPreparedListener;

    .line 4819
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V

    .line 4820
    return-void
.end method

.method public whitelist setOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnDrmPreparedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 4830
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4831
    if-eqz p1, :cond_d

    .line 4832
    :try_start_5
    new-instance v1, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    invoke-direct {v1, p0, p0, p1, p2}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    goto :goto_10

    .line 4835
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    .line 4837
    :goto_10
    monitor-exit v0

    .line 4838
    return-void

    .line 4837
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .line 4519
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 4520
    return-void
.end method

.method public whitelist setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .line 4666
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 4667
    return-void
.end method

.method public whitelist setOnMediaTimeDiscontinuityListener(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    .line 4230
    if-eqz p1, :cond_7

    .line 4233
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnMediaTimeDiscontinuityListenerInt(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V

    .line 4234
    return-void

    .line 4231
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnMediaTimeDiscontinuityListener(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 4212
    if-eqz p1, :cond_10

    .line 4215
    if-eqz p2, :cond_8

    .line 4218
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->setOnMediaTimeDiscontinuityListenerInt(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/os/Handler;)V

    .line 4219
    return-void

    .line 4216
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4213
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .line 3930
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 3931
    return-void
.end method

.method public whitelist setOnRtpRxNoticeListener(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer$OnRtpRxNoticeListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/media/MediaPlayer$OnRtpRxNoticeListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4411
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4412
    nop

    .line 4413
    const-string v0, "android.permission.BIND_IMS_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 4412
    :goto_f
    const-string v1, "android.permission.BIND_IMS_SERVICE permission not granted."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4415
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnRtpRxNoticeListener:Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

    .line 4416
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnRtpRxNoticeExecutor:Ljava/util/concurrent/Executor;

    .line 4417
    return-void
.end method

.method public whitelist setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 4032
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 4033
    return-void
.end method

.method public whitelist setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 4148
    if-eqz p1, :cond_7

    .line 4151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnSubtitleDataListenerInt(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    .line 4152
    return-void

    .line 4149
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 4127
    if-eqz p1, :cond_10

    .line 4130
    if-eqz p2, :cond_8

    .line 4133
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->setOnSubtitleDataListenerInt(Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    .line 4134
    return-void

    .line 4131
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4128
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    .line 4436
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    .line 4437
    return-void
.end method

.method public whitelist setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 4094
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 4095
    return-void
.end method

.method public whitelist setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 4065
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 4066
    return-void
.end method

.method public native whitelist setPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method public whitelist setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .registers 5
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 1519
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1520
    return v0

    .line 1522
    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 1523
    .local v0, "preferredDeviceId":I
    :cond_10
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->native_setOutputDevice(I)Z

    move-result v1

    .line 1524
    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 1525
    monitor-enter p0

    .line 1526
    :try_start_18
    iput-object p1, p0, Landroid/media/MediaPlayer;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1527
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v2

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    throw v2

    .line 1529
    :cond_1f
    :goto_1f
    return v1
.end method

.method public greylist setRetransmitEndpoint(Ljava/net/InetSocketAddress;)V
    .registers 8
    .param p1, "endpoint"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3462
    const/4 v0, 0x0

    .line 3463
    .local v0, "addrString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3465
    .local v1, "port":I
    if-eqz p1, :cond_10

    .line 3466
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 3467
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 3470
    :cond_10
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->native_setRetransmitEndpoint(Ljava/lang/String;I)I

    move-result v2

    .line 3471
    .local v2, "ret":I
    if-nez v2, :cond_17

    .line 3474
    return-void

    .line 3472
    :cond_17
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal re-transmit endpoint; native ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist setScreenOnWhilePlaying(Z)V
    .registers 4
    .param p1, "screenOn"    # Z

    .line 1768
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_16

    .line 1769
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_11

    .line 1770
    const-string v0, "MediaPlayer"

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :cond_11
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1773
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1775
    :cond_16
    return-void
.end method

.method public greylist setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .registers 4
    .param p1, "controller"    # Landroid/media/SubtitleController;
    .param p2, "anchor"    # Landroid/media/SubtitleController$Anchor;

    .line 2834
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    .line 2835
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 2836
    return-void
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 833
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 834
    const-string v0, "MediaPlayer"

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 837
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 838
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 839
    return-void
.end method

.method public native whitelist setSyncParams(Landroid/media/SyncParams;)V
.end method

.method public whitelist setVideoScalingMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 882
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 887
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 889
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_e
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 890
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_25

    .line 894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 896
    nop

    .line 897
    return-void

    .line 894
    :catchall_25
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 896
    throw v2

    .line 883
    .end local v0    # "request":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scaling mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o setVolume(F)V
    .registers 2
    .param p1, "volume"    # F

    .line 2439
    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2440
    return-void
.end method

.method public whitelist setVolume(FF)V
    .registers 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 2424
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->baseSetVolume(FF)V

    .line 2425
    return-void
.end method

.method public whitelist setWakeMode(Landroid/content/Context;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 1733
    const/4 v0, 0x0

    .line 1736
    .local v0, "washeld":Z
    const-string v1, "audio.offload.ignore_setawake"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_24

    .line 1737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGNORING setWakeMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    return-void

    .line 1741
    :cond_24
    iget-object v1, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_39

    .line 1742
    iget-object v1, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1743
    const/4 v0, 0x1

    .line 1744
    iget-object v1, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1746
    :cond_36
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1749
    :cond_39
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1750
    .local v1, "pm":Landroid/os/PowerManager;
    const/high16 v3, 0x20000000

    or-int/2addr v3, p2

    const-class v4, Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1751
    iget-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1752
    if-eqz v0, :cond_5c

    .line 1753
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1755
    :cond_5c
    return-void
.end method

.method public whitelist start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1393
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getStartDelayMs()I

    move-result v0

    .line 1394
    .local v0, "delay":I
    if-nez v0, :cond_a

    .line 1395
    invoke-direct {p0}, Landroid/media/MediaPlayer;->startImpl()V

    goto :goto_12

    .line 1397
    :cond_a
    new-instance v1, Landroid/media/MediaPlayer$1;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;I)V

    .line 1413
    invoke-virtual {v1}, Landroid/media/MediaPlayer$1;->start()V

    .line 1415
    :goto_12
    return-void
.end method

.method public whitelist stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1444
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    .line 1445
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseStop()V

    .line 1446
    invoke-direct {p0}, Landroid/media/MediaPlayer;->tryToDisableNativeRoutingCallback()V

    .line 1447
    return-void
.end method
