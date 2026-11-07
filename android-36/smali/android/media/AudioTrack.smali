.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/VolumeAutomation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$TunerConfiguration;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnCodecFormatChangedListener;,
        Landroid/media/AudioTrack$StreamEventCbInfo;,
        Landroid/media/AudioTrack$StreamEventCallback;,
        Landroid/media/AudioTrack$StreamEventHandler;,
        Landroid/media/AudioTrack$MetricsConstants;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;,
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$PerformanceMode;,
        Landroid/media/AudioTrack$WriteMode;,
        Landroid/media/AudioTrack$DualMonoMode;,
        Landroid/media/AudioTrack$SupplementaryAudioPlacement;,
        Landroid/media/AudioTrack$EncapsulationMetadataType;,
        Landroid/media/AudioTrack$EncapsulationMode;,
        Landroid/media/AudioTrack$TransferMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o AUDIO_OUTPUT_FLAG_DEEP_BUFFER:I = 0x8

.field private static final greylist-max-o AUDIO_OUTPUT_FLAG_FAST:I = 0x4

.field private static final blacklist CHANNEL_PAIR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DUAL_MONO_MODE_LL:I = 0x2

.field public static final whitelist DUAL_MONO_MODE_LR:I = 0x1

.field public static final whitelist DUAL_MONO_MODE_OFF:I = 0x0

.field public static final whitelist DUAL_MONO_MODE_RR:I = 0x3

.field public static final whitelist ENCAPSULATION_METADATA_TYPE_DVB_AD_DESCRIPTOR:I = 0x2

.field public static final whitelist ENCAPSULATION_METADATA_TYPE_FRAMEWORK_TUNER:I = 0x1

.field public static final blacklist ENCAPSULATION_METADATA_TYPE_NONE:I = 0x0

.field public static final whitelist ENCAPSULATION_METADATA_TYPE_SUPPLEMENTARY_AUDIO_PLACEMENT:I = 0x3

.field public static final whitelist ENCAPSULATION_MODE_ELEMENTARY_STREAM:I = 0x1

.field public static final whitelist ENCAPSULATION_MODE_HANDLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENCAPSULATION_MODE_NONE:I = 0x0

.field public static final whitelist ERROR:I = -0x1

.field public static final whitelist ERROR_BAD_VALUE:I = -0x2

.field public static final whitelist ERROR_DEAD_OBJECT:I = -0x6

.field public static final whitelist ERROR_INVALID_OPERATION:I = -0x3

.field private static final greylist-max-o ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final greylist-max-o ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final greylist-max-o ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final greylist-max-o ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final greylist-max-o ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final greylist-max-o ERROR_WOULD_BLOCK:I = -0x7

.field private static final greylist-max-o GAIN_MAX:F = 1.0f

.field private static final greylist-max-o GAIN_MIN:F = 0.0f

.field private static final greylist-max-o HEADER_V2_SIZE_BYTES:F = 20.0f

.field private static final blacklist MAX_AUDIO_DESCRIPTION_MIX_LEVEL:F = 48.0f

.field public static final whitelist MODE_STATIC:I = 0x0

.field public static final whitelist MODE_STREAM:I = 0x1

.field private static final blacklist NATIVE_EVENT_CAN_WRITE_MORE_DATA:I = 0x9

.field private static final blacklist NATIVE_EVENT_CODEC_FORMAT_CHANGE:I = 0x64

.field private static final greylist-max-o NATIVE_EVENT_MARKER:I = 0x3

.field private static final greylist-max-o NATIVE_EVENT_NEW_IAUDIOTRACK:I = 0x6

.field private static final greylist-max-o NATIVE_EVENT_NEW_POS:I = 0x4

.field private static final greylist-max-o NATIVE_EVENT_STREAM_END:I = 0x7

.field public static final whitelist PERFORMANCE_MODE_LOW_LATENCY:I = 0x1

.field public static final whitelist PERFORMANCE_MODE_NONE:I = 0x0

.field public static final whitelist PERFORMANCE_MODE_POWER_SAVING:I = 0x2

.field public static final whitelist PLAYSTATE_PAUSED:I = 0x2

.field private static final blacklist PLAYSTATE_PAUSED_STOPPING:I = 0x5

.field public static final whitelist PLAYSTATE_PLAYING:I = 0x3

.field public static final whitelist PLAYSTATE_STOPPED:I = 0x1

.field private static final blacklist PLAYSTATE_STOPPING:I = 0x4

.field public static final whitelist STATE_INITIALIZED:I = 0x1

.field public static final whitelist STATE_NO_STATIC_DATA:I = 0x2

.field public static final whitelist STATE_UNINITIALIZED:I = 0x0

.field public static final whitelist SUCCESS:I = 0x0

.field public static final whitelist SUPPLEMENTARY_AUDIO_PLACEMENT_LEFT:I = 0x1

.field public static final whitelist SUPPLEMENTARY_AUDIO_PLACEMENT_NORMAL:I = 0x0

.field public static final whitelist SUPPLEMENTARY_AUDIO_PLACEMENT_RIGHT:I = 0x2

.field private static final greylist-max-o SUPPORTED_OUT_CHANNELS:I = 0xffffffc

.field private static final greylist-max-o TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final whitelist WRITE_BLOCKING:I = 0x0

.field public static final whitelist WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private greylist-max-o mAudioFormat:I

.field private blacklist mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private greylist-max-o mAvSyncBytesRemaining:I

.field private greylist-max-o mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private greylist-max-o mChannelConfiguration:I

.field private greylist-max-o mChannelCount:I

.field private greylist-max-o mChannelIndexMask:I

.field private greylist-max-o mChannelMask:I

.field private final blacklist mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/Utils$ListenerList<",
            "Landroid/media/AudioMetadataReadMap;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

.field private greylist-max-o mDataLoadMode:I

.field private blacklist mEnableSelfRoutingMonitor:Z

.field private greylist-max-o mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private final greylist-max-o mInitializationLooper:Landroid/os/Looper;

.field private greylist-max-r mJniData:J

.field private blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private greylist-max-o mNativeBufferSizeInBytes:I

.field private greylist-max-o mNativeBufferSizeInFrames:I

.field protected greylist mNativeTrackInJavaObj:J

.field private blacklist mOffloadDelayFrames:I

.field private blacklist mOffloadEosPending:Z

.field private blacklist mOffloadPaddingFrames:I

.field private blacklist mOffloaded:Z

.field private greylist-max-o mOffset:I

.field private greylist-max-o mPlayState:I

.field private final greylist-max-o mPlayStateLock:Ljava/lang/Object;

.field private greylist-max-o mPreferredDevice:Landroid/media/AudioDeviceInfo;

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

.field private greylist-max-o mSampleRate:I

.field private greylist-max-o mSessionId:I

.field private greylist-max-o mState:I

.field private blacklist mStreamEventCbInfoList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/AudioTrack$StreamEventCbInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mStreamEventCbLock:Ljava/lang/Object;

.field private volatile blacklist mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

.field private blacklist mStreamEventHandlerThread:Landroid/os/HandlerThread;

.field private greylist mStreamType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$EG1sDnofkWd-yTxahEDuDlLu2YA(Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->lambda$addOnCodecFormatChangedListener$0(Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitializationLooper(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffloadEosPending(Landroid/media/AudioTrack;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlayState(Landroid/media/AudioTrack;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioTrack;->mPlayState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlayStateLock(Landroid/media/AudioTrack;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamEventCbInfoList(Landroid/media/AudioTrack;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamEventCbLock(Landroid/media/AudioTrack;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAvSyncBytesRemaining(Landroid/media/AudioTrack;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAvSyncHeader(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffloadEosPending(Landroid/media/AudioTrack;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPlayState(Landroid/media/AudioTrack;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioTrack;->mPlayState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_start(Landroid/media/AudioTrack;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartImpl(Landroid/media/AudioTrack;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterAudioPolicyOnRelease(Landroid/media/AudioTrack;Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->unregisterAudioPolicyOnRelease(Landroid/media/audiopolicy/AudioPolicy;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smshouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 19

    .line 1941
    nop

    .line 1942
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1944
    const/16 v0, 0xc0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1946
    const/16 v0, 0x300

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1948
    const/16 v0, 0x1800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1949
    const v0, 0x14000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1951
    const/high16 v0, 0xa0000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1953
    const/high16 v0, 0x300000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1955
    const/high16 v0, 0x1400000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 1957
    const/high16 v0, 0xc000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 1941
    const-string v1, "front"

    const-string v3, "back"

    const-string v5, "front of center"

    const-string v7, "side"

    const-string v9, "top front"

    const-string v11, "top back"

    const-string v13, "top side"

    const-string v15, "bottom front"

    const-string v17, "front wide"

    invoke-static/range {v1 .. v18}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/media/AudioTrack;->CHANNEL_PAIR_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor whitelist <init>(IIIIII)V
    .registers 15
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 700
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "streamType":I
    .end local p2    # "sampleRateInHz":I
    .end local p3    # "channelConfig":I
    .end local p4    # "audioFormat":I
    .end local p5    # "bufferSizeInBytes":I
    .end local p6    # "mode":I
    .local v1, "streamType":I
    .local v2, "sampleRateInHz":I
    .local v3, "channelConfig":I
    .local v4, "audioFormat":I
    .local v5, "bufferSizeInBytes":I
    .local v6, "mode":I
    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 702
    return-void
.end method

.method public constructor whitelist <init>(IIIIIII)V
    .registers 15
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 759
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 760
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 763
    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 764
    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 765
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 766
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    .line 759
    move-object v1, p0

    move v4, p5

    move v5, p6

    move v6, p7

    .end local p5    # "bufferSizeInBytes":I
    .end local p6    # "mode":I
    .end local p7    # "sessionId":I
    .local v4, "bufferSizeInBytes":I
    .local v5, "mode":I
    .local v6, "sessionId":I
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 769
    const-string p5, "AudioTrack"

    const-string p6, "AudioTrack()"

    invoke-static {p1, p5, p6}, Landroid/media/AudioTrack;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method constructor greylist-max-o <init>(J)V
    .registers 8
    .param p1, "nativeTrackInJavaObj"    # J

    .line 928
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 521
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 528
    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 533
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 539
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 540
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 557
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 561
    const/4 v2, 0x4

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 570
    const/4 v3, 0x3

    iput v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 576
    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 582
    iput v2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 586
    iput v0, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 601
    iput v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 605
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 609
    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 613
    iput v0, p0, Landroid/media/AudioTrack;->mOffset:I

    .line 617
    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    .line 621
    iput v0, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    .line 625
    iput v0, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    .line 631
    sget-object v2, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v2, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 3749
    iput-object v1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3885
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 4006
    new-instance v1, Landroid/media/Utils$ListenerList;

    invoke-direct {v1}, Landroid/media/Utils$ListenerList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    .line 4186
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    .line 4187
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    .line 931
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    .line 932
    iput-wide v1, p0, Landroid/media/AudioTrack;->mJniData:J

    .line 936
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v4, v3

    .local v4, "looper":Landroid/os/Looper;
    if-nez v3, :cond_6f

    .line 937
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    .line 939
    :cond_6f
    iput-object v4, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 942
    cmp-long v1, p1, v1

    if-eqz v1, :cond_7c

    .line 943
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->baseRegisterPlayer(I)V

    .line 944
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    goto :goto_7e

    .line 946
    :cond_7c
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 948
    :goto_7e
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V
    .registers 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/media/AudioAttributes;
    .param p3, "format"    # Landroid/media/AudioFormat;
    .param p4, "bufferSizeInBytes"    # I
    .param p5, "mode"    # I
    .param p6, "sessionId"    # I
    .param p7, "offload"    # Z
    .param p8, "encapsulationMode"    # I
    .param p9, "tunerConfiguration"    # Landroid/media/AudioTrack$TunerConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 813
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p6

    const/4 v0, 0x1

    invoke-direct {v1, v8, v0}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 516
    const/4 v12, 0x0

    iput v12, v1, Landroid/media/AudioTrack;->mState:I

    .line 521
    iput v0, v1, Landroid/media/AudioTrack;->mPlayState:I

    .line 528
    iput-boolean v12, v1, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 533
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 539
    iput v12, v1, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 540
    iput v12, v1, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 557
    iput v0, v1, Landroid/media/AudioTrack;->mChannelCount:I

    .line 561
    const/4 v2, 0x4

    iput v2, v1, Landroid/media/AudioTrack;->mChannelMask:I

    .line 570
    const/4 v3, 0x3

    iput v3, v1, Landroid/media/AudioTrack;->mStreamType:I

    .line 576
    iput v0, v1, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 582
    iput v2, v1, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 586
    iput v12, v1, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 601
    iput v12, v1, Landroid/media/AudioTrack;->mSessionId:I

    .line 605
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 609
    iput v12, v1, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 613
    iput v12, v1, Landroid/media/AudioTrack;->mOffset:I

    .line 617
    iput-boolean v12, v1, Landroid/media/AudioTrack;->mOffloaded:Z

    .line 621
    iput v12, v1, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    .line 625
    iput v12, v1, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    .line 631
    sget-object v4, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v4, v1, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 3749
    iput-object v3, v1, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3885
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v1, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 4006
    new-instance v3, Landroid/media/Utils$ListenerList;

    invoke-direct {v3}, Landroid/media/Utils$ListenerList;-><init>()V

    iput-object v3, v1, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    .line 4186
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    .line 4187
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v1, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    .line 816
    iput-object v8, v1, Landroid/media/AudioTrack;->mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

    .line 818
    if-eqz v9, :cond_1dc

    .line 823
    iget-object v3, v1, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    move/from16 v6, p5

    invoke-static {v3, v9, v10, v6}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 824
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    iget-object v4, v1, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v3, v4}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v4, v1, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 825
    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x200

    and-int/lit16 v4, v4, -0x101

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 828
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    iput-object v3, v1, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 833
    :cond_8a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v4, v3

    .local v4, "looper":Landroid/os/Looper;
    if-nez v3, :cond_97

    .line 834
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v13, v4

    goto :goto_98

    .line 833
    :cond_97
    move-object v13, v4

    .line 837
    .end local v4    # "looper":Landroid/os/Looper;
    .local v13, "looper":Landroid/os/Looper;
    :goto_98
    invoke-virtual {v9}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    .line 838
    .local v3, "rate":I
    if-nez v3, :cond_9f

    .line 839
    const/4 v3, 0x0

    .line 842
    :cond_9f
    const/4 v4, 0x0

    .line 843
    .local v4, "channelIndexMask":I
    invoke-virtual {v9}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_ac

    .line 845
    invoke-virtual {v9}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v4

    .line 847
    :cond_ac
    const/4 v5, 0x0

    .line 848
    .local v5, "channelMask":I
    invoke-virtual {v9}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v14

    and-int/2addr v2, v14

    if-eqz v2, :cond_b9

    .line 850
    invoke-virtual {v9}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v5

    goto :goto_bd

    .line 851
    :cond_b9
    if-nez v4, :cond_bd

    .line 852
    const/16 v5, 0xc

    .line 855
    :cond_bd
    :goto_bd
    const/4 v2, 0x1

    .line 856
    .local v2, "encoding":I
    invoke-virtual {v9}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v14

    and-int/2addr v14, v0

    if-eqz v14, :cond_c9

    .line 857
    invoke-virtual {v9}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    .line 859
    :cond_c9
    move/from16 v27, v5

    move v5, v2

    move v2, v3

    move/from16 v3, v27

    .local v2, "rate":I
    .local v3, "channelMask":I
    .local v5, "encoding":I
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 860
    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v19, v4

    move/from16 v20, v5

    .end local v2    # "rate":I
    .end local v3    # "channelMask":I
    .end local v4    # "channelIndexMask":I
    .end local v5    # "encoding":I
    .local v19, "channelIndexMask":I
    .local v20, "encoding":I
    .local v21, "rate":I
    .local v22, "channelMask":I
    move/from16 v15, p7

    iput-boolean v15, v1, Landroid/media/AudioTrack;->mOffloaded:Z

    .line 861
    const/4 v2, -0x1

    iput v2, v1, Landroid/media/AudioTrack;->mStreamType:I

    .line 863
    invoke-direct {v1, v10}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 865
    iput-object v13, v1, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 867
    if-ltz v11, :cond_1c1

    .line 871
    iget v2, v1, Landroid/media/AudioTrack;->mSampleRate:I

    filled-new-array {v2}, [I

    move-result-object v5

    .line 872
    .local v5, "sampleRate":[I
    new-array v2, v0, [I

    .line 873
    .local v2, "session":[I
    invoke-static {v7, v11}, Landroid/media/AudioTrack;->resolvePlaybackSessionId(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v12

    .line 875
    if-nez v7, :cond_fd

    .line 876
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    goto :goto_101

    :cond_fd
    invoke-virtual {v7}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    :goto_101
    move-object/from16 v23, v3

    .line 879
    .local v23, "attributionSource":Landroid/content/AttributionSource;
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v24

    .line 880
    .local v24, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_107
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v4, v1, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    iget v6, v1, Landroid/media/AudioTrack;->mChannelMask:I

    iget v7, v1, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iget v8, v1, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v9, v1, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v10, v1, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 883
    move v14, v12

    invoke-virtual/range {v24 .. v24}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v12

    .line 884
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getCurrentOpPackageName()Ljava/lang/String;

    move-result-object v18
    :try_end_121
    .catchall {:try_start_107 .. :try_end_121} :catchall_1ac

    .line 880
    move-object/from16 v16, v13

    move/from16 v17, v14

    .end local v13    # "looper":Landroid/os/Looper;
    .local v16, "looper":Landroid/os/Looper;
    const-wide/16 v13, 0x0

    move-object/from16 v25, v2

    move-object v2, v1

    move v1, v11

    move-object/from16 v11, v25

    move-object/from16 v25, v16

    move/from16 v26, v17

    move/from16 v16, p8

    move-object/from16 v17, p9

    .end local v2    # "session":[I
    .end local v16    # "looper":Landroid/os/Looper;
    .local v11, "session":[I
    .local v25, "looper":Landroid/os/Looper;
    :try_start_135
    invoke-direct/range {v2 .. v18}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[ILandroid/os/Parcel;JZILjava/lang/Object;Ljava/lang/String;)I

    move-result v3

    .line 885
    .local v3, "initResult":I
    if-eqz v3, :cond_15d

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error code "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " when initializing AudioTrack."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V
    :try_end_157
    .catchall {:try_start_135 .. :try_end_157} :catchall_1a9

    .line 889
    if-eqz v24, :cond_15c

    invoke-virtual/range {v24 .. v24}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 887
    :cond_15c
    return-void

    .line 889
    .end local v3    # "initResult":I
    :cond_15d
    if-eqz v24, :cond_162

    invoke-virtual/range {v24 .. v24}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 891
    .end local v24    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_162
    aget v3, v5, v26

    iput v3, v2, Landroid/media/AudioTrack;->mSampleRate:I

    .line 892
    aget v3, v11, v26

    iput v3, v2, Landroid/media/AudioTrack;->mSessionId:I

    .line 896
    iget-object v3, v2, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_194

    .line 898
    iget v3, v2, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v3}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v3

    if-eqz v3, :cond_186

    .line 899
    iget v3, v2, Landroid/media/AudioTrack;->mChannelCount:I

    iget v4, v2, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v4}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v4

    mul-int/2addr v3, v4

    .local v3, "frameSizeInBytes":I
    goto :goto_187

    .line 901
    .end local v3    # "frameSizeInBytes":I
    :cond_186
    const/4 v3, 0x1

    .line 903
    .restart local v3    # "frameSizeInBytes":I
    :goto_187
    const/high16 v4, 0x41a00000    # 20.0f

    int-to-float v6, v3

    div-float/2addr v4, v6

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    mul-int/2addr v4, v3

    iput v4, v2, Landroid/media/AudioTrack;->mOffset:I

    .line 906
    .end local v3    # "frameSizeInBytes":I
    :cond_194
    iget v3, v2, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v3, :cond_19c

    .line 907
    const/4 v0, 0x2

    iput v0, v2, Landroid/media/AudioTrack;->mState:I

    goto :goto_19e

    .line 909
    :cond_19c
    iput v0, v2, Landroid/media/AudioTrack;->mState:I

    .line 912
    :goto_19e
    iget v0, v2, Landroid/media/AudioTrack;->mSessionId:I

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->baseRegisterPlayer(I)V

    .line 913
    iget v0, v2, Landroid/media/AudioTrack;->mPlayerIId:I

    invoke-direct {v2, v0}, Landroid/media/AudioTrack;->native_setPlayerIId(I)V

    .line 914
    return-void

    .line 879
    .restart local v24    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_1a9
    move-exception v0

    move-object v3, v0

    goto :goto_1b6

    .end local v11    # "session":[I
    .end local v25    # "looper":Landroid/os/Looper;
    .restart local v2    # "session":[I
    .restart local v13    # "looper":Landroid/os/Looper;
    :catchall_1ac
    move-exception v0

    move-object/from16 v25, v2

    move-object v2, v1

    move v1, v11

    move-object/from16 v11, v25

    move-object/from16 v25, v13

    move-object v3, v0

    .end local v2    # "session":[I
    .end local v13    # "looper":Landroid/os/Looper;
    .restart local v11    # "session":[I
    .restart local v25    # "looper":Landroid/os/Looper;
    :goto_1b6
    if-eqz v24, :cond_1c0

    :try_start_1b8
    invoke-virtual/range {v24 .. v24}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_1bb
    .catchall {:try_start_1b8 .. :try_end_1bb} :catchall_1bc

    goto :goto_1c0

    :catchall_1bc
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c0
    :goto_1c0
    throw v3

    .line 868
    .end local v5    # "sampleRate":[I
    .end local v11    # "session":[I
    .end local v23    # "attributionSource":Landroid/content/AttributionSource;
    .end local v24    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    .end local v25    # "looper":Landroid/os/Looper;
    .restart local v13    # "looper":Landroid/os/Looper;
    :cond_1c1
    move-object v2, v1

    move v1, v11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid audio session ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    .end local v13    # "looper":Landroid/os/Looper;
    .end local v19    # "channelIndexMask":I
    .end local v20    # "encoding":I
    .end local v21    # "rate":I
    .end local v22    # "channelMask":I
    :cond_1dc
    move-object v2, v1

    move v1, v11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null AudioFormat"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;Landroid/media/AudioTrack-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/media/AudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .registers 16
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 805
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "attributes":Landroid/media/AudioAttributes;
    .end local p2    # "format":Landroid/media/AudioFormat;
    .end local p3    # "bufferSizeInBytes":I
    .end local p4    # "mode":I
    .end local p5    # "sessionId":I
    .local v2, "attributes":Landroid/media/AudioAttributes;
    .local v3, "format":Landroid/media/AudioFormat;
    .local v4, "bufferSizeInBytes":I
    .local v5, "mode":I
    .local v6, "sessionId":I
    invoke-direct/range {v0 .. v9}, Landroid/media/AudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;)V

    .line 807
    return-void
.end method

.method private greylist-max-o audioBuffSizeCheck(I)V
    .registers 5
    .param p1, "audioBufferSize"    # I

    .line 2018
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2019
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    mul-int/2addr v0, v1

    .local v0, "frameSizeInBytes":I
    goto :goto_13

    .line 2021
    .end local v0    # "frameSizeInBytes":I
    :cond_12
    const/4 v0, 0x1

    .line 2023
    .restart local v0    # "frameSizeInBytes":I
    :goto_13
    rem-int v1, p1, v0

    if-nez v1, :cond_21

    const/4 v1, 0x1

    if-lt p1, v1, :cond_21

    .line 2027
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 2028
    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 2029
    return-void

    .line 2024
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o audioParamCheck(IIIII)V
    .registers 13
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "channelIndexMask"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    .line 1855
    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p1, v0, :cond_8

    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p1, v0, :cond_a

    :cond_8
    if-nez p1, :cond_108

    .line 1861
    :cond_a
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 1863
    const/16 v0, 0xd

    const/16 v1, 0xc

    if-ne p4, v0, :cond_3a

    if-eq p2, v1, :cond_3a

    .line 1865
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3a

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENCODING_IEC61937 is configured with channel mask as "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", which is not 2 or 8 channels"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.AudioTrack"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :cond_3a
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 1874
    const/4 v0, 0x0

    const-string v2, " for encoding "

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_122

    .line 1887
    if-nez p2, :cond_56

    if-eqz p3, :cond_56

    .line 1888
    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1889
    goto :goto_64

    .line 1883
    :sswitch_4a
    const/4 v4, 0x2

    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1884
    iput v1, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1885
    goto :goto_64

    .line 1878
    :sswitch_50
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1879
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1880
    goto :goto_64

    .line 1891
    :cond_56
    invoke-static {p2, p4}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(II)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 1896
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1897
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1900
    :goto_64
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 1901
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_ba

    .line 1903
    const v1, 0xffffff

    .line 1904
    .local v1, "fullIndexMask":I
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 1905
    .local v4, "channelIndexCount":I
    const/high16 v5, -0x1000000

    and-int/2addr v5, p3

    if-nez v5, :cond_82

    .line 1906
    invoke-static {p4}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v5

    if-eqz v5, :cond_80

    sget v5, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I

    if-gt v4, v5, :cond_82

    :cond_80
    move v0, v3

    goto :goto_83

    :cond_82
    nop

    .line 1908
    .local v0, "accepted":Z
    :goto_83
    if-eqz v0, :cond_99

    .line 1913
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez v2, :cond_8c

    .line 1914
    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_ba

    .line 1915
    :cond_8c
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-ne v2, v4, :cond_91

    goto :goto_ba

    .line 1916
    :cond_91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Channel count must match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1909
    :cond_99
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported channel index mask configuration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1922
    .end local v0    # "accepted":Z
    .end local v1    # "fullIndexMask":I
    .end local v4    # "channelIndexCount":I
    :cond_ba
    :goto_ba
    if-ne p4, v3, :cond_bd

    .line 1923
    const/4 p4, 0x2

    .line 1926
    :cond_bd
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 1929
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1933
    if-eq p5, v3, :cond_c9

    if-nez p5, :cond_d4

    :cond_c9
    if-eq p5, v3, :cond_dc

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1934
    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v0

    if-eqz v0, :cond_d4

    goto :goto_dc

    .line 1935
    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1937
    :cond_dc
    :goto_dc
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 1938
    return-void

    .line 1927
    :cond_df
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported audio encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1892
    :cond_e7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported channel mask configuration "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1858
    :cond_108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_122
    .sparse-switch
        0x1 -> :sswitch_50
        0x2 -> :sswitch_50
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_50
        0xc -> :sswitch_4a
    .end sparse-switch
.end method

.method private blacklist beginStreamEventHandling()V
    .registers 3

    .line 4284
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_21

    .line 4285
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.media.AudioTrack.StreamEvent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    .line 4286
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4287
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 4288
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_21

    .line 4289
    new-instance v1, Landroid/media/AudioTrack$StreamEventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$StreamEventHandler;-><init>(Landroid/media/AudioTrack;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    .line 4292
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_21
    return-void
.end method

.method private blacklist blockUntilOffloadDrain(I)Z
    .registers 6
    .param p1, "writeMode"    # I

    .line 3672
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3673
    :goto_3
    :try_start_3
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v2, :cond_11

    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    goto :goto_11

    .line 3682
    :cond_f
    monitor-exit v0

    return v3

    .line 3674
    :cond_11
    :goto_11
    if-ne p1, v3, :cond_16

    .line 3675
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1e

    const/4 v0, 0x0

    return v0

    .line 3678
    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1e

    goto :goto_1d

    .line 3679
    :catch_1c
    move-exception v1

    .line 3680
    :goto_1d
    goto :goto_3

    .line 3683
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private greylist-max-o broadcastRoutingChange()V
    .registers 4

    .line 3990
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 3991
    invoke-direct {p0}, Landroid/media/AudioTrack;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->baseUpdateDeviceIds(Ljava/util/List;)V

    .line 3992
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3993
    :try_start_d
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 3994
    .local v2, "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    invoke-virtual {v2}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    .line 3995
    .end local v2    # "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    goto :goto_17

    .line 3996
    :cond_27
    monitor-exit v0

    .line 3997
    return-void

    .line 3996
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private static greylist-max-o clampGainOrLevel(F)F
    .registers 2
    .param p0, "gainOrLevel"    # F

    .line 2686
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2689
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_d

    .line 2690
    const/4 p0, 0x0

    goto :goto_15

    .line 2691
    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_15

    .line 2692
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2694
    :cond_15
    :goto_15
    return p0

    .line 2687
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private blacklist endStreamEventHandling()V
    .registers 2

    .line 4296
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    .line 4297
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 4298
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandlerThread:Landroid/os/HandlerThread;

    .line 4300
    :cond_c
    return-void
.end method

.method public static whitelist getMaxVolume()F
    .registers 1

    .line 2089
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static whitelist getMinBufferSize(III)I
    .registers 7
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .line 2490
    const/4 v0, 0x0

    .line 2491
    .local v0, "channelCount":I
    const/4 v1, -0x2

    sparse-switch p1, :sswitch_data_5a

    .line 2501
    invoke-static {p1, p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(II)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2502
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2503
    return v1

    .line 2498
    :sswitch_11
    const/4 v0, 0x2

    .line 2499
    goto :goto_19

    .line 2494
    :sswitch_13
    const/4 v0, 0x1

    .line 2495
    goto :goto_19

    .line 2505
    :cond_15
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    .line 2509
    :goto_19
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2510
    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2511
    return v1

    .line 2516
    :cond_25
    sget v2, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p0, v2, :cond_3c

    sget v2, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p0, v2, :cond_2e

    goto :goto_3c

    .line 2522
    :cond_2e
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 2523
    .local v1, "size":I
    if-gtz v1, :cond_3b

    .line 2524
    const-string v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2525
    const/4 v2, -0x1

    return v2

    .line 2528
    :cond_3b
    return v1

    .line 2518
    .end local v1    # "size":I
    :cond_3c
    :goto_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2519
    return v1

    nop

    :sswitch_data_5a
    .sparse-switch
        0x2 -> :sswitch_13
        0x3 -> :sswitch_11
        0x4 -> :sswitch_13
        0xc -> :sswitch_11
    .end sparse-switch
.end method

.method public static whitelist getMinVolume()F
    .registers 1

    .line 2077
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getNativeOutputSampleRate(I)I
    .registers 2
    .param p0, "streamType"    # I

    .line 2463
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
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

    .line 3790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3791
    .local v0, "audioDeviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceIds()[I

    move-result-object v1

    .line 3792
    .local v1, "deviceIds":[I
    if-eqz v1, :cond_23

    array-length v2, v1

    if-nez v2, :cond_f

    goto :goto_23

    .line 3796
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_22

    .line 3797
    aget v3, v1, v2

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v3

    .line 3799
    .local v3, "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    if-eqz v3, :cond_1f

    .line 3800
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3796
    .end local v3    # "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 3803
    .end local v2    # "i":I
    :cond_22
    return-object v0

    .line 3793
    :cond_23
    :goto_23
    return-object v0
.end method

.method public static whitelist isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z
    .registers 9
    .param p0, "format"    # Landroid/media/AudioFormat;
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1609
    if-eqz p0, :cond_2d

    .line 1612
    if-eqz p1, :cond_25

    .line 1615
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 1616
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v3

    .line 1617
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v6

    .line 1615
    invoke-static/range {v0 .. v6}, Landroid/media/AudioTrack;->native_is_direct_output_supported(IIIIIII)Z

    move-result v0

    return v0

    .line 1613
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1610
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isMultichannelConfigSupported(II)Z
    .registers 10
    .param p0, "channelConfig"    # I
    .param p1, "encoding"    # I

    .line 1967
    const v0, 0xffffffc

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_d

    .line 1968
    const-string v0, "Channel configuration features unsupported channels"

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1969
    return v1

    .line 1971
    :cond_d
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    .line 1974
    .local v0, "channelCount":I
    :try_start_11
    invoke-static {p1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1975
    sget v2, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_19} :catch_ad

    goto :goto_1c

    .line 1976
    :cond_1a
    const/16 v2, 0x18

    :goto_1c
    nop

    .line 1980
    .local v2, "channelCountLimit":I
    nop

    .line 1981
    if-le v0, v2, :cond_51

    .line 1982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel configuration contains too many channels for encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1984
    return v1

    .line 1989
    :cond_51
    const/16 v3, 0xc

    .line 1991
    .local v3, "frontPair":I
    and-int/lit8 v4, p0, 0xc

    const/16 v5, 0xc

    if-eq v4, v5, :cond_5f

    .line 1992
    const-string v4, "Front channels must be present in multichannel configurations"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1993
    return v1

    .line 1996
    :cond_5f
    sget-object v4, Landroid/media/AudioTrack;->CHANNEL_PAIR_MAP:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ab

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1997
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1998
    .local v6, "positionPair":I
    and-int v7, p0, v6

    if-eqz v7, :cond_aa

    and-int v7, p0, v6

    if-eq v7, v6, :cond_aa

    .line 2000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel pair ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") cannot be used independently"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 2001
    return v1

    .line 2003
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "positionPair":I
    :cond_aa
    goto :goto_69

    .line 2004
    :cond_ab
    const/4 v1, 0x1

    return v1

    .line 1977
    .end local v2    # "channelCountLimit":I
    .end local v3    # "frontPair":I
    :catch_ad
    move-exception v2

    .line 1978
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1979
    return v1
.end method

.method private static blacklist isValidAudioDescriptionMixLevel(F)Z
    .registers 2
    .param p0, "level"    # F

    .line 1635
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_e

    const/high16 v0, 0x42400000    # 48.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static blacklist isValidDualMonoMode(I)Z
    .registers 2
    .param p0, "dualMonoMode"    # I

    .line 1692
    packed-switch p0, :pswitch_data_8

    .line 1699
    const/4 v0, 0x0

    return v0

    .line 1697
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private synthetic blacklist lambda$addOnCodecFormatChangedListener$0(Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioTrack$OnCodecFormatChangedListener;
    .param p2, "eventCode"    # I
    .param p3, "readMap"    # Landroid/media/AudioMetadataReadMap;

    .line 4043
    invoke-interface {p1, p0, p3}, Landroid/media/AudioTrack$OnCodecFormatChangedListener;->onCodecFormatChanged(Landroid/media/AudioTrack;Landroid/media/AudioMetadataReadMap;)V

    .line 4044
    return-void
.end method

.method private static greylist-max-o logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 4590
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    return-void
.end method

.method private static greylist-max-o loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 4594
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4595
    return-void
.end method

.method private native greylist-max-o native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native greylist-max-o native_attachAuxEffect(I)I
.end method

.method private final native greylist-max-o native_disableDeviceCallback()V
.end method

.method private final native greylist-max-o native_enableDeviceCallback()V
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_flush()V
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native blacklist native_getPortId()I
.end method

.method private native blacklist native_getRoutedDeviceIds()[I
.end method

.method private native blacklist native_getStartThresholdInFrames()I
.end method

.method private native greylist-max-o native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private native blacklist native_get_audio_description_mix_level_db([F)I
.end method

.method private final native greylist-max-o native_get_buffer_capacity_frames()I
.end method

.method private final native greylist-max-o native_get_buffer_size_frames()I
.end method

.method private native blacklist native_get_dual_mono_mode([I)I
.end method

.method private final native greylist-max-o native_get_flags()I
.end method

.method private final native greylist-max-o native_get_latency()I
.end method

.method private final native greylist-max-o native_get_marker_pos()I
.end method

.method private static final native greylist-max-o native_get_min_buff_size(III)I
.end method

.method private static final native greylist-max-o native_get_output_sample_rate(I)I
.end method

.method private final native greylist-max-o native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native greylist-max-o native_get_playback_rate()I
.end method

.method private final native greylist-max-o native_get_pos_update_period()I
.end method

.method private final native greylist-max-o native_get_position()I
.end method

.method private final native greylist-max-o native_get_timestamp([J)I
.end method

.method private final native greylist-max-o native_get_underrun_count()I
.end method

.method private static native blacklist native_is_direct_output_supported(IIIIIII)Z
.end method

.method private final native greylist-max-o native_pause()V
.end method

.method private final native greylist-max-o native_reload_static()I
.end method

.method private final native greylist-max-o native_setAuxEffectSendLevel(F)I
.end method

.method private native blacklist native_setLogSessionId(Ljava/lang/String;)V
.end method

.method private final native greylist-max-o native_setOutputDevice(I)Z
.end method

.method private native blacklist native_setPlayerIId(I)V
.end method

.method private final native greylist-max-o native_setPresentation(II)I
.end method

.method private native blacklist native_setStartThresholdInFrames(I)I
.end method

.method private final native greylist-max-o native_setVolume(FF)V
.end method

.method private native blacklist native_set_audio_description_mix_level_db(F)I
.end method

.method private final native greylist-max-o native_set_buffer_size_frames(I)I
.end method

.method private native blacklist native_set_delay_padding(II)V
.end method

.method private native blacklist native_set_dual_mono_mode(I)I
.end method

.method private final native greylist-max-o native_set_loop(III)I
.end method

.method private final native greylist-max-o native_set_marker_pos(I)I
.end method

.method private final native greylist-max-o native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native greylist-max-o native_set_playback_rate(I)I
.end method

.method private final native greylist-max-o native_set_pos_update_period(I)I
.end method

.method private final native greylist-max-o native_set_position(I)I
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[ILandroid/os/Parcel;JZILjava/lang/Object;Ljava/lang/String;)I
.end method

.method private final native greylist-max-o native_start()V
.end method

.method private final native greylist-max-o native_stop()V
.end method

.method private final native greylist-max-o native_write_byte([BIIIZ)I
.end method

.method private final native greylist-max-o native_write_float([FIIIZ)I
.end method

.method private final native blacklist native_write_native_bytes(Ljava/nio/ByteBuffer;IIIZ)I
.end method

.method private final native greylist-max-o native_write_short([SIIIZ)I
.end method

.method private static greylist-max-r postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 10
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 4416
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 4417
    .local v0, "track":Landroid/media/AudioTrack;
    if-nez v0, :cond_c

    .line 4418
    return-void

    .line 4421
    :cond_c
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_14

    .line 4422
    invoke-direct {v0}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    .line 4423
    return-void

    .line 4426
    :cond_14
    const/16 v1, 0x64

    if-ne p1, v1, :cond_3a

    .line 4427
    move-object v1, p4

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 4428
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4429
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4430
    invoke-static {v1}, Landroid/media/AudioMetadata;->fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/media/AudioMetadata$BaseMap;

    move-result-object v2

    .line 4431
    .local v2, "audioMetaData":Landroid/media/AudioMetadataReadMap;
    if-nez v2, :cond_33

    .line 4432
    const-string v3, "android.media.AudioTrack"

    const-string v4, "Unable to get audio metadata from byte buffer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    return-void

    .line 4435
    :cond_33
    iget-object v3, v0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/media/Utils$ListenerList;->notify(ILjava/lang/Object;)V

    .line 4436
    return-void

    .line 4439
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "audioMetaData":Landroid/media/AudioMetadataReadMap;
    :cond_3a
    const/16 v1, 0x9

    if-eq p1, v1, :cond_57

    const/4 v1, 0x6

    if-eq p1, v1, :cond_57

    const/4 v1, 0x7

    if-ne p1, v1, :cond_45

    goto :goto_57

    .line 4446
    :cond_45
    iget-object v1, v0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 4447
    .local v1, "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    if-eqz v1, :cond_56

    .line 4448
    invoke-virtual {v1}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 4449
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_56

    .line 4450
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4451
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4454
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "m":Landroid/os/Message;
    :cond_56
    return-void

    .line 4442
    .end local v1    # "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    :cond_57
    :goto_57
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->handleStreamEventFromNative(II)V

    .line 4443
    return-void
.end method

.method private static greylist-max-o shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .registers 14
    .param p0, "attributes"    # Landroid/media/AudioAttributes;
    .param p1, "format"    # Landroid/media/AudioFormat;
    .param p2, "bufferSizeInBytes"    # I
    .param p3, "mode"    # I

    .line 1796
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x318

    .line 1800
    .local v0, "flags":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_2d

    if-nez v0, :cond_2c

    .line 1802
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    if-ne v3, v2, :cond_2c

    .line 1803
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 1804
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    if-eq v3, v2, :cond_2d

    .line 1805
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2d

    .line 1806
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2d

    .line 1807
    :cond_2c
    return v1

    .line 1811
    :cond_2d
    if-eqz p1, :cond_7c

    .line 1812
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    if-eqz v3, :cond_7c

    .line 1813
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1814
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->isValidEncoding(I)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1815
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v3

    if-ge v3, v2, :cond_50

    goto :goto_7c

    .line 1820
    :cond_50
    if-eq p3, v2, :cond_53

    .line 1821
    return v1

    .line 1826
    :cond_53
    if-eqz p2, :cond_7b

    .line 1827
    const-wide/16 v3, 0x64

    .line 1828
    .local v3, "BUFFER_TARGET_MODE_STREAM_MS":J
    const/16 v5, 0x3e8

    .line 1829
    .local v5, "MILLIS_PER_SECOND":I
    nop

    .line 1831
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    .line 1832
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v8

    invoke-static {v8}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    .line 1833
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 1835
    .local v6, "bufferTargetSize":J
    int-to-long v8, p2

    cmp-long v8, v8, v6

    if-gez v8, :cond_7b

    .line 1836
    return v1

    .line 1840
    .end local v3    # "BUFFER_TARGET_MODE_STREAM_MS":J
    .end local v5    # "MILLIS_PER_SECOND":I
    .end local v6    # "bufferTargetSize":J
    :cond_7b
    return v2

    .line 1816
    :cond_7c
    :goto_7c
    return v1
.end method

.method private greylist-max-o startImpl()V
    .registers 5

    .line 3020
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3021
    :try_start_3
    iget-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v1, :cond_d

    .line 3022
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    .line 3024
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2d

    .line 3025
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3026
    const/4 v0, 0x0

    :try_start_12
    new-array v2, v0, [I

    invoke-virtual {p0, v2}, Landroid/media/AudioTrack;->baseStart([I)V

    .line 3027
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 3030
    iget v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_23

    .line 3031
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_28

    .line 3033
    :cond_23
    const/4 v2, 0x3

    iput v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 3034
    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 3036
    :goto_28
    monitor-exit v1

    .line 3037
    return-void

    .line 3036
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2a

    throw v0

    .line 3024
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private greylist-max-o testDisableNativeRoutingCallbacksLocked()V
    .registers 2

    .line 3867
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_11

    .line 3869
    :try_start_c
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_f} :catch_10

    .line 3873
    goto :goto_11

    .line 3870
    :catch_10
    move-exception v0

    .line 3875
    :cond_11
    :goto_11
    return-void
.end method

.method private blacklist testEnableNativeRoutingCallbacksLocked()Z
    .registers 4

    .line 3849
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-nez v0, :cond_20

    .line 3851
    :try_start_c
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_f} :catch_11

    .line 3852
    const/4 v0, 0x1

    return v0

    .line 3853
    :catch_11
    move-exception v0

    .line 3854
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x3

    const-string v2, "android.media.AudioTrack"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3855
    const-string v1, "testEnableNativeRoutingCallbacks failed"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3859
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist tryToDisableNativeRoutingCallback()V
    .registers 3

    .line 3835
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3836
    :try_start_3
    iget-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    if-eqz v1, :cond_d

    .line 3837
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    .line 3838
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    .line 3840
    :cond_d
    monitor-exit v0

    .line 3841
    return-void

    .line 3840
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist unregisterAudioPolicyOnRelease(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 2
    .param p1, "audioPolicy"    # Landroid/media/audiopolicy/AudioPolicy;

    .line 1476
    iput-object p1, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 1477
    return-void
.end method


# virtual methods
.method public whitelist addOnCodecFormatChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioTrack$OnCodecFormatChangedListener;

    .line 4038
    iget-object v0, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    new-instance v1, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V

    invoke-virtual {v0, p2, p1, v1}, Landroid/media/Utils$ListenerList;->add(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V

    .line 4046
    return-void
.end method

.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 8
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 3904
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3905
    if-eqz p1, :cond_28

    :try_start_5
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 3906
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mEnableSelfRoutingMonitor:Z

    .line 3907
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 3909
    if-eqz p2, :cond_1b

    move-object v3, p2

    goto :goto_22

    :cond_1b
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_22
    invoke-direct {v2, p0, p1, v3}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 3907
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3911
    :cond_28
    monitor-exit v0

    .line 3912
    return-void

    .line 3911
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3971
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 3972
    return-void
.end method

.method public whitelist attachAuxEffect(I)I
    .registers 3
    .param p1, "effectId"    # I

    .line 3708
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 3709
    const/4 v0, -0x3

    return v0

    .line 3711
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    return v0
.end method

.method public whitelist createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .registers 3
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;

    .line 2765
    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method greylist-max-r deferred_connect(J)V
    .registers 23
    .param p1, "nativeTrackInJavaObj"    # J

    .line 955
    move-object/from16 v2, p0

    iget v0, v2, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_71

    .line 958
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v11

    .line 959
    .local v11, "session":[I
    filled-new-array {v0}, [I

    move-result-object v5

    .line 961
    .local v5, "rates":[I
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v19

    .line 962
    .local v19, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_18
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 971
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v12

    const-string v18, ""

    .line 962
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 v13, p1

    invoke-direct/range {v2 .. v18}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[ILandroid/os/Parcel;JZILjava/lang/Object;Ljava/lang/String;)I

    move-result v3

    .line 977
    .local v3, "initResult":I
    if-eqz v3, :cond_58

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " when initializing AudioTrack."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_18 .. :try_end_52} :catchall_64

    .line 981
    if-eqz v19, :cond_57

    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 979
    :cond_57
    return-void

    .line 981
    .end local v3    # "initResult":I
    :cond_58
    if-eqz v19, :cond_5d

    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 983
    .end local v19    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_5d
    aget v0, v11, v0

    iput v0, v2, Landroid/media/AudioTrack;->mSessionId:I

    .line 985
    iput v1, v2, Landroid/media/AudioTrack;->mState:I

    goto :goto_71

    .line 960
    .restart local v19    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_64
    move-exception v0

    move-object v1, v0

    if-eqz v19, :cond_70

    :try_start_68
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_70
    :goto_70
    throw v1

    .line 987
    .end local v5    # "rates":[I
    .end local v11    # "session":[I
    .end local v19    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_71
    :goto_71
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 2062
    invoke-direct {p0}, Landroid/media/AudioTrack;->tryToDisableNativeRoutingCallback()V

    .line 2063
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 2064
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 2065
    return-void
.end method

.method public whitelist flush()V
    .registers 3

    .line 3112
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 3114
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 3115
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3116
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3119
    :cond_e
    return-void
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 3

    .line 2133
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/media/AudioTrack;->mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_b

    .line 2136
    iget-object v0, p0, Landroid/media/AudioTrack;->mConfiguredAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0

    .line 2134
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "track not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAudioDescriptionMixLeveldB()F
    .registers 6

    .line 1679
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    aput v2, v0, v1

    .line 1681
    .local v0, "level":[F
    :try_start_8
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_audio_description_mix_level_db([F)I

    move-result v3

    .line 1682
    .local v3, "status":I
    if-nez v3, :cond_1b

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_1c

    if-eqz v4, :cond_17

    goto :goto_1b

    .line 1687
    .end local v3    # "status":I
    :cond_17
    nop

    .line 1688
    aget v1, v0, v1

    return v1

    .line 1683
    .restart local v3    # "status":I
    :cond_1b
    :goto_1b
    return v2

    .line 1685
    .end local v3    # "status":I
    :catch_1c
    move-exception v1

    .line 1686
    .local v1, "e":Ljava/lang/Exception;
    return v2
.end method

.method public whitelist getAudioFormat()I
    .registers 2

    .line 2144
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public whitelist getAudioSessionId()I
    .registers 2

    .line 2538
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public whitelist getBufferCapacityInFrames()I
    .registers 2

    .line 2303
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getBufferSizeInFrames()I
    .registers 2

    .line 2246
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getChannelConfiguration()I
    .registers 2

    .line 2169
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public whitelist getChannelCount()I
    .registers 2

    .line 2194
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public whitelist getDualMonoMode()I
    .registers 5

    .line 1742
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    .line 1744
    .local v1, "dualMonoMode":[I
    :try_start_5
    invoke-direct {p0, v1}, Landroid/media/AudioTrack;->native_get_dual_mono_mode([I)I

    move-result v2

    .line 1745
    .local v2, "status":I
    if-nez v2, :cond_18

    aget v3, v1, v0

    invoke-static {v3}, Landroid/media/AudioTrack;->isValidDualMonoMode(I)Z

    move-result v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_19

    if-nez v3, :cond_14

    goto :goto_18

    .line 1750
    .end local v2    # "status":I
    :cond_14
    nop

    .line 1751
    aget v0, v1, v0

    return v0

    .line 1746
    .restart local v2    # "status":I
    :cond_18
    :goto_18
    return v0

    .line 1748
    .end local v2    # "status":I
    :catch_19
    move-exception v2

    .line 1749
    .local v2, "e":Ljava/lang/Exception;
    return v0
.end method

.method public whitelist getFormat()Landroid/media/AudioFormat;
    .registers 3

    .line 2178
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 2179
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2180
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 2181
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_1a

    .line 2182
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 2184
    :cond_1a
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_23

    .line 2185
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 2187
    :cond_23
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public greylist getLatency()I
    .registers 2

    .line 2418
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 4329
    iget-object v0, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 2647
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2648
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method protected whitelist getNativeFrameCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2373
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getNotificationMarkerPosition()I
    .registers 2

    .line 2382
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public whitelist getOffloadDelay()I
    .registers 3

    .line 1519
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_13

    .line 1522
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_b

    .line 1525
    iget v0, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    return v0

    .line 1523
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of delay on uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1520
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of delay on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOffloadPadding()I
    .registers 3

    .line 1537
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_13

    .line 1540
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_b

    .line 1543
    iget v0, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    return v0

    .line 1541
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of padding on uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1538
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal query of padding on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPerformanceMode()I
    .registers 3

    .line 2449
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_flags()I

    move-result v0

    .line 2450
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_a

    .line 2451
    const/4 v1, 0x1

    return v1

    .line 2452
    :cond_a
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_10

    .line 2453
    const/4 v1, 0x2

    return v1

    .line 2455
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getPlayState()I
    .registers 3

    .line 2216
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2217
    :try_start_3
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    packed-switch v1, :pswitch_data_16

    .line 2223
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_11

    .line 2221
    :pswitch_b
    monitor-exit v0

    const/4 v0, 0x2

    return v0

    .line 2219
    :pswitch_e
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 2223
    :goto_11
    monitor-exit v0

    return v1

    .line 2225
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public whitelist getPlaybackHeadPosition()I
    .registers 2

    .line 2405
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public whitelist getPlaybackParams()Landroid/media/PlaybackParams;
    .registers 2

    .line 2119
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPlaybackRate()I
    .registers 2

    .line 2109
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public whitelist getPositionNotificationPeriod()I
    .registers 2

    .line 2390
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public whitelist getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .registers 2

    .line 3781
    monitor-enter p0

    .line 3782
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 3783
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .registers 3

    .line 3815
    invoke-direct {p0}, Landroid/media/AudioTrack;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    .line 3816
    .local v0, "audioDeviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3817
    const/4 v1, 0x0

    return-object v1

    .line 3819
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

    .line 3831
    invoke-direct {p0}, Landroid/media/AudioTrack;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSampleRate()I
    .registers 2

    .line 2102
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public whitelist getStartThresholdInFrames()I
    .registers 3

    .line 2356
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 2359
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-ne v0, v1, :cond_e

    .line 2362
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getStartThresholdInFrames()I

    move-result v0

    return v0

    .line 2360
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack must be a streaming track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2357
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 2206
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public whitelist getStreamType()I
    .registers 2

    .line 2156
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public whitelist getTimestamp(Landroid/media/AudioTimestamp;)Z
    .registers 7
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .line 2583
    if-eqz p1, :cond_17

    .line 2587
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 2588
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 2589
    .local v1, "ret":I
    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 2590
    return v2

    .line 2592
    :cond_d
    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 2593
    const/4 v2, 0x1

    aget-wide v3, v0, v2

    iput-wide v3, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 2594
    return v2

    .line 2584
    .end local v0    # "longArray":[J
    .end local v1    # "ret":I
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .registers 6
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .line 2625
    if-eqz p1, :cond_14

    .line 2629
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 2630
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 2631
    .local v1, "ret":I
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 2632
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 2633
    return v1

    .line 2626
    .end local v0    # "longArray":[J
    .end local v1    # "ret":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getUnderrunCount()I
    .registers 2

    .line 2435
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    move-result v0

    return v0
.end method

.method blacklist handleStreamEventFromNative(II)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg"    # I

    .line 4203
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    if-nez v0, :cond_5

    .line 4204
    return-void

    .line 4206
    :cond_5
    packed-switch p1, :pswitch_data_38

    :pswitch_8
    goto :goto_37

    .line 4209
    :pswitch_9
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->removeMessages(I)V

    .line 4210
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    .line 4211
    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, v3}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 4210
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4213
    goto :goto_37

    .line 4219
    :pswitch_1d
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    .line 4220
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4219
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_37

    .line 4215
    :pswitch_2a
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventHandler:Landroid/media/AudioTrack$StreamEventHandler;

    .line 4216
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$StreamEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4215
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4217
    nop

    .line 4223
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x6
        :pswitch_2a
        :pswitch_1d
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist isOffloadedPlayback()Z
    .registers 2

    .line 1585
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    return v0
.end method

.method public final native greylist native_release()V
.end method

.method public whitelist pause()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3079
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3084
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3085
    :try_start_8
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 3086
    invoke-virtual {p0}, Landroid/media/AudioTrack;->basePause()V

    .line 3087
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    .line 3088
    const/4 v1, 0x5

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_1a

    .line 3090
    :cond_17
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 3092
    :goto_1a
    monitor-exit v0

    .line 3093
    return-void

    .line 3092
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v1

    .line 3080
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist play()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2991
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 2995
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getStartDelayMs()I

    move-result v0

    .line 2996
    .local v0, "delay":I
    if-nez v0, :cond_f

    .line 2997
    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    goto :goto_17

    .line 2999
    :cond_f
    new-instance v1, Landroid/media/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$1;-><init>(Landroid/media/AudioTrack;I)V

    .line 3015
    invoke-virtual {v1}, Landroid/media/AudioTrack$1;->start()V

    .line 3017
    :goto_17
    return-void

    .line 2992
    .end local v0    # "delay":I
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 4
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;

    .line 2754
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    return v0
.end method

.method greylist-max-o playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .registers 3
    .param p1, "id"    # I

    .line 2759
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o playerPause()V
    .registers 1

    .line 4400
    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    .line 4401
    return-void
.end method

.method greylist-max-o playerSetAuxEffectSendLevel(ZF)I
    .registers 5
    .param p1, "muting"    # Z
    .param p2, "level"    # F

    .line 3741
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move v0, p2

    :goto_5
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 3742
    invoke-direct {p0, p2}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result v0

    .line 3743
    .local v0, "err":I
    if-nez v0, :cond_11

    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    const/4 v1, -0x1

    :goto_12
    return v1
.end method

.method greylist-max-o playerSetVolume(ZFF)V
    .registers 6
    .param p1, "muting"    # Z
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .line 2725
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    move v1, p2

    :goto_6
    invoke-static {v1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 2726
    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    move v0, p3

    :goto_e
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p3

    .line 2728
    invoke-direct {p0, p2, p3}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 2729
    return-void
.end method

.method greylist-max-o playerStart()V
    .registers 1

    .line 4395
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    .line 4396
    return-void
.end method

.method greylist-max-o playerStop()V
    .registers 1

    .line 4405
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    .line 4406
    return-void
.end method

.method public whitelist registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "eventCallback"    # Landroid/media/AudioTrack$StreamEventCallback;

    .line 4122
    if-eqz p2, :cond_4c

    .line 4125
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_44

    .line 4129
    if-eqz p1, :cond_3c

    .line 4132
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4134
    :try_start_b
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioTrack$StreamEventCbInfo;

    .line 4135
    .local v2, "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    iget-object v3, v2, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    if-eq v3, p2, :cond_22

    .line 4139
    .end local v2    # "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    goto :goto_11

    .line 4136
    .restart local v2    # "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "StreamEventCallback already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioTrack;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "eventCallback":Landroid/media/AudioTrack$StreamEventCallback;
    throw v1

    .line 4140
    .end local v2    # "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    .restart local p0    # "this":Landroid/media/AudioTrack;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "eventCallback":Landroid/media/AudioTrack$StreamEventCallback;
    :cond_2a
    invoke-direct {p0}, Landroid/media/AudioTrack;->beginStreamEventHandling()V

    .line 4141
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    new-instance v2, Landroid/media/AudioTrack$StreamEventCbInfo;

    invoke-direct {v2, p1, p2}, Landroid/media/AudioTrack$StreamEventCbInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4142
    monitor-exit v0

    .line 4143
    return-void

    .line 4142
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_39

    throw v1

    .line 4130
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null Executor for the StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4126
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register StreamEventCallback on non-offloaded AudioTrack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4123
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .registers 3

    .line 2036
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2037
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioTrack;->endStreamEventHandling()V

    .line 2038
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_31

    .line 2042
    :try_start_7
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_a} :catch_b

    .line 2045
    goto :goto_c

    .line 2043
    :catch_b
    move-exception v0

    .line 2046
    :goto_c
    iget-object v0, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-eqz v0, :cond_18

    .line 2047
    iget-object v0, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/AudioManager;->unregisterAudioPolicyAsyncStatic(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 2048
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 2051
    :cond_18
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 2052
    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 2053
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2054
    const/4 v0, 0x0

    :try_start_22
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 2055
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2056
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2057
    monitor-exit v1

    .line 2058
    return-void

    .line 2057
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_2e

    throw v0

    .line 2038
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist reloadStaticData()I
    .registers 3

    .line 3661
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_a

    goto :goto_f

    .line 3664
    :cond_a
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    return v0

    .line 3662
    :cond_f
    :goto_f
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist removeOnCodecFormatChangedListener(Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioTrack$OnCodecFormatChangedListener;

    .line 4057
    iget-object v0, p0, Landroid/media/AudioTrack;->mCodecFormatChangedListeners:Landroid/media/Utils$ListenerList;

    invoke-virtual {v0, p1}, Landroid/media/Utils$ListenerList;->remove(Ljava/lang/Object;)V

    .line 4058
    return-void
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 3922
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3923
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3924
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3926
    :cond_10
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    .line 3927
    monitor-exit v0

    .line 3928
    return-void

    .line 3927
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3983
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 3984
    return-void
.end method

.method public whitelist setAudioDescriptionMixLeveldB(F)Z
    .registers 5
    .param p1, "level"    # F

    .line 1658
    invoke-static {p1}, Landroid/media/AudioTrack;->isValidAudioDescriptionMixLevel(F)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1661
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_audio_description_mix_level_db(F)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 1659
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuxEffectSendLevel(F)I
    .registers 3
    .param p1, "level"    # F

    .line 3733
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 3734
    const/4 v0, -0x3

    return v0

    .line 3736
    :cond_6
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->baseSetAuxEffectSendLevel(F)I

    move-result v0

    return v0
.end method

.method public whitelist setBufferSizeInFrames(I)I
    .registers 3
    .param p1, "bufferSizeInFrames"    # I

    .line 2274
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_9

    goto :goto_12

    .line 2277
    :cond_9
    if-gez p1, :cond_d

    .line 2278
    const/4 v0, -0x2

    return v0

    .line 2280
    :cond_d
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    move-result v0

    return v0

    .line 2275
    :cond_12
    :goto_12
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist setDualMonoMode(I)Z
    .registers 5
    .param p1, "dualMonoMode"    # I

    .line 1723
    invoke-static {p1}, Landroid/media/AudioTrack;->isValidDualMonoMode(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1727
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_dual_mono_mode(I)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 1724
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Dual Mono mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 4
    .param p1, "logSessionId"    # Landroid/media/metrics/LogSessionId;

    .line 4315
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4316
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_11

    .line 4319
    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v0

    .line 4320
    .local v0, "stringId":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setLogSessionId(Ljava/lang/String;)V

    .line 4321
    iput-object p1, p0, Landroid/media/AudioTrack;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 4322
    return-void

    .line 4317
    .end local v0    # "stringId":Ljava/lang/String;
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "track not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLoopPoints(III)I
    .registers 6
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    .line 2912
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_28

    .line 2913
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    goto :goto_28

    .line 2916
    :cond_11
    if-nez p3, :cond_14

    goto :goto_21

    .line 2918
    :cond_14
    if-ltz p1, :cond_26

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_26

    if-ge p1, p2, :cond_26

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_21

    goto :goto_26

    .line 2922
    :cond_21
    :goto_21
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    return v0

    .line 2920
    :cond_26
    :goto_26
    const/4 v0, -0x2

    return v0

    .line 2914
    :cond_28
    :goto_28
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist setNotificationMarkerPosition(I)I
    .registers 3
    .param p1, "markerInFrames"    # I

    .line 2829
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 2830
    const/4 v0, -0x3

    return v0

    .line 2832
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public whitelist setOffloadDelayPadding(II)V
    .registers 5
    .param p1, "delayInFrames"    # I
    .param p2, "paddingInFrames"    # I

    .line 1493
    if-ltz p2, :cond_2c

    .line 1496
    if-ltz p1, :cond_24

    .line 1499
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_1c

    .line 1502
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_14

    .line 1505
    iput p1, p0, Landroid/media/AudioTrack;->mOffloadDelayFrames:I

    .line 1506
    iput p2, p0, Landroid/media/AudioTrack;->mOffloadPaddingFrames:I

    .line 1507
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_set_delay_padding(II)V

    .line 1508
    return-void

    .line 1503
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1500
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal use of delay/padding on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1497
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal negative delay"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1494
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal negative padding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOffloadEndOfStream()V
    .registers 4

    .line 1557
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_45

    .line 1560
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_3d

    .line 1563
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 1566
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1567
    :try_start_10
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 1570
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_32

    .line 1572
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1573
    :try_start_1c
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 1574
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 1575
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1576
    monitor-exit v1

    .line 1577
    return-void

    .line 1576
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    throw v0

    .line 1568
    :cond_2a
    :try_start_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "EOS not supported without StreamEventCallback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioTrack;
    throw v1

    .line 1570
    .restart local p0    # "this":Landroid/media/AudioTrack;
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw v1

    .line 1564
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOS not supported if not playing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1558
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOS not supported on non-offloaded track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPlaybackHeadPosition(I)I
    .registers 4
    .param p1, "positionInFrames"    # I

    .line 2869
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_1f

    .line 2870
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    goto :goto_1f

    .line 2873
    :cond_11
    if-ltz p1, :cond_1d

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_18

    goto :goto_1d

    .line 2876
    :cond_18
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    return v0

    .line 2874
    :cond_1d
    :goto_1d
    const/4 v0, -0x2

    return v0

    .line 2871
    :cond_1f
    :goto_1f
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist setPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 4
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 2812
    if-eqz p1, :cond_6

    .line 2815
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    .line 2816
    return-void

    .line 2813
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 2664
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 2665
    return-void
.end method

.method public whitelist setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2677
    if-eqz p1, :cond_a

    .line 2678
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_d

    .line 2680
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 2682
    :goto_d
    return-void
.end method

.method public whitelist setPlaybackRate(I)I
    .registers 4
    .param p1, "sampleRateInHz"    # I

    .line 2787
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 2788
    const/4 v0, -0x3

    return v0

    .line 2790
    :cond_7
    if-gtz p1, :cond_b

    .line 2791
    const/4 v0, -0x2

    return v0

    .line 2793
    :cond_b
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    return v0
.end method

.method public whitelist setPositionNotificationPeriod(I)I
    .registers 3
    .param p1, "periodInFrames"    # I

    .line 2843
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 2844
    const/4 v0, -0x3

    return v0

    .line 2846
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public whitelist setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .registers 5
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 3762
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3763
    return v0

    .line 3765
    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 3766
    .local v0, "preferredDeviceId":I
    :cond_10
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v1

    .line 3767
    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 3768
    monitor-enter p0

    .line 3769
    :try_start_18
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3770
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v2

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    throw v2

    .line 3772
    :cond_1f
    :goto_1f
    return v1
.end method

.method public whitelist setPresentation(Landroid/media/AudioPresentation;)I
    .registers 4
    .param p1, "presentation"    # Landroid/media/AudioPresentation;

    .line 2938
    if-eqz p1, :cond_f

    .line 2941
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v0

    .line 2942
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result v1

    .line 2941
    invoke-direct {p0, v0, v1}, Landroid/media/AudioTrack;->native_setPresentation(II)I

    move-result v0

    return v0

    .line 2939
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "audio presentation is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setStartThresholdInFrames(I)I
    .registers 5
    .param p1, "startThresholdInFrames"    # I

    .line 2324
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    .line 2327
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-ne v0, v1, :cond_2f

    .line 2330
    if-lt p1, v1, :cond_10

    .line 2334
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setStartThresholdInFrames(I)I

    move-result v0

    return v0

    .line 2331
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startThresholdInFrames "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2328
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack must be a streaming track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2325
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist setState(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2954
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2955
    return-void
.end method

.method public whitelist setStereoVolume(FF)I
    .registers 4
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2715
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 2716
    const/4 v0, -0x3

    return v0

    .line 2719
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->baseSetVolume(FF)V

    .line 2720
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setVolume(F)I
    .registers 3
    .param p1, "gain"    # F

    .line 2747
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public whitelist stop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3049
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 3054
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3055
    :try_start_8
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 3056
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStop()V

    .line 3057
    iget-boolean v2, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v2, :cond_1b

    iget v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1b

    .line 3058
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    goto :goto_2a

    .line 3060
    :cond_1b
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 3061
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioTrack;->mOffloadEosPending:Z

    .line 3062
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3063
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3064
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 3066
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_2f

    .line 3067
    invoke-direct {p0}, Landroid/media/AudioTrack;->tryToDisableNativeRoutingCallback()V

    .line 3068
    return-void

    .line 3066
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1

    .line 3050
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V
    .registers 7
    .param p1, "eventCallback"    # Landroid/media/AudioTrack$StreamEventCallback;

    .line 4151
    if-eqz p1, :cond_46

    .line 4154
    iget-boolean v0, p0, Landroid/media/AudioTrack;->mOffloaded:Z

    if-eqz v0, :cond_3e

    .line 4157
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4158
    const/4 v1, 0x0

    .line 4159
    .local v1, "seciToRemove":Landroid/media/AudioTrack$StreamEventCbInfo;
    :try_start_a
    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack$StreamEventCbInfo;

    .line 4160
    .local v3, "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    iget-object v4, v3, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    if-ne v4, p1, :cond_32

    .line 4162
    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4163
    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_30

    .line 4164
    invoke-direct {p0}, Landroid/media/AudioTrack;->endStreamEventHandling()V

    .line 4166
    :cond_30
    monitor-exit v0

    return-void

    .line 4168
    .end local v3    # "seci":Landroid/media/AudioTrack$StreamEventCbInfo;
    :cond_32
    goto :goto_10

    .line 4169
    :cond_33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "StreamEventCallback was not registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioTrack;
    .end local p1    # "eventCallback":Landroid/media/AudioTrack$StreamEventCallback;
    throw v2

    .line 4170
    .end local v1    # "seciToRemove":Landroid/media/AudioTrack$StreamEventCbInfo;
    .restart local p0    # "this":Landroid/media/AudioTrack;
    .restart local p1    # "eventCallback":Landroid/media/AudioTrack$StreamEventCallback;
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_3b

    throw v1

    .line 4155
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No StreamEventCallback on non-offloaded AudioTrack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4152
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null StreamEventCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist write(Ljava/nio/ByteBuffer;II)I
    .registers 14
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I

    .line 3491
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const-string v1, "android.media.AudioTrack"

    if-nez v0, :cond_d

    .line 3492
    const-string v0, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    const/4 v0, -0x3

    return v0

    .line 3496
    :cond_d
    const/4 v0, -0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_19

    if-eq p3, v2, :cond_19

    .line 3497
    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    return v0

    .line 3501
    :cond_19
    if-eqz p1, :cond_81

    if-ltz p2, :cond_81

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le p2, v3, :cond_28

    move-object v3, p0

    move v6, p2

    move-object p2, p1

    goto/16 :goto_84

    .line 3506
    :cond_28
    invoke-direct {p0, p3}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_30

    .line 3507
    return v1

    .line 3510
    :cond_30
    const/4 v0, 0x0

    .line 3511
    .local v0, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 3512
    nop

    .line 3513
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_42

    move v9, v2

    goto :goto_43

    :cond_42
    move v9, v1

    .line 3512
    :goto_43
    move-object v4, p0

    move-object v5, p1

    move v7, p2

    .end local p1    # "audioData":Ljava/nio/ByteBuffer;
    .end local p2    # "sizeInBytes":I
    .local v5, "audioData":Ljava/nio/ByteBuffer;
    .local v7, "sizeInBytes":I
    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/nio/ByteBuffer;IIIZ)I

    move-result p1

    move-object p2, v5

    move-object v3, v4

    move v6, v7

    .end local v0    # "ret":I
    .end local v5    # "audioData":Ljava/nio/ByteBuffer;
    .end local v7    # "sizeInBytes":I
    .local v6, "sizeInBytes":I
    .local p1, "ret":I
    .local p2, "audioData":Ljava/nio/ByteBuffer;
    goto :goto_69

    .line 3516
    .end local v6    # "sizeInBytes":I
    .restart local v0    # "ret":I
    .local p1, "audioData":Ljava/nio/ByteBuffer;
    .local p2, "sizeInBytes":I
    :cond_4e
    move-object v3, p0

    move v6, p2

    move-object p2, p1

    .end local p1    # "audioData":Ljava/nio/ByteBuffer;
    .restart local v6    # "sizeInBytes":I
    .local p2, "audioData":Ljava/nio/ByteBuffer;
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 3517
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, p1

    iget v7, v3, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_64

    move v8, v2

    goto :goto_65

    :cond_64
    move v8, v1

    .line 3516
    :goto_65
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result p1

    .line 3522
    .end local v0    # "ret":I
    .local p1, "ret":I
    :goto_69
    iget v0, v3, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_76

    iget v0, v3, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_76

    if-lez p1, :cond_76

    .line 3526
    iput v2, v3, Landroid/media/AudioTrack;->mState:I

    .line 3529
    :cond_76
    if-lez p1, :cond_80

    .line 3530
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3533
    :cond_80
    return p1

    .line 3501
    .end local v6    # "sizeInBytes":I
    .local p1, "audioData":Ljava/nio/ByteBuffer;
    .local p2, "sizeInBytes":I
    :cond_81
    move-object v3, p0

    move v6, p2

    move-object p2, p1

    .line 3502
    .end local p1    # "audioData":Ljava/nio/ByteBuffer;
    .restart local v6    # "sizeInBytes":I
    .local p2, "audioData":Ljava/nio/ByteBuffer;
    :goto_84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioTrack.write() called with invalid size ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ") value"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    return v0
.end method

.method public whitelist write(Ljava/nio/ByteBuffer;IIJ)I
    .registers 12
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I
    .param p4, "timestamp"    # J

    .line 3569
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioTrack"

    if-nez v0, :cond_d

    .line 3570
    const-string v0, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    return v1

    .line 3574
    :cond_d
    const/4 v0, -0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_19

    if-eq p3, v3, :cond_19

    .line 3575
    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    return v0

    .line 3579
    :cond_19
    iget v4, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v4, v3, :cond_23

    .line 3580
    const-string v0, "AudioTrack.write() with timestamp called for non-streaming mode track"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    return v1

    .line 3584
    :cond_23
    iget-object v1, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-nez v1, :cond_38

    .line 3585
    const-string v0, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 3589
    :cond_38
    if-eqz p1, :cond_d2

    if-ltz p2, :cond_d2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p2, v1, :cond_44

    goto/16 :goto_d2

    .line 3594
    :cond_44
    invoke-direct {p0, p3}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4c

    .line 3595
    return v1

    .line 3599
    :cond_4c
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_67

    .line 3600
    iget v0, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3601
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3602
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v4, 0x55550002

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3605
    :cond_67
    iget v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    if-nez v0, :cond_86

    .line 3606
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 3607
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 3608
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget v4, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 3609
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3610
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3614
    :cond_86
    const/4 v0, 0x0

    .line 3615
    .local v0, "ret":I
    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b6

    .line 3616
    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0, v3, v5, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 3617
    if-gez v0, :cond_a8

    .line 3618
    const-string v3, "AudioTrack.write() could not write timestamp header!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    iput-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3620
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3621
    return v0

    .line 3623
    :cond_a8
    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_b6

    .line 3624
    const-string v3, "AudioTrack.write() partial timestamp header written."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    return v1

    .line 3630
    :cond_b6
    iget v3, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3631
    .local v3, "sizeToWrite":I
    invoke-virtual {p0, p1, v3, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 3632
    if-gez v0, :cond_cc

    .line 3633
    const-string v5, "AudioTrack.write() could not write audio data!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    iput-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 3635
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3636
    return v0

    .line 3639
    :cond_cc
    iget v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 3641
    return v0

    .line 3590
    .end local v0    # "ret":I
    .end local v3    # "sizeToWrite":I
    :cond_d2
    :goto_d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") value"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    return v0
.end method

.method public whitelist write([BII)I
    .registers 5
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .line 3157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v0

    return v0
.end method

.method public whitelist write([BIII)I
    .registers 14
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "writeMode"    # I

    .line 3205
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_5b

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    goto/16 :goto_5f

    .line 3209
    :cond_f
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_1d

    if-eq p4, v1, :cond_1d

    .line 3210
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    return v0

    .line 3214
    :cond_1d
    if-eqz p1, :cond_56

    if-ltz p2, :cond_56

    if-ltz p3, :cond_56

    add-int v2, p2, p3

    if-ltz v2, :cond_56

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_31

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    goto :goto_5a

    .line 3220
    :cond_31
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_39

    .line 3221
    return v2

    .line 3224
    :cond_39
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_3f

    move v8, v1

    goto :goto_40

    :cond_3f
    move v8, v2

    :goto_40
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "audioData":[B
    .end local p2    # "offsetInBytes":I
    .end local p3    # "sizeInBytes":I
    .local v4, "audioData":[B
    .local v5, "offsetInBytes":I
    .local v6, "sizeInBytes":I
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result p1

    .line 3227
    .local p1, "ret":I
    iget p2, v3, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_55

    iget p2, v3, Landroid/media/AudioTrack;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_55

    if-lez p1, :cond_55

    .line 3231
    iput v1, v3, Landroid/media/AudioTrack;->mState:I

    .line 3234
    :cond_55
    return p1

    .line 3214
    .end local v4    # "audioData":[B
    .end local v5    # "offsetInBytes":I
    .end local v6    # "sizeInBytes":I
    .local p1, "audioData":[B
    .restart local p2    # "offsetInBytes":I
    .restart local p3    # "sizeInBytes":I
    :cond_56
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 3217
    .end local p1    # "audioData":[B
    .end local p2    # "offsetInBytes":I
    .end local p3    # "sizeInBytes":I
    .restart local v4    # "audioData":[B
    .restart local v5    # "offsetInBytes":I
    .restart local v6    # "sizeInBytes":I
    :goto_5a
    return v0

    .line 3205
    .end local v4    # "audioData":[B
    .end local v5    # "offsetInBytes":I
    .end local v6    # "sizeInBytes":I
    .restart local p1    # "audioData":[B
    .restart local p2    # "offsetInBytes":I
    .restart local p3    # "sizeInBytes":I
    :cond_5b
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 3206
    .end local p1    # "audioData":[B
    .end local p2    # "offsetInBytes":I
    .end local p3    # "sizeInBytes":I
    .restart local v4    # "audioData":[B
    .restart local v5    # "offsetInBytes":I
    .restart local v6    # "sizeInBytes":I
    :goto_5f
    const/4 p1, -0x3

    return p1
.end method

.method public whitelist write([FIII)I
    .registers 14
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "writeMode"    # I

    .line 3406
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioTrack"

    if-nez v0, :cond_d

    .line 3407
    const-string v0, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    return v1

    .line 3411
    :cond_d
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_18

    .line 3412
    const-string v0, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    return v1

    .line 3416
    :cond_18
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_24

    if-eq p4, v1, :cond_24

    .line 3417
    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    return v0

    .line 3421
    :cond_24
    if-eqz p1, :cond_5d

    if-ltz p2, :cond_5d

    if-ltz p3, :cond_5d

    add-int v3, p2, p3

    if-ltz v3, :cond_5d

    add-int v3, p2, p3

    array-length v4, p1

    if-le v3, v4, :cond_38

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    goto :goto_61

    .line 3428
    :cond_38
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_40

    .line 3429
    return v2

    .line 3432
    :cond_40
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_46

    move v8, v1

    goto :goto_47

    :cond_46
    move v8, v2

    :goto_47
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "audioData":[F
    .end local p2    # "offsetInFloats":I
    .end local p3    # "sizeInFloats":I
    .local v4, "audioData":[F
    .local v5, "offsetInFloats":I
    .local v6, "sizeInFloats":I
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result p1

    .line 3435
    .local p1, "ret":I
    iget p2, v3, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_5c

    iget p2, v3, Landroid/media/AudioTrack;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_5c

    if-lez p1, :cond_5c

    .line 3439
    iput v1, v3, Landroid/media/AudioTrack;->mState:I

    .line 3442
    :cond_5c
    return p1

    .line 3421
    .end local v4    # "audioData":[F
    .end local v5    # "offsetInFloats":I
    .end local v6    # "sizeInFloats":I
    .local p1, "audioData":[F
    .restart local p2    # "offsetInFloats":I
    .restart local p3    # "sizeInFloats":I
    :cond_5d
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 3424
    .end local p1    # "audioData":[F
    .end local p2    # "offsetInFloats":I
    .end local p3    # "sizeInFloats":I
    .restart local v4    # "audioData":[F
    .restart local v5    # "offsetInFloats":I
    .restart local v6    # "sizeInFloats":I
    :goto_61
    const-string p1, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    return v0
.end method

.method public whitelist write([SII)I
    .registers 5
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .line 3272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v0

    return v0
.end method

.method public whitelist write([SIII)I
    .registers 14
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "writeMode"    # I

    .line 3318
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_61

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_61

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_15

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    goto/16 :goto_65

    .line 3325
    :cond_15
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_23

    if-eq p4, v1, :cond_23

    .line 3326
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    return v0

    .line 3330
    :cond_23
    if-eqz p1, :cond_5c

    if-ltz p2, :cond_5c

    if-ltz p3, :cond_5c

    add-int v2, p2, p3

    if-ltz v2, :cond_5c

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_37

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    goto :goto_60

    .line 3336
    :cond_37
    invoke-direct {p0, p4}, Landroid/media/AudioTrack;->blockUntilOffloadDrain(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3f

    .line 3337
    return v2

    .line 3340
    :cond_3f
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_45

    move v8, v1

    goto :goto_46

    :cond_45
    move v8, v2

    :goto_46
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "audioData":[S
    .end local p2    # "offsetInShorts":I
    .end local p3    # "sizeInShorts":I
    .local v4, "audioData":[S
    .local v5, "offsetInShorts":I
    .local v6, "sizeInShorts":I
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result p1

    .line 3343
    .local p1, "ret":I
    iget p2, v3, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_5b

    iget p2, v3, Landroid/media/AudioTrack;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_5b

    if-lez p1, :cond_5b

    .line 3347
    iput v1, v3, Landroid/media/AudioTrack;->mState:I

    .line 3350
    :cond_5b
    return p1

    .line 3330
    .end local v4    # "audioData":[S
    .end local v5    # "offsetInShorts":I
    .end local v6    # "sizeInShorts":I
    .local p1, "audioData":[S
    .restart local p2    # "offsetInShorts":I
    .restart local p3    # "sizeInShorts":I
    :cond_5c
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 3333
    .end local p1    # "audioData":[S
    .end local p2    # "offsetInShorts":I
    .end local p3    # "sizeInShorts":I
    .restart local v4    # "audioData":[S
    .restart local v5    # "offsetInShorts":I
    .restart local v6    # "sizeInShorts":I
    :goto_60
    return v0

    .line 3318
    .end local v4    # "audioData":[S
    .end local v5    # "offsetInShorts":I
    .end local v6    # "sizeInShorts":I
    .restart local p1    # "audioData":[S
    .restart local p2    # "offsetInShorts":I
    .restart local p3    # "sizeInShorts":I
    :cond_61
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 3322
    .end local p1    # "audioData":[S
    .end local p2    # "offsetInShorts":I
    .end local p3    # "sizeInShorts":I
    .restart local v4    # "audioData":[S
    .restart local v5    # "offsetInShorts":I
    .restart local v6    # "sizeInShorts":I
    :goto_65
    const/4 p1, -0x3

    return p1
.end method
