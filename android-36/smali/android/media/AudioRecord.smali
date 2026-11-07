.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/MicrophoneDirection;
.implements Landroid/media/AudioRecordingMonitor;
.implements Landroid/media/AudioRecordingMonitorClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;,
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$MetricsConstants;,
        Landroid/media/AudioRecord$OnRoutingChangedListener;,
        Landroid/media/AudioRecord$Builder;,
        Landroid/media/AudioRecord$ReadMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final greylist-max-o AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final greylist-max-o AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final greylist-max-o AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final greylist-max-o AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final whitelist ERROR:I = -0x1

.field public static final whitelist ERROR_BAD_VALUE:I = -0x2

.field public static final whitelist ERROR_DEAD_OBJECT:I = -0x6

.field public static final whitelist ERROR_INVALID_OPERATION:I = -0x3

.field private static final blacklist MAX_SHARED_AUDIO_HISTORY_MS:J = 0x1388L

.field private static final greylist-max-o NATIVE_EVENT_MARKER:I = 0x2

.field private static final greylist-max-o NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final whitelist READ_BLOCKING:I = 0x0

.field public static final whitelist READ_NON_BLOCKING:I = 0x1

.field public static final whitelist RECORDSTATE_RECORDING:I = 0x3

.field public static final whitelist RECORDSTATE_STOPPED:I = 0x1

.field public static final whitelist STATE_INITIALIZED:I = 0x1

.field public static final whitelist STATE_UNINITIALIZED:I = 0x0

.field public static final greylist-max-o SUBMIX_FIXED_VOLUME:Ljava/lang/String; = "fixedVolume"

.field public static final whitelist SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "android.media.AudioRecord"


# instance fields
.field private greylist-max-r mAudioAttributes:Landroid/media/AudioAttributes;

.field private blacklist mAudioCapturePolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private greylist-max-o mAudioFormat:I

.field private greylist-max-o mChannelCount:I

.field private greylist-max-o mChannelIndexMask:I

.field private greylist-max-o mChannelMask:I

.field private greylist-max-o mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private blacklist mHalInputFlags:I

.field private final greylist-max-o mICallBack:Landroid/os/IBinder;

.field private greylist mInitializationLooper:Landroid/os/Looper;

.field private greylist-max-o mIsSubmixFullVolume:Z

.field private blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private greylist mNativeAudioRecordHandle:J

.field private greylist-max-o mNativeBufferSizeInBytes:I

.field private greylist-max-r mNativeJNIDataHandle:J

.field private greylist-max-o mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final greylist-max-o mPositionListenerLock:Ljava/lang/Object;

.field private greylist-max-o mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private greylist-max-o mRecordSource:I

.field blacklist mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

.field private greylist-max-o mRecordingState:I

.field private final greylist-max-o mRecordingStateLock:Ljava/lang/Object;

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


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPositionListener(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPositionListenerLock(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterAudioPolicyOnRelease(Landroid/media/AudioRecord;Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->unregisterAudioPolicyOnRelease(Landroid/media/audiopolicy/AudioPolicy;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .registers 9
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 333
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 334
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 337
    const/4 v2, 0x1

    invoke-static {p3, v2}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 339
    invoke-virtual {v1, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 340
    invoke-virtual {v1, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 333
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p5, v2}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 344
    return-void
.end method

.method constructor greylist-max-o <init>(J)V
    .registers 6
    .param p1, "nativeRecordInJavaObj"    # J

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 248
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 252
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 263
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 267
    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 271
    iput-object v1, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 276
    iput v0, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 280
    iput v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 284
    iput v0, p0, Landroid/media/AudioRecord;->mHalInputFlags:I

    .line 291
    iput-boolean v0, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 297
    sget-object v2, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v2, p0, Landroid/media/AudioRecord;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 1548
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 2048
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 2176
    iput-object v1, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2260
    new-instance v1, Landroid/media/AudioRecordingMonitorImpl;

    invoke-direct {v1, p0}, Landroid/media/AudioRecordingMonitorImpl;-><init>(Landroid/media/AudioRecordingMonitorClient;)V

    iput-object v1, p0, Landroid/media/AudioRecord;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    .line 503
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/AudioRecord;->mNativeAudioRecordHandle:J

    .line 504
    iput-wide v1, p0, Landroid/media/AudioRecord;->mNativeJNIDataHandle:J

    .line 507
    cmp-long v1, p1, v1

    if-eqz v1, :cond_4f

    .line 508
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->deferred_connect(J)V

    goto :goto_51

    .line 510
    :cond_4f
    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 512
    :goto_51
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V
    .registers 13
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "sessionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 370
    nop

    .line 371
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    .line 370
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "attributes":Landroid/media/AudioAttributes;
    .end local p2    # "format":Landroid/media/AudioFormat;
    .end local p3    # "bufferSizeInBytes":I
    .end local p4    # "sessionId":I
    .local v1, "attributes":Landroid/media/AudioAttributes;
    .local v2, "format":Landroid/media/AudioFormat;
    .local v3, "bufferSizeInBytes":I
    .local v4, "sessionId":I
    invoke-direct/range {v0 .. v7}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IILandroid/content/Context;II)V

    .line 373
    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IILandroid/content/Context;II)V
    .registers 29
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "sessionId"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "maxSharedAudioHistoryMs"    # I
    .param p7, "halInputFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 400
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p5

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 244
    const/4 v2, 0x0

    iput v2, v1, Landroid/media/AudioRecord;->mState:I

    .line 248
    const/4 v3, 0x1

    iput v3, v1, Landroid/media/AudioRecord;->mRecordingState:I

    .line 252
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v1, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 259
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 263
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 267
    iput-object v4, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 271
    iput-object v4, v1, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 276
    iput v2, v1, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 280
    iput v2, v1, Landroid/media/AudioRecord;->mSessionId:I

    .line 284
    iput v2, v1, Landroid/media/AudioRecord;->mHalInputFlags:I

    .line 291
    iput-boolean v2, v1, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 297
    sget-object v5, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v5, v1, Landroid/media/AudioRecord;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 1548
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iput-object v5, v1, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 2048
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v1, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 2176
    iput-object v4, v1, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2260
    new-instance v4, Landroid/media/AudioRecordingMonitorImpl;

    invoke-direct {v4, v1}, Landroid/media/AudioRecordingMonitorImpl;-><init>(Landroid/media/AudioRecordingMonitorClient;)V

    iput-object v4, v1, Landroid/media/AudioRecord;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    .line 401
    iput v3, v1, Landroid/media/AudioRecord;->mRecordingState:I

    .line 402
    move/from16 v4, p7

    iput v4, v1, Landroid/media/AudioRecord;->mHalInputFlags:I

    .line 403
    if-eqz v0, :cond_1f5

    .line 406
    if-eqz p2, :cond_1ed

    .line 411
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    iput-object v5, v1, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v5, :cond_5f

    .line 412
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    iput-object v5, v1, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 416
    :cond_5f
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_a4

    .line 417
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5, v0}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 419
    .local v5, "ab":Landroid/media/AudioAttributes$Builder;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 420
    .local v7, "filteredTags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 421
    .local v8, "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_79
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9b

    .line 422
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 423
    .local v9, "tag":Ljava/lang/String;
    const-string v10, "fixedVolume"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_97

    .line 424
    iput-boolean v3, v1, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 425
    const-string v10, "android.media.AudioRecord"

    const-string v11, "Will record from REMOTE_SUBMIX at full fixed volume"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    .line 427
    :cond_97
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v9    # "tag":Ljava/lang/String;
    :goto_9a
    goto :goto_79

    .line 430
    :cond_9b
    invoke-virtual {v5, v7}, Landroid/media/AudioAttributes$Builder;->replaceTags(Ljava/util/HashSet;)Landroid/media/AudioAttributes$Builder;

    .line 431
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    move-object v5, v0

    .end local p1    # "attributes":Landroid/media/AudioAttributes;
    .local v0, "attributes":Landroid/media/AudioAttributes;
    goto :goto_a5

    .line 416
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v5    # "ab":Landroid/media/AudioAttributes$Builder;
    .end local v7    # "filteredTags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local p1    # "attributes":Landroid/media/AudioAttributes;
    :cond_a4
    move-object v5, v0

    .line 434
    .end local p1    # "attributes":Landroid/media/AudioAttributes;
    .local v5, "attributes":Landroid/media/AudioAttributes;
    :goto_a5
    iput-object v5, v1, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    .line 437
    .local v0, "rate":I
    if-nez v0, :cond_b0

    .line 438
    const/4 v0, 0x0

    move v7, v0

    goto :goto_b1

    .line 437
    :cond_b0
    move v7, v0

    .line 441
    .end local v0    # "rate":I
    .local v7, "rate":I
    :goto_b1
    const/4 v0, 0x1

    .line 442
    .local v0, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v8

    and-int/2addr v8, v3

    if-eqz v8, :cond_bf

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    move v8, v0

    goto :goto_c0

    .line 442
    :cond_bf
    move v8, v0

    .line 447
    .end local v0    # "encoding":I
    .local v8, "encoding":I
    :goto_c0
    iget-object v0, v1, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    invoke-direct {v1, v0, v7, v8}, Landroid/media/AudioRecord;->audioParamCheck(III)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v0

    and-int/2addr v0, v6

    if-eqz v0, :cond_dc

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v0

    iput v0, v1, Landroid/media/AudioRecord;->mChannelIndexMask:I

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    iput v0, v1, Landroid/media/AudioRecord;->mChannelCount:I

    .line 454
    :cond_dc
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f5

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    invoke-static {v0, v2}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v0

    iput v0, v1, Landroid/media/AudioRecord;->mChannelMask:I

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    iput v0, v1, Landroid/media/AudioRecord;->mChannelCount:I

    goto :goto_107

    .line 458
    :cond_f5
    iget v0, v1, Landroid/media/AudioRecord;->mChannelIndexMask:I

    if-nez v0, :cond_107

    .line 459
    invoke-static {v3, v2}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v0

    iput v0, v1, Landroid/media/AudioRecord;->mChannelMask:I

    .line 460
    iget v0, v1, Landroid/media/AudioRecord;->mChannelMask:I

    invoke-static {v0}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v0

    iput v0, v1, Landroid/media/AudioRecord;->mChannelCount:I

    .line 463
    :cond_107
    :goto_107
    move/from16 v6, p3

    invoke-direct {v1, v6}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    .line 465
    if-eqz v15, :cond_113

    .line 466
    invoke-virtual {v15}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    goto :goto_117

    :cond_113
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 467
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    :goto_117
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_13b

    .line 469
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_13d

    .line 467
    :cond_13b
    move-object/from16 v16, v0

    .line 472
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .local v16, "attributionSource":Landroid/content/AttributionSource;
    :goto_13d
    iget v0, v1, Landroid/media/AudioRecord;->mSampleRate:I

    filled-new-array {v0}, [I

    move-result-object v0

    move-object v9, v0

    .line 473
    .local v9, "sampleRate":[I
    move-object v4, v9

    .end local v9    # "sampleRate":[I
    .local v4, "sampleRate":[I
    new-array v9, v3, [I

    .line 474
    .local v9, "session":[I
    move/from16 v10, p4

    invoke-static {v15, v10}, Landroid/media/AudioRecord;->resolveSessionId(Landroid/content/Context;I)I

    move-result v0

    aput v0, v9, v2

    .line 478
    invoke-virtual/range {v16 .. v16}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v17

    .line 479
    .local v17, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    move v0, v2

    :try_start_154
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move v11, v3

    iget-object v3, v1, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;
    :try_end_15c
    .catchall {:try_start_154 .. :try_end_15c} :catchall_1da

    move-object v12, v5

    .end local v5    # "attributes":Landroid/media/AudioAttributes;
    .local v12, "attributes":Landroid/media/AudioAttributes;
    :try_start_15d
    iget v5, v1, Landroid/media/AudioRecord;->mChannelMask:I

    iget v6, v1, Landroid/media/AudioRecord;->mChannelIndexMask:I
    :try_end_161
    .catchall {:try_start_15d .. :try_end_161} :catchall_1d1

    move v13, v7

    .end local v7    # "rate":I
    .local v13, "rate":I
    :try_start_162
    iget v7, v1, Landroid/media/AudioRecord;->mAudioFormat:I
    :try_end_164
    .catchall {:try_start_162 .. :try_end_164} :catchall_1c8

    move v14, v8

    .end local v8    # "encoding":I
    .local v14, "encoding":I
    :try_start_165
    iget v8, v1, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 481
    invoke-virtual/range {v17 .. v17}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v10
    :try_end_16b
    .catchall {:try_start_165 .. :try_end_16b} :catchall_1bf

    move/from16 v18, v14

    .end local v14    # "encoding":I
    .local v18, "encoding":I
    :try_start_16d
    iget v14, v1, Landroid/media/AudioRecord;->mHalInputFlags:I
    :try_end_16f
    .catchall {:try_start_16d .. :try_end_16f} :catchall_1b8

    .line 479
    move/from16 v20, v11

    move-object/from16 v19, v12

    .end local v12    # "attributes":Landroid/media/AudioAttributes;
    .local v19, "attributes":Landroid/media/AudioAttributes;
    const-wide/16 v11, 0x0

    move/from16 p1, v0

    move/from16 v0, v20

    move/from16 v20, v13

    move/from16 v13, p6

    .end local v13    # "rate":I
    .local v20, "rate":I
    :try_start_17d
    invoke-direct/range {v1 .. v14}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILandroid/os/Parcel;JII)I

    move-result v2

    .line 483
    .local v2, "initResult":I
    if-eqz v2, :cond_1a5

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " when initializing native AudioRecord object."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V
    :try_end_19f
    .catchall {:try_start_17d .. :try_end_19f} :catchall_1b5

    .line 487
    if-eqz v17, :cond_1a4

    invoke-virtual/range {v17 .. v17}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 485
    :cond_1a4
    return-void

    .line 487
    .end local v2    # "initResult":I
    :cond_1a5
    if-eqz v17, :cond_1aa

    invoke-virtual/range {v17 .. v17}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 489
    .end local v17    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_1aa
    aget v2, v4, p1

    iput v2, v1, Landroid/media/AudioRecord;->mSampleRate:I

    .line 490
    aget v2, v9, p1

    iput v2, v1, Landroid/media/AudioRecord;->mSessionId:I

    .line 492
    iput v0, v1, Landroid/media/AudioRecord;->mState:I

    .line 493
    return-void

    .line 478
    .restart local v17    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_1b5
    move-exception v0

    move-object v2, v0

    goto :goto_1e2

    .end local v19    # "attributes":Landroid/media/AudioAttributes;
    .end local v20    # "rate":I
    .restart local v12    # "attributes":Landroid/media/AudioAttributes;
    .restart local v13    # "rate":I
    :catchall_1b8
    move-exception v0

    move-object/from16 v19, v12

    move/from16 v20, v13

    move-object v2, v0

    .end local v12    # "attributes":Landroid/media/AudioAttributes;
    .end local v13    # "rate":I
    .restart local v19    # "attributes":Landroid/media/AudioAttributes;
    .restart local v20    # "rate":I
    goto :goto_1e2

    .end local v18    # "encoding":I
    .end local v19    # "attributes":Landroid/media/AudioAttributes;
    .end local v20    # "rate":I
    .restart local v12    # "attributes":Landroid/media/AudioAttributes;
    .restart local v13    # "rate":I
    .restart local v14    # "encoding":I
    :catchall_1bf
    move-exception v0

    move-object/from16 v19, v12

    move/from16 v20, v13

    move/from16 v18, v14

    move-object v2, v0

    .end local v12    # "attributes":Landroid/media/AudioAttributes;
    .end local v13    # "rate":I
    .end local v14    # "encoding":I
    .restart local v18    # "encoding":I
    .restart local v19    # "attributes":Landroid/media/AudioAttributes;
    .restart local v20    # "rate":I
    goto :goto_1e2

    .end local v18    # "encoding":I
    .end local v19    # "attributes":Landroid/media/AudioAttributes;
    .end local v20    # "rate":I
    .restart local v8    # "encoding":I
    .restart local v12    # "attributes":Landroid/media/AudioAttributes;
    .restart local v13    # "rate":I
    :catchall_1c8
    move-exception v0

    move/from16 v18, v8

    move-object/from16 v19, v12

    move/from16 v20, v13

    move-object v2, v0

    .end local v8    # "encoding":I
    .end local v12    # "attributes":Landroid/media/AudioAttributes;
    .end local v13    # "rate":I
    .restart local v18    # "encoding":I
    .restart local v19    # "attributes":Landroid/media/AudioAttributes;
    .restart local v20    # "rate":I
    goto :goto_1e2

    .end local v18    # "encoding":I
    .end local v19    # "attributes":Landroid/media/AudioAttributes;
    .end local v20    # "rate":I
    .restart local v7    # "rate":I
    .restart local v8    # "encoding":I
    .restart local v12    # "attributes":Landroid/media/AudioAttributes;
    :catchall_1d1
    move-exception v0

    move/from16 v20, v7

    move/from16 v18, v8

    move-object/from16 v19, v12

    move-object v2, v0

    .end local v7    # "rate":I
    .end local v8    # "encoding":I
    .end local v12    # "attributes":Landroid/media/AudioAttributes;
    .restart local v18    # "encoding":I
    .restart local v19    # "attributes":Landroid/media/AudioAttributes;
    .restart local v20    # "rate":I
    goto :goto_1e2

    .end local v18    # "encoding":I
    .end local v19    # "attributes":Landroid/media/AudioAttributes;
    .end local v20    # "rate":I
    .restart local v5    # "attributes":Landroid/media/AudioAttributes;
    .restart local v7    # "rate":I
    .restart local v8    # "encoding":I
    :catchall_1da
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v20, v7

    move/from16 v18, v8

    move-object v2, v0

    .end local v5    # "attributes":Landroid/media/AudioAttributes;
    .end local v7    # "rate":I
    .end local v8    # "encoding":I
    .restart local v18    # "encoding":I
    .restart local v19    # "attributes":Landroid/media/AudioAttributes;
    .restart local v20    # "rate":I
    :goto_1e2
    if-eqz v17, :cond_1ec

    :try_start_1e4
    invoke-virtual/range {v17 .. v17}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_1e7
    .catchall {:try_start_1e4 .. :try_end_1e7} :catchall_1e8

    goto :goto_1ec

    :catchall_1e8
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1ec
    :goto_1ec
    throw v2

    .line 407
    .end local v4    # "sampleRate":[I
    .end local v9    # "session":[I
    .end local v16    # "attributionSource":Landroid/content/AttributionSource;
    .end local v17    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    .end local v18    # "encoding":I
    .end local v19    # "attributes":Landroid/media/AudioAttributes;
    .end local v20    # "rate":I
    .restart local p1    # "attributes":Landroid/media/AudioAttributes;
    :cond_1ed
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null AudioFormat"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_1f5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null AudioAttributes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IILandroid/content/Context;IILandroid/media/AudioRecord-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IILandroid/content/Context;II)V

    return-void
.end method

.method private greylist-max-o audioBuffSizeCheck(I)V
    .registers 5
    .param p1, "audioBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1197
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getFormat()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getFrameSizeInBytes()I

    move-result v0

    rem-int v0, p1, v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    if-lt p1, v0, :cond_12

    .line 1202
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 1203
    return-void

    .line 1198
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio buffer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (frame size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1199
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getFormat()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getFrameSizeInBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o audioParamCheck(III)V
    .registers 7
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1150
    if-ltz p1, :cond_69

    .line 1151
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-le p1, v0, :cond_18

    const/16 v0, 0x7ce

    if-eq p1, v0, :cond_18

    const/16 v0, 0x7cd

    if-eq p1, v0, :cond_18

    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_18

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_69

    .line 1158
    :cond_18
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 1162
    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p2, v0, :cond_22

    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p2, v0, :cond_24

    :cond_22
    if-nez p2, :cond_50

    .line 1168
    :cond_24
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 1172
    sparse-switch p3, :sswitch_data_82

    .line 1185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported sample encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Should be ENCODING_PCM_8BIT, ENCODING_PCM_16BIT, ENCODING_PCM_24BIT_PACKED, ENCODING_PCM_32BIT, or ENCODING_PCM_FLOAT."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1182
    :sswitch_48
    iput p3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 1183
    goto :goto_4f

    .line 1174
    :sswitch_4b
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 1175
    nop

    .line 1190
    :goto_4f
    return-void

    .line 1165
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_82
    .sparse-switch
        0x1 -> :sswitch_4b
        0x2 -> :sswitch_48
        0x3 -> :sswitch_48
        0x4 -> :sswitch_48
        0x12 -> :sswitch_48
        0x15 -> :sswitch_48
        0x16 -> :sswitch_48
    .end sparse-switch
.end method

.method private greylist-max-o broadcastRoutingChange()V
    .registers 4

    .line 2150
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 2151
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2152
    :try_start_6
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 2153
    .local v2, "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    invoke-virtual {v2}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    .line 2154
    .end local v2    # "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    goto :goto_10

    .line 2155
    :cond_20
    monitor-exit v0

    .line 2156
    return-void

    .line 2155
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private static greylist-max-o getChannelMaskFromLegacyConfig(IZ)I
    .registers 5
    .param p0, "inChannelConfig"    # I
    .param p1, "allowLegacyConfig"    # Z

    .line 1115
    sparse-switch p0, :sswitch_data_26

    .line 1129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1126
    :sswitch_b
    move v0, p0

    .line 1127
    .local v0, "mask":I
    goto :goto_13

    .line 1123
    .end local v0    # "mask":I
    :sswitch_d
    const/16 v0, 0xc

    .line 1124
    .restart local v0    # "mask":I
    goto :goto_13

    .line 1119
    .end local v0    # "mask":I
    :sswitch_10
    const/16 v0, 0x10

    .line 1120
    .restart local v0    # "mask":I
    nop

    .line 1132
    :goto_13
    if-nez p1, :cond_24

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1c

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1c

    goto :goto_24

    .line 1135
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported deprecated configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1138
    :cond_24
    :goto_24
    return v0

    nop

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_10
        0x3 -> :sswitch_d
        0xc -> :sswitch_d
        0x10 -> :sswitch_10
        0x30 -> :sswitch_b
    .end sparse-switch
.end method

.method public static whitelist getMaxSharedAudioHistoryMillis()J
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1969
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public static whitelist getMinBufferSize(III)I
    .registers 6
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .line 1405
    const/4 v0, 0x0

    .line 1406
    .local v0, "channelCount":I
    const/4 v1, -0x2

    sparse-switch p1, :sswitch_data_1c

    .line 1419
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 1420
    return v1

    .line 1415
    :sswitch_b
    const/4 v0, 0x2

    .line 1416
    goto :goto_f

    .line 1410
    :sswitch_d
    const/4 v0, 0x1

    .line 1411
    nop

    .line 1423
    :goto_f
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    move-result v2

    .line 1424
    .local v2, "size":I
    if-nez v2, :cond_16

    .line 1425
    return v1

    .line 1427
    :cond_16
    const/4 v1, -0x1

    if-ne v2, v1, :cond_1a

    .line 1428
    return v1

    .line 1431
    :cond_1a
    return v2

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_d
        0x3 -> :sswitch_b
        0xc -> :sswitch_b
        0x10 -> :sswitch_d
        0x30 -> :sswitch_b
    .end sparse-switch
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

    .line 1914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1915
    .local v0, "audioDeviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_getRoutedDeviceIds()[I

    move-result-object v1

    .line 1916
    .local v1, "deviceIds":[I
    if-eqz v1, :cond_23

    array-length v2, v1

    if-nez v2, :cond_f

    goto :goto_23

    .line 1920
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_22

    .line 1921
    aget v3, v1, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v3

    .line 1923
    .local v3, "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    if-eqz v3, :cond_1f

    .line 1924
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1920
    .end local v3    # "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1927
    .end local v2    # "i":I
    :cond_22
    return-object v0

    .line 1917
    :cond_23
    :goto_23
    return-object v0
.end method

.method private greylist-max-o handleFullVolumeRec(Z)V
    .registers 7
    .param p1, "starting"    # Z

    .line 1550
    iget-boolean v0, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    if-nez v0, :cond_5

    .line 1551
    return-void

    .line 1553
    :cond_5
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1554
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 1556
    .local v1, "ias":Landroid/media/IAudioService;
    :try_start_f
    iget-object v2, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 1559
    goto :goto_1d

    .line 1557
    :catch_15
    move-exception v2

    .line 1558
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "android.media.AudioRecord"

    const-string v4, "Error talking to AudioService when handling full submix volume"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1560
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method private static greylist-max-o logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 2558
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    return-void
.end method

.method private static greylist-max-o loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 2562
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    return-void
.end method

.method private final native greylist-max-o native_disableDeviceCallback()V
.end method

.method private final native greylist-max-o native_enableDeviceCallback()V
.end method

.method private native greylist-max-o native_finalize()V
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native blacklist native_getPortId()I
.end method

.method private native blacklist native_getRoutedDeviceIds()[I
.end method

.method private final native greylist-max-o native_get_active_microphones(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method private final native greylist-max-o native_get_buffer_size_in_frames()I
.end method

.method private final native greylist-max-o native_get_marker_pos()I
.end method

.method private static final native greylist-max-o native_get_min_buff_size(III)I
.end method

.method private final native greylist-max-o native_get_pos_update_period()I
.end method

.method private final native greylist-max-o native_get_timestamp(Landroid/media/AudioTimestamp;I)I
.end method

.method private final native greylist-max-o native_read_in_byte_array([BIIZ)I
.end method

.method private final native greylist-max-o native_read_in_direct_buffer(Ljava/lang/Object;IZ)I
.end method

.method private final native greylist-max-o native_read_in_float_array([FIIZ)I
.end method

.method private final native greylist-max-o native_read_in_short_array([SIIZ)I
.end method

.method private final native greylist-max-o native_setInputDevice(I)Z
.end method

.method private native blacklist native_setLogSessionId(Ljava/lang/String;)V
.end method

.method private final native greylist-max-o native_set_marker_pos(I)I
.end method

.method private final native greylist-max-o native_set_pos_update_period(I)I
.end method

.method private native blacklist native_set_preferred_microphone_direction(I)I
.end method

.method private native blacklist native_set_preferred_microphone_field_dimension(F)I
.end method

.method private native blacklist native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILandroid/os/Parcel;JII)I
.end method

.method private greylist-max-r native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILjava/lang/String;JI)I
    .registers 31
    .param p1, "audiorecordThis"    # Ljava/lang/Object;
    .param p2, "attributes"    # Ljava/lang/Object;
    .param p3, "sampleRate"    # [I
    .param p4, "channelMask"    # I
    .param p5, "channelIndexMask"    # I
    .param p6, "audioFormat"    # I
    .param p7, "buffSizeInBytes"    # I
    .param p8, "sessionId"    # [I
    .param p9, "opPackageName"    # Ljava/lang/String;
    .param p10, "nativeRecordInJavaObj"    # J
    .param p12, "halInputFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2479
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 2480
    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v2

    .line 2481
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v2}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v3

    .line 2482
    .local v3, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    nop

    .line 2484
    :try_start_f
    invoke-virtual {v3}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v13

    .line 2482
    const/16 v16, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-wide/from16 v14, p10

    move/from16 v17, p12

    invoke-direct/range {v4 .. v17}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILandroid/os/Parcel;JII)I

    move-result v0
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_35

    .line 2485
    if-eqz v3, :cond_34

    invoke-virtual {v3}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 2482
    :cond_34
    return v0

    .line 2481
    :catchall_35
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_41

    :try_start_39
    invoke-virtual {v3}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    throw v4
.end method

.method private native blacklist native_shareAudioHistory(Ljava/lang/String;J)I
.end method

.method private final native greylist-max-o native_start(II)I
.end method

.method private final native greylist-max-o native_stop()V
.end method

.method private static greylist-max-r postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .param p0, "audiorecord_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 2444
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecord;

    .line 2445
    .local v0, "recorder":Landroid/media/AudioRecord;
    if-nez v0, :cond_c

    .line 2446
    return-void

    .line 2449
    :cond_c
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_14

    .line 2450
    invoke-direct {v0}, Landroid/media/AudioRecord;->broadcastRoutingChange()V

    .line 2451
    return-void

    .line 2454
    :cond_14
    iget-object v1, v0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    if-eqz v1, :cond_23

    .line 2455
    iget-object v1, v0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 2456
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2457
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, v1}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2460
    .end local v1    # "m":Landroid/os/Message;
    :cond_23
    return-void
.end method

.method private static blacklist resolveSessionId(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestedSessionId"    # I

    .line 1086
    if-eqz p1, :cond_3

    .line 1088
    return p1

    .line 1091
    :cond_3
    const/4 v0, 0x0

    if-nez p0, :cond_7

    .line 1092
    return v0

    .line 1095
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    .line 1096
    .local v1, "deviceId":I
    if-nez v1, :cond_e

    .line 1097
    return v0

    .line 1100
    :cond_e
    const-class v2, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager;

    .line 1101
    .local v2, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    if-eqz v2, :cond_25

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    move-result v3

    if-nez v3, :cond_20

    goto :goto_25

    .line 1106
    :cond_20
    invoke-virtual {v2, v1}, Landroid/companion/virtual/VirtualDeviceManager;->getAudioRecordingSessionId(I)I

    move-result v0

    return v0

    .line 1103
    :cond_25
    :goto_25
    return v0
.end method

.method private greylist-max-o testDisableNativeRoutingCallbacksLocked()V
    .registers 2

    .line 2035
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 2036
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_disableDeviceCallback()V

    .line 2038
    :cond_b
    return-void
.end method

.method private greylist-max-o testEnableNativeRoutingCallbacksLocked()V
    .registers 2

    .line 2025
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 2026
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_enableDeviceCallback()V

    .line 2028
    :cond_b
    return-void
.end method

.method private blacklist unregisterAudioPolicyOnRelease(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 2
    .param p1, "audioPolicy"    # Landroid/media/audiopolicy/AudioPolicy;

    .line 521
    iput-object p1, p0, Landroid/media/AudioRecord;->mAudioCapturePolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 522
    return-void
.end method


# virtual methods
.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2131
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 2132
    return-void
.end method

.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 8
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2064
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2065
    if-eqz p1, :cond_25

    :try_start_5
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 2066
    invoke-direct {p0}, Landroid/media/AudioRecord;->testEnableNativeRoutingCallbacksLocked()V

    .line 2067
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 2069
    if-eqz p2, :cond_18

    move-object v3, p2

    goto :goto_1f

    :cond_18
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_1f
    invoke-direct {v2, p0, p1, v3}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 2067
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    :cond_25
    monitor-exit v0

    .line 2072
    return-void

    .line 2071
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v1
.end method

.method greylist-max-o deferred_connect(J)V
    .registers 20
    .param p1, "nativeRecordInJavaObj"    # J

    .line 528
    move-object/from16 v1, p0

    iget v0, v1, Landroid/media/AudioRecord;->mState:I

    const/4 v15, 0x1

    if-eq v0, v15, :cond_66

    .line 529
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v9

    .line 530
    .local v9, "session":[I
    filled-new-array {v0}, [I

    move-result-object v4

    .line 536
    .local v4, "rates":[I
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 537
    invoke-virtual {v2}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v16

    .line 538
    .local v16, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_18
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 546
    invoke-virtual/range {v16 .. v16}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v10

    .line 538
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v11, p1

    invoke-direct/range {v1 .. v14}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILandroid/os/Parcel;JII)I

    move-result v2
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_59

    .line 550
    .local v2, "initResult":I
    if-eqz v16, :cond_33

    invoke-virtual/range {v16 .. v16}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 551
    .end local v16    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_33
    if-eqz v2, :cond_52

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " when initializing native AudioRecord object."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 553
    return-void

    .line 556
    :cond_52
    aget v0, v9, v0

    iput v0, v1, Landroid/media/AudioRecord;->mSessionId:I

    .line 558
    iput v15, v1, Landroid/media/AudioRecord;->mState:I

    goto :goto_66

    .line 536
    .end local v2    # "initResult":I
    .restart local v16    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_59
    move-exception v0

    move-object v2, v0

    if-eqz v16, :cond_65

    :try_start_5d
    invoke-virtual/range {v16 .. v16}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_65
    :goto_65
    throw v2

    .line 560
    .end local v4    # "rates":[I
    .end local v9    # "session":[I
    .end local v16    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_66
    :goto_66
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 1230
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 1231
    return-void
.end method

.method public whitelist getActiveMicrophones()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MicrophoneInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2231
    .local v0, "activeMicrophones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MicrophoneInfo;>;"
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_get_active_microphones(Ljava/util/ArrayList;)I

    move-result v1

    .line 2232
    .local v1, "status":I
    if-eqz v1, :cond_2b

    .line 2233
    const/4 v2, -0x3

    const-string v3, "android.media.AudioRecord"

    if-eq v1, v2, :cond_26

    .line 2234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveMicrophones failed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_26
    const-string v2, "getActiveMicrophones failed, fallback on routed device info"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    :cond_2b
    invoke-static {v0}, Landroid/media/AudioManager;->setPortIdForMicrophones(Ljava/util/ArrayList;)V

    .line 2241
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_62

    .line 2242
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 2243
    .local v2, "device":Landroid/media/AudioDeviceInfo;
    if-eqz v2, :cond_62

    .line 2244
    invoke-static {v2}, Landroid/media/AudioManager;->microphoneInfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MicrophoneInfo;

    move-result-object v3

    .line 2245
    .local v3, "microphone":Landroid/media/MicrophoneInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2246
    .local v4, "channelMapping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_44
    iget v6, p0, Landroid/media/AudioRecord;->mChannelCount:I

    if-ge v5, v6, :cond_5c

    .line 2247
    new-instance v6, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2246
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 2249
    .end local v5    # "i":I
    :cond_5c
    invoke-virtual {v3, v4}, Landroid/media/MicrophoneInfo;->setChannelMapping(Ljava/util/List;)V

    .line 2250
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2253
    .end local v2    # "device":Landroid/media/AudioDeviceInfo;
    .end local v3    # "microphone":Landroid/media/MicrophoneInfo;
    .end local v4    # "channelMapping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_62
    return-object v0
.end method

.method public whitelist getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;
    .registers 2

    .line 2292
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0}, Landroid/media/AudioRecordingMonitorImpl;->getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 564
    iget-object v0, p0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getAudioFormat()I
    .registers 2

    .line 1261
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public whitelist getAudioSessionId()I
    .registers 2

    .line 1441
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    return v0
.end method

.method public whitelist getAudioSource()I
    .registers 2

    .line 1253
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public whitelist getBufferSizeInFrames()I
    .registers 2

    .line 1336
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_buffer_size_in_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getChannelConfiguration()I
    .registers 2

    .line 1274
    iget v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    return v0
.end method

.method public whitelist getChannelCount()I
    .registers 2

    .line 1299
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    return v0
.end method

.method public whitelist getFormat()Landroid/media/AudioFormat;
    .registers 3

    .line 1283
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 1284
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 1285
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1286
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    if-eqz v1, :cond_1a

    .line 1287
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 1289
    :cond_1a
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    if-eqz v1, :cond_23

    .line 1290
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 1292
    :cond_23
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 2367
    iget-object v0, p0, Landroid/media/AudioRecord;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 1848
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1849
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method public whitelist getNotificationMarkerPosition()I
    .registers 2

    .line 1343
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public blacklist getPortId()I
    .registers 5

    .line 2302
    iget-wide v0, p0, Landroid/media/AudioRecord;->mNativeAudioRecordHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2303
    return v1

    .line 2306
    :cond_a
    :try_start_a
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_getPortId()I

    move-result v0
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_e} :catch_f

    return v0

    .line 2307
    :catch_f
    move-exception v0

    .line 2308
    .local v0, "e":Ljava/lang/IllegalStateException;
    return v1
.end method

.method public whitelist getPositionNotificationPeriod()I
    .registers 2

    .line 1350
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public whitelist getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .registers 2

    .line 2209
    monitor-enter p0

    .line 2210
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 2211
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getRecordingState()I
    .registers 3

    .line 1320
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1321
    :try_start_3
    iget v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    monitor-exit v0

    return v1

    .line 1322
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .registers 3

    .line 1937
    invoke-direct {p0}, Landroid/media/AudioRecord;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    .line 1938
    .local v0, "audioDeviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1939
    const/4 v1, 0x0

    return-object v1

    .line 1941
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

    .line 1953
    invoke-direct {p0}, Landroid/media/AudioRecord;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSampleRate()I
    .registers 2

    .line 1245
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 1311
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public whitelist getTimestamp(Landroid/media/AudioTimestamp;I)I
    .registers 4
    .param p1, "outTimestamp"    # Landroid/media/AudioTimestamp;
    .param p2, "timebase"    # I

    .line 1374
    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-eq p2, v0, :cond_7

    if-nez p2, :cond_c

    .line 1379
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_get_timestamp(Landroid/media/AudioTimestamp;I)I

    move-result v0

    return v0

    .line 1377
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist isHotwordLookbackStream()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1480
    iget v0, p0, Landroid/media/AudioRecord;->mHalInputFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isHotwordStream()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1465
    iget v0, p0, Landroid/media/AudioRecord;->mHalInputFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/media/AudioRecord;->mHalInputFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isPrivacySensitive()Z
    .registers 2

    .line 1452
    iget-object v0, p0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final native greylist native_release()V
.end method

.method public whitelist read(Ljava/nio/ByteBuffer;I)I
    .registers 4
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I

    .line 1788
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public whitelist read(Ljava/nio/ByteBuffer;II)I
    .registers 7
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "readMode"    # I

    .line 1821
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 1822
    const/4 v0, -0x3

    return v0

    .line 1825
    :cond_7
    const/4 v0, -0x2

    if-eqz p3, :cond_14

    if-eq p3, v1, :cond_14

    .line 1826
    const-string v1, "android.media.AudioRecord"

    const-string v2, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    return v0

    .line 1830
    :cond_14
    if-eqz p1, :cond_22

    if-gez p2, :cond_19

    goto :goto_22

    .line 1834
    :cond_19
    if-nez p3, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-direct {p0, p1, p2, v1}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;IZ)I

    move-result v0

    return v0

    .line 1831
    :cond_22
    :goto_22
    return v0
.end method

.method public whitelist read([BII)I
    .registers 5
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .line 1584
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v0

    return v0
.end method

.method public whitelist read([BIII)I
    .registers 9
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "readMode"    # I

    .line 1617
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_b

    goto :goto_32

    .line 1621
    :cond_b
    const/4 v0, -0x2

    if-eqz p4, :cond_18

    if-eq p4, v1, :cond_18

    .line 1622
    const-string v1, "android.media.AudioRecord"

    const-string v2, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    return v0

    .line 1626
    :cond_18
    if-eqz p1, :cond_31

    if-ltz p2, :cond_31

    if-ltz p3, :cond_31

    add-int v2, p2, p3

    if-ltz v2, :cond_31

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_28

    goto :goto_31

    .line 1632
    :cond_28
    if-nez p4, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioRecord;->native_read_in_byte_array([BIIZ)I

    move-result v0

    return v0

    .line 1629
    :cond_31
    :goto_31
    return v0

    .line 1618
    :cond_32
    :goto_32
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist read([FIII)I
    .registers 9
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "readMode"    # I

    .line 1738
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioRecord"

    if-nez v0, :cond_d

    .line 1739
    const-string v0, "AudioRecord.read() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    return v1

    .line 1743
    :cond_d
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_18

    .line 1744
    const-string v0, "AudioRecord.read(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    return v1

    .line 1748
    :cond_18
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_24

    if-eq p4, v1, :cond_24

    .line 1749
    const-string v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    return v0

    .line 1753
    :cond_24
    if-eqz p1, :cond_3d

    if-ltz p2, :cond_3d

    if-ltz p3, :cond_3d

    add-int v2, p2, p3

    if-ltz v2, :cond_3d

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_34

    goto :goto_3d

    .line 1759
    :cond_34
    if-nez p4, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioRecord;->native_read_in_float_array([FIIZ)I

    move-result v0

    return v0

    .line 1756
    :cond_3d
    :goto_3d
    return v0
.end method

.method public whitelist read([SII)I
    .registers 5
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .line 1658
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([SIII)I

    move-result v0

    return v0
.end method

.method public whitelist read([SIII)I
    .registers 9
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "readMode"    # I

    .line 1689
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_38

    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_11

    goto :goto_38

    .line 1696
    :cond_11
    const/4 v0, -0x2

    if-eqz p4, :cond_1e

    if-eq p4, v1, :cond_1e

    .line 1697
    const-string v1, "android.media.AudioRecord"

    const-string v2, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    return v0

    .line 1701
    :cond_1e
    if-eqz p1, :cond_37

    if-ltz p2, :cond_37

    if-ltz p3, :cond_37

    add-int v2, p2, p3

    if-ltz v2, :cond_37

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2e

    goto :goto_37

    .line 1706
    :cond_2e
    if-nez p4, :cond_31

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioRecord;->native_read_in_short_array([SIIZ)I

    move-result v0

    return v0

    .line 1704
    :cond_37
    :goto_37
    return v0

    .line 1693
    :cond_38
    :goto_38
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 2273
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioRecordingMonitorImpl;->registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 2274
    return-void
.end method

.method public whitelist release()V
    .registers 2

    .line 1214
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1217
    goto :goto_5

    .line 1215
    :catch_4
    move-exception v0

    .line 1218
    :goto_5
    iget-object v0, p0, Landroid/media/AudioRecord;->mAudioCapturePolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-eqz v0, :cond_11

    .line 1219
    iget-object v0, p0, Landroid/media/AudioRecord;->mAudioCapturePolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/AudioManager;->unregisterAudioPolicyAsyncStatic(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 1220
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecord;->mAudioCapturePolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 1222
    :cond_11
    invoke-virtual {p0}, Landroid/media/AudioRecord;->native_release()V

    .line 1223
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 1224
    return-void
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2143
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 2144
    return-void
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 2082
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2083
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2084
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    invoke-direct {p0}, Landroid/media/AudioRecord;->testDisableNativeRoutingCallbacksLocked()V

    .line 2087
    :cond_13
    monitor-exit v0

    .line 2088
    return-void

    .line 2087
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 4
    .param p1, "logSessionId"    # Landroid/media/metrics/LogSessionId;

    .line 2353
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2354
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eqz v0, :cond_11

    .line 2357
    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v0

    .line 2358
    .local v0, "stringId":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_setLogSessionId(Ljava/lang/String;)V

    .line 2359
    iput-object p1, p0, Landroid/media/AudioRecord;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 2360
    return-void

    .line 2355
    .end local v0    # "stringId":Ljava/lang/String;
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioRecord not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNotificationMarkerPosition(I)I
    .registers 3
    .param p1, "markerInFrames"    # I

    .line 1904
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_6

    .line 1905
    const/4 v0, -0x3

    return v0

    .line 1907
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public whitelist setPositionNotificationPeriod(I)I
    .registers 3
    .param p1, "periodInFrames"    # I

    .line 2167
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_6

    .line 2168
    const/4 v0, -0x3

    return v0

    .line 2170
    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public whitelist setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .registers 5
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 2189
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2190
    return v0

    .line 2193
    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 2194
    .local v0, "preferredDeviceId":I
    :cond_10
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_setInputDevice(I)Z

    move-result v1

    .line 2195
    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 2196
    monitor-enter p0

    .line 2197
    :try_start_18
    iput-object p1, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2198
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v2

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    throw v2

    .line 2200
    :cond_1f
    :goto_1f
    return v1
.end method

.method public whitelist setPreferredMicrophoneDirection(I)Z
    .registers 3
    .param p1, "direction"    # I

    .line 2323
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_preferred_microphone_direction(I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist setPreferredMicrophoneFieldDimension(F)Z
    .registers 6
    .param p1, "zoom"    # F

    .line 2336
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    const-string v3, "Argument must fall between -1 & 1 (inclusive)"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2338
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_preferred_microphone_field_dimension(F)I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method

.method public whitelist setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 1863
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 1864
    return-void
.end method

.method public whitelist setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1876
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1878
    :try_start_3
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 1880
    if-eqz p1, :cond_1f

    .line 1881
    if-eqz p2, :cond_15

    .line 1882
    new-instance v1, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_22

    .line 1885
    :cond_15
    new-instance v1, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_22

    .line 1888
    :cond_1f
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 1890
    :goto_22
    monitor-exit v0

    .line 1892
    return-void

    .line 1890
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public whitelist shareAudioHistory(Ljava/lang/String;J)Landroid/media/MediaSyncEvent;
    .registers 7
    .param p1, "sharedPackage"    # Ljava/lang/String;
    .param p2, "startFromMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2004
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_30

    .line 2008
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_shareAudioHistory(Ljava/lang/String;J)I

    move-result v0

    .line 2009
    .local v0, "status":I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_28

    .line 2011
    const/4 v1, -0x4

    if-eq v0, v1, :cond_20

    .line 2014
    nop

    .line 2015
    const/16 v1, 0x64

    invoke-static {v1}, Landroid/media/MediaSyncEvent;->createEvent(I)Landroid/media/MediaSyncEvent;

    move-result-object v1

    .line 2016
    .local v1, "event":Landroid/media/MediaSyncEvent;
    iget v2, p0, Landroid/media/AudioRecord;->mSessionId:I

    invoke-virtual {v1, v2}, Landroid/media/MediaSyncEvent;->setAudioSessionId(I)Landroid/media/MediaSyncEvent;

    .line 2017
    return-object v1

    .line 2012
    .end local v1    # "event":Landroid/media/MediaSyncEvent;
    :cond_20
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "permission CAPTURE_AUDIO_HOTWORD required"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2010
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal sharedAudioHistoryMs argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2006
    .end local v0    # "status":I
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal negative sharedAudioHistoryMs argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startRecording()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1493
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 1499
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1500
    const/4 v2, 0x0

    :try_start_9
    invoke-direct {p0, v2, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v2

    if-nez v2, :cond_15

    .line 1501
    invoke-direct {p0, v1}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 1502
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 1504
    :cond_15
    monitor-exit v0

    .line 1505
    return-void

    .line 1504
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw v1

    .line 1494
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startRecording(Landroid/media/MediaSyncEvent;)V
    .registers 6
    .param p1, "syncEvent"    # Landroid/media/MediaSyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1516
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 1522
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1523
    :try_start_8
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v2

    if-nez v2, :cond_1c

    .line 1524
    invoke-direct {p0, v1}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 1525
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 1527
    :cond_1c
    monitor-exit v0

    .line 1528
    return-void

    .line 1527
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1

    .line 1517
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1536
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 1541
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1542
    const/4 v2, 0x0

    :try_start_9
    invoke-direct {p0, v2}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 1543
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 1544
    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 1545
    monitor-exit v0

    .line 1546
    return-void

    .line 1545
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v1

    .line 1537
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stop() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 2282
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0, p1}, Landroid/media/AudioRecordingMonitorImpl;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 2283
    return-void
.end method
