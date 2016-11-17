.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"

# interfaces
.implements Landroid/media/AudioRouting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$Builder;,
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;,
        Landroid/media/AudioRecord$OnRoutingChangedListener;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final READ_BLOCKING:I = 0x0

.field public static final READ_NON_BLOCKING:I = 0x1

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUBMIX_FIXED_VOLUME:Ljava/lang/String; = "fixedVolume"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "android.media.AudioRecord"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFormat:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private final mICallBack:Landroid/os/IBinder;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mIsSubmixFullVolume:Z

.field private mNativeBufferSizeInBytes:I

.field private mNativeCallbackCookie:J

.field private mNativeDeviceCallback:J

.field private mNativeRecorderInJavaObj:J

.field private mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRecordSource:I

.field private mRecordingState:I

.field private final mRecordingStateLock:Ljava/lang/Object;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I


# direct methods
.method static synthetic -get0(Landroid/media/AudioRecord;)Landroid/os/Looper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3
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

    #@0
    .prologue
    .line 278
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@c
    move-result-object v0

    #@d
    .line 281
    new-instance v1, Landroid/media/AudioFormat$Builder;

    #@f
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@12
    .line 283
    const/4 v2, 0x1

    #@13
    .line 282
    invoke-static {p3, v2}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    #@16
    move-result v2

    #@17
    .line 281
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@26
    move-result-object v1

    #@27
    .line 288
    const/4 v2, 0x0

    #@28
    .line 278
    invoke-direct {p0, v0, v1, p5, v2}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    #@2b
    .line 277
    return-void
.end method

.method constructor <init>(J)V
    .locals 7
    .param p1, "nativeRecordInJavaObj"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 203
    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    #@9
    .line 207
    const/4 v0, 0x1

    #@a
    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    #@c
    .line 211
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    #@13
    .line 218
    iput-object v2, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    #@15
    .line 222
    new-instance v0, Ljava/lang/Object;

    #@17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    #@1c
    .line 226
    iput-object v2, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    #@1e
    .line 230
    iput-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    #@20
    .line 234
    iput v1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    #@22
    .line 238
    iput v1, p0, Landroid/media/AudioRecord;->mSessionId:I

    #@24
    .line 243
    iput-boolean v1, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    #@26
    .line 1030
    new-instance v0, Landroid/os/Binder;

    #@28
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    #@2d
    .line 1421
    new-instance v0, Landroid/util/ArrayMap;

    #@2f
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@32
    iput-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@34
    .line 1600
    iput-object v2, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    #@36
    .line 404
    iput-wide v4, p0, Landroid/media/AudioRecord;->mNativeRecorderInJavaObj:J

    #@38
    .line 405
    iput-wide v4, p0, Landroid/media/AudioRecord;->mNativeCallbackCookie:J

    #@3a
    .line 406
    iput-wide v4, p0, Landroid/media/AudioRecord;->mNativeDeviceCallback:J

    #@3c
    .line 409
    cmp-long v0, p1, v4

    #@3e
    if-eqz v0, :cond_0

    #@40
    .line 410
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->deferred_connect(J)V

    #@43
    .line 403
    :goto_0
    return-void

    #@44
    .line 412
    :cond_0
    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    #@46
    goto :goto_0
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V
    .locals 20
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 203
    const/4 v2, 0x0

    #@4
    move-object/from16 v0, p0

    #@6
    iput v2, v0, Landroid/media/AudioRecord;->mState:I

    #@8
    .line 207
    const/4 v2, 0x1

    #@9
    move-object/from16 v0, p0

    #@b
    iput v2, v0, Landroid/media/AudioRecord;->mRecordingState:I

    #@d
    .line 211
    new-instance v2, Ljava/lang/Object;

    #@f
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@12
    move-object/from16 v0, p0

    #@14
    iput-object v2, v0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    #@16
    .line 218
    const/4 v2, 0x0

    #@17
    move-object/from16 v0, p0

    #@19
    iput-object v2, v0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    #@1b
    .line 222
    new-instance v2, Ljava/lang/Object;

    #@1d
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@20
    move-object/from16 v0, p0

    #@22
    iput-object v2, v0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    #@24
    .line 226
    const/4 v2, 0x0

    #@25
    move-object/from16 v0, p0

    #@27
    iput-object v2, v0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    #@29
    .line 230
    const/4 v2, 0x0

    #@2a
    move-object/from16 v0, p0

    #@2c
    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    #@2e
    .line 234
    const/4 v2, 0x0

    #@2f
    move-object/from16 v0, p0

    #@31
    iput v2, v0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    #@33
    .line 238
    const/4 v2, 0x0

    #@34
    move-object/from16 v0, p0

    #@36
    iput v2, v0, Landroid/media/AudioRecord;->mSessionId:I

    #@38
    .line 243
    const/4 v2, 0x0

    #@39
    move-object/from16 v0, p0

    #@3b
    iput-boolean v2, v0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    #@3d
    .line 1030
    new-instance v2, Landroid/os/Binder;

    #@3f
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@42
    move-object/from16 v0, p0

    #@44
    iput-object v2, v0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    #@46
    .line 1421
    new-instance v2, Landroid/util/ArrayMap;

    #@48
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@4b
    move-object/from16 v0, p0

    #@4d
    iput-object v2, v0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@4f
    .line 1600
    const/4 v2, 0x0

    #@50
    move-object/from16 v0, p0

    #@52
    iput-object v2, v0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    #@54
    .line 314
    const/4 v2, 0x1

    #@55
    move-object/from16 v0, p0

    #@57
    iput v2, v0, Landroid/media/AudioRecord;->mRecordingState:I

    #@59
    .line 316
    if-nez p1, :cond_0

    #@5b
    .line 317
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5d
    const-string/jumbo v3, "Illegal null AudioAttributes"

    #@60
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v2

    #@64
    .line 319
    :cond_0
    if-nez p2, :cond_1

    #@66
    .line 320
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@68
    const-string/jumbo v3, "Illegal null AudioFormat"

    #@6b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v2

    #@6f
    .line 324
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@72
    move-result-object v2

    #@73
    move-object/from16 v0, p0

    #@75
    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    #@77
    if-nez v2, :cond_2

    #@79
    .line 325
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@7c
    move-result-object v2

    #@7d
    move-object/from16 v0, p0

    #@7f
    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    #@81
    .line 329
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@84
    move-result v2

    #@85
    const/16 v3, 0x8

    #@87
    if-ne v2, v3, :cond_9

    #@89
    .line 330
    new-instance v15, Landroid/media/AudioAttributes$Builder;

    #@8b
    invoke-direct {v15}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@8e
    .line 331
    .local v15, "filteredAttr":Landroid/media/AudioAttributes$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    #@91
    move-result-object v2

    #@92
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@95
    move-result-object v19

    #@96
    .line 332
    .local v19, "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@99
    move-result v2

    #@9a
    if-eqz v2, :cond_4

    #@9c
    .line 333
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9f
    move-result-object v18

    #@a0
    check-cast v18, Ljava/lang/String;

    #@a2
    .line 334
    .local v18, "tag":Ljava/lang/String;
    const-string/jumbo v2, "fixedVolume"

    #@a5
    move-object/from16 v0, v18

    #@a7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@aa
    move-result v2

    #@ab
    if-eqz v2, :cond_3

    #@ad
    .line 335
    const/4 v2, 0x1

    #@ae
    move-object/from16 v0, p0

    #@b0
    iput-boolean v2, v0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    #@b2
    .line 336
    const-string/jumbo v2, "android.media.AudioRecord"

    #@b5
    const-string/jumbo v3, "Will record from REMOTE_SUBMIX at full fixed volume"

    #@b8
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    goto :goto_0

    #@bc
    .line 338
    :cond_3
    move-object/from16 v0, v18

    #@be
    invoke-virtual {v15, v0}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    #@c1
    goto :goto_0

    #@c2
    .line 341
    .end local v18    # "tag":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@c5
    move-result v2

    #@c6
    invoke-virtual {v15, v2}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    #@c9
    .line 342
    invoke-virtual {v15}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@cc
    move-result-object v2

    #@cd
    move-object/from16 v0, p0

    #@cf
    iput-object v2, v0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@d1
    .line 347
    .end local v15    # "filteredAttr":Landroid/media/AudioAttributes$Builder;
    .end local v19    # "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    #@d4
    move-result v17

    #@d5
    .line 348
    .local v17, "rate":I
    if-nez v17, :cond_5

    #@d7
    .line 349
    const/16 v17, 0x0

    #@d9
    .line 352
    :cond_5
    const/4 v14, 0x1

    #@da
    .line 353
    .local v14, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@dd
    move-result v2

    #@de
    and-int/lit8 v2, v2, 0x1

    #@e0
    if-eqz v2, :cond_6

    #@e2
    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    #@e5
    move-result v14

    #@e6
    .line 358
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@e9
    move-result v2

    #@ea
    move-object/from16 v0, p0

    #@ec
    move/from16 v1, v17

    #@ee
    invoke-direct {v0, v2, v1, v14}, Landroid/media/AudioRecord;->audioParamCheck(III)V

    #@f1
    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@f4
    move-result v2

    #@f5
    and-int/lit8 v2, v2, 0x8

    #@f7
    if-eqz v2, :cond_7

    #@f9
    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    #@fc
    move-result v2

    #@fd
    move-object/from16 v0, p0

    #@ff
    iput v2, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    #@101
    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    #@104
    move-result v2

    #@105
    move-object/from16 v0, p0

    #@107
    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    #@109
    .line 365
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@10c
    move-result v2

    #@10d
    and-int/lit8 v2, v2, 0x4

    #@10f
    if-eqz v2, :cond_a

    #@111
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    #@114
    move-result v2

    #@115
    const/4 v3, 0x0

    #@116
    invoke-static {v2, v3}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    #@119
    move-result v2

    #@11a
    move-object/from16 v0, p0

    #@11c
    iput v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    #@11e
    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    #@121
    move-result v2

    #@122
    move-object/from16 v0, p0

    #@124
    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    #@126
    .line 374
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    #@128
    move/from16 v1, p3

    #@12a
    invoke-direct {v0, v1}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    #@12d
    .line 376
    const/4 v2, 0x1

    #@12e
    new-array v5, v2, [I

    #@130
    move-object/from16 v0, p0

    #@132
    iget v2, v0, Landroid/media/AudioRecord;->mSampleRate:I

    #@134
    const/4 v3, 0x0

    #@135
    aput v2, v5, v3

    #@137
    .line 377
    .local v5, "sampleRate":[I
    const/4 v2, 0x1

    #@138
    new-array v10, v2, [I

    #@13a
    .line 378
    .local v10, "session":[I
    const/4 v2, 0x0

    #@13b
    aput p4, v10, v2

    #@13d
    .line 381
    new-instance v3, Ljava/lang/ref/WeakReference;

    #@13f
    move-object/from16 v0, p0

    #@141
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@144
    .line 382
    move-object/from16 v0, p0

    #@146
    iget-object v4, v0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@148
    move-object/from16 v0, p0

    #@14a
    iget v6, v0, Landroid/media/AudioRecord;->mChannelMask:I

    #@14c
    move-object/from16 v0, p0

    #@14e
    iget v7, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    #@150
    .line 383
    move-object/from16 v0, p0

    #@152
    iget v8, v0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@154
    move-object/from16 v0, p0

    #@156
    iget v9, v0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    #@158
    .line 384
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    #@15b
    move-result-object v11

    #@15c
    const-wide/16 v12, 0x0

    #@15e
    move-object/from16 v2, p0

    #@160
    .line 381
    invoke-direct/range {v2 .. v13}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILjava/lang/String;J)I

    #@163
    move-result v16

    #@164
    .line 385
    .local v16, "initResult":I
    if-eqz v16, :cond_b

    #@166
    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    #@168
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16b
    const-string/jumbo v3, "Error code "

    #@16e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v2

    #@172
    move/from16 v0, v16

    #@174
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@177
    move-result-object v2

    #@178
    const-string/jumbo v3, " when initializing native AudioRecord object."

    #@17b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v2

    #@17f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@182
    move-result-object v2

    #@183
    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    #@186
    .line 387
    return-void

    #@187
    .line 344
    .end local v5    # "sampleRate":[I
    .end local v10    # "session":[I
    .end local v14    # "encoding":I
    .end local v16    # "initResult":I
    .end local v17    # "rate":I
    :cond_9
    move-object/from16 v0, p1

    #@189
    move-object/from16 v1, p0

    #@18b
    iput-object v0, v1, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@18d
    goto/16 :goto_1

    #@18f
    .line 369
    .restart local v14    # "encoding":I
    .restart local v17    # "rate":I
    :cond_a
    move-object/from16 v0, p0

    #@191
    iget v2, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    #@193
    if-nez v2, :cond_8

    #@195
    .line 370
    const/4 v2, 0x1

    #@196
    const/4 v3, 0x0

    #@197
    invoke-static {v2, v3}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    #@19a
    move-result v2

    #@19b
    move-object/from16 v0, p0

    #@19d
    iput v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    #@19f
    .line 371
    move-object/from16 v0, p0

    #@1a1
    iget v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    #@1a3
    invoke-static {v2}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    #@1a6
    move-result v2

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    #@1ab
    goto/16 :goto_2

    #@1ad
    .line 390
    .restart local v5    # "sampleRate":[I
    .restart local v10    # "session":[I
    .restart local v16    # "initResult":I
    :cond_b
    const/4 v2, 0x0

    #@1ae
    aget v2, v5, v2

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iput v2, v0, Landroid/media/AudioRecord;->mSampleRate:I

    #@1b4
    .line 391
    const/4 v2, 0x0

    #@1b5
    aget v2, v10, v2

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    iput v2, v0, Landroid/media/AudioRecord;->mSessionId:I

    #@1bb
    .line 393
    const/4 v2, 0x1

    #@1bc
    move-object/from16 v0, p0

    #@1be
    iput v2, v0, Landroid/media/AudioRecord;->mState:I

    #@1c0
    .line 313
    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 722
    iget v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    #@2
    .line 723
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@4
    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    #@7
    move-result v2

    #@8
    .line 722
    mul-int v0, v1, v2

    #@a
    .line 724
    .local v0, "frameSizeInBytes":I
    rem-int v1, p1, v0

    #@c
    if-nez v1, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    if-ge p1, v1, :cond_1

    #@11
    .line 725
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "Invalid audio buffer size."

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 728
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    #@1c
    .line 719
    return-void
.end method

.method private audioParamCheck(III)V
    .locals 3
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 676
    if-ltz p1, :cond_0

    #@2
    .line 677
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    #@5
    move-result v0

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 678
    const/16 v0, 0x7ce

    #@a
    if-eq p1, v0, :cond_1

    #@c
    .line 679
    const/16 v0, 0x7cf

    #@e
    if-eq p1, v0, :cond_1

    #@10
    .line 680
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "Invalid audio source."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 682
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    #@1b
    .line 686
    const/16 v0, 0xfa0

    #@1d
    if-lt p2, v0, :cond_2

    #@1f
    .line 687
    const v0, 0x2ee00

    #@22
    if-le p2, v0, :cond_3

    #@24
    .line 688
    :cond_2
    if-eqz p2, :cond_3

    #@26
    .line 689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 690
    const-string/jumbo v2, "Hz is not a supported sample rate."

    #@34
    .line 689
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 692
    :cond_3
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    #@42
    .line 696
    packed-switch p3, :pswitch_data_0

    #@45
    .line 706
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@47
    const-string/jumbo v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT, ENCODING_PCM_16BIT, or ENCODING_PCM_FLOAT."

    #@4a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0

    #@4e
    .line 698
    :pswitch_0
    const/4 v0, 0x2

    #@4f
    iput v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@51
    .line 672
    :goto_0
    return-void

    #@52
    .line 703
    :pswitch_1
    iput p3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@54
    goto :goto_0

    #@55
    .line 696
    nop

    #@56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private broadcastRoutingChange()V
    .locals 5

    #@0
    .prologue
    .line 1571
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    #@3
    .line 1572
    iget-object v4, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@5
    monitor-enter v4

    #@6
    .line 1573
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "delegate$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    #@1c
    .line 1574
    .local v0, "delegate":Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    invoke-virtual {v0}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    #@1f
    move-result-object v2

    #@20
    .line 1575
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    #@22
    .line 1576
    const/16 v3, 0x3e8

    #@24
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 1572
    .end local v0    # "delegate":Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    .end local v1    # "delegate$iterator":Ljava/util/Iterator;
    .end local v2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    #@29
    monitor-exit v4

    #@2a
    throw v3

    #@2b
    .restart local v1    # "delegate$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    #@2c
    .line 1570
    return-void
.end method

.method private static getChannelMaskFromLegacyConfig(IZ)I
    .locals 3
    .param p0, "inChannelConfig"    # I
    .param p1, "allowLegacyConfig"    # Z

    #@0
    .prologue
    .line 641
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 655
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "Unsupported channel configuration."

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 645
    :sswitch_0
    const/16 v0, 0x10

    #@e
    .line 658
    .local v0, "mask":I
    :goto_0
    if-nez p1, :cond_1

    #@10
    const/4 v1, 0x2

    #@11
    if-eq p0, v1, :cond_0

    #@13
    .line 659
    const/4 v1, 0x3

    #@14
    if-ne p0, v1, :cond_1

    #@16
    .line 661
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v2, "Unsupported deprecated configuration."

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 649
    .end local v0    # "mask":I
    :sswitch_1
    const/16 v0, 0xc

    #@21
    .line 650
    .restart local v0    # "mask":I
    goto :goto_0

    #@22
    .line 652
    .end local v0    # "mask":I
    :sswitch_2
    move v0, p0

    #@23
    .line 653
    .restart local v0    # "mask":I
    goto :goto_0

    #@24
    .line 664
    :cond_1
    return v0

    #@25
    .line 641
    nop

    #@26
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getMinBufferSize(III)I
    .locals 4
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v3, -0x2

    #@2
    .line 927
    const/4 v0, 0x0

    #@3
    .line 928
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 941
    const-string/jumbo v2, "getMinBufferSize(): Invalid channel configuration."

    #@9
    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    #@c
    .line 942
    return v3

    #@d
    .line 932
    :sswitch_0
    const/4 v0, 0x1

    #@e
    .line 945
    :goto_0
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    #@11
    move-result v1

    #@12
    .line 946
    .local v1, "size":I
    if-nez v1, :cond_0

    #@14
    .line 947
    return v3

    #@15
    .line 937
    .end local v1    # "size":I
    :sswitch_1
    const/4 v0, 0x2

    #@16
    .line 938
    goto :goto_0

    #@17
    .line 949
    .restart local v1    # "size":I
    :cond_0
    if-ne v1, v2, :cond_1

    #@19
    .line 950
    return v2

    #@1a
    .line 953
    :cond_1
    return v1

    #@1b
    .line 928
    nop

    #@1c
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleFullVolumeRec(Z)V
    .locals 5
    .param p1, "starting"    # Z

    #@0
    .prologue
    .line 1032
    iget-boolean v3, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    #@2
    if-nez v3, :cond_0

    #@4
    .line 1033
    return-void

    #@5
    .line 1035
    :cond_0
    const-string/jumbo v3, "audio"

    #@8
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    .line 1036
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@f
    move-result-object v2

    #@10
    .line 1038
    .local v2, "ias":Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    #@12
    invoke-interface {v2, p1, v3}, Landroid/media/IAudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1031
    :goto_0
    return-void

    #@16
    .line 1039
    :catch_0
    move-exception v1

    #@17
    .line 1040
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "android.media.AudioRecord"

    #@1a
    const-string/jumbo v4, "Error talking to AudioService when handling full submix volume"

    #@1d
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1788
    const-string/jumbo v0, "android.media.AudioRecord"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1787
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1792
    const-string/jumbo v0, "android.media.AudioRecord"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1791
    return-void
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private final native native_get_buffer_size_in_frames()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_timestamp(Landroid/media/AudioTimestamp;I)I
.end method

.method private final native native_read_in_byte_array([BIIZ)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;IZ)I
.end method

.method private final native native_read_in_float_array([FIIZ)I
.end method

.method private final native native_read_in_short_array([SIIZ)I
.end method

.method private final native native_setInputDevice(I)Z
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILjava/lang/String;J)I
.end method

.method private final native native_start(II)I
.end method

.method private final native native_stop()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "audiorecord_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1711
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "audiorecord_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/media/AudioRecord;

    #@8
    .line 1712
    .local v1, "recorder":Landroid/media/AudioRecord;
    if-nez v1, :cond_0

    #@a
    .line 1713
    return-void

    #@b
    .line 1716
    :cond_0
    const/16 v2, 0x3e8

    #@d
    if-ne p1, v2, :cond_1

    #@f
    .line 1717
    invoke-direct {v1}, Landroid/media/AudioRecord;->broadcastRoutingChange()V

    #@12
    .line 1718
    return-void

    #@13
    .line 1721
    :cond_1
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 1723
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    #@19
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v0

    #@1d
    .line 1724
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    #@1f
    invoke-virtual {v2, v0}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    #@22
    .line 1709
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private testDisableNativeRoutingCallbacksLocked()V
    .locals 1

    #@0
    .prologue
    .line 1406
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1407
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_disableDeviceCallback()V

    #@b
    .line 1405
    :cond_0
    return-void
.end method

.method private testEnableNativeRoutingCallbacksLocked()V
    .locals 1

    #@0
    .prologue
    .line 1397
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1398
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_enableDeviceCallback()V

    #@b
    .line 1396
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1502
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    #@3
    .line 1501
    return-void
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1435
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@2
    monitor-enter v1

    #@3
    .line 1436
    if-eqz p1, :cond_0

    #@5
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .end local p2    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    monitor-exit v1

    #@e
    .line 1434
    return-void

    #@f
    .line 1437
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioRecord;->testEnableNativeRoutingCallbacksLocked()V

    #@12
    .line 1438
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@14
    .line 1439
    new-instance v2, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    #@16
    .line 1440
    if-eqz p2, :cond_2

    #@18
    .line 1439
    .end local p2    # "handler":Landroid/os/Handler;
    :goto_1
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    #@1b
    .line 1438
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .line 1435
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0

    #@22
    .line 1440
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_2
    :try_start_2
    new-instance p2, Landroid/os/Handler;

    #@24
    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    #@26
    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    goto :goto_1
.end method

.method deferred_connect(J)V
    .locals 13
    .param p1, "nativeRecordInJavaObj"    # J

    #@0
    .prologue
    .line 420
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_1

    #@5
    .line 421
    const/4 v0, 0x1

    #@6
    new-array v8, v0, [I

    #@8
    const/4 v0, 0x0

    #@9
    const/4 v1, 0x0

    #@a
    aput v0, v8, v1

    #@c
    .line 422
    .local v8, "session":[I
    const/4 v0, 0x1

    #@d
    new-array v3, v0, [I

    #@f
    const/4 v0, 0x0

    #@10
    const/4 v1, 0x0

    #@11
    aput v0, v3, v1

    #@13
    .line 427
    .local v3, "rates":[I
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@15
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@18
    .line 435
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    .line 428
    const/4 v2, 0x0

    #@1d
    .line 430
    const/4 v4, 0x0

    #@1e
    .line 431
    const/4 v5, 0x0

    #@1f
    .line 432
    const/4 v6, 0x0

    #@20
    .line 433
    const/4 v7, 0x0

    #@21
    move-object v0, p0

    #@22
    move-wide v10, p1

    #@23
    .line 427
    invoke-direct/range {v0 .. v11}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILjava/lang/String;J)I

    #@26
    move-result v12

    #@27
    .line 437
    .local v12, "initResult":I
    if-eqz v12, :cond_0

    #@29
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v1, "Error code "

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    const-string/jumbo v1, " when initializing native AudioRecord object."

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-static {v0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    #@47
    .line 439
    return-void

    #@48
    .line 442
    :cond_0
    const/4 v0, 0x0

    #@49
    aget v0, v8, v0

    #@4b
    iput v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    #@4d
    .line 444
    const/4 v0, 0x1

    #@4e
    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    #@50
    .line 419
    .end local v3    # "rates":[I
    .end local v8    # "session":[I
    .end local v12    # "initResult":I
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 752
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    #@3
    .line 750
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    #@0
    .prologue
    .line 783
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@2
    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    #@0
    .prologue
    .line 963
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    #@2
    return v0
.end method

.method public getAudioSource()I
    .locals 1

    #@0
    .prologue
    .line 775
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    #@2
    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    #@0
    .prologue
    .line 858
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_buffer_size_in_frames()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    #@0
    .prologue
    .line 796
    iget v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    #@2
    return v0
.end method

.method public getChannelCount()I
    .locals 1

    #@0
    .prologue
    .line 821
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    #@2
    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 3

    #@0
    .prologue
    .line 805
    new-instance v1, Landroid/media/AudioFormat$Builder;

    #@2
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@5
    .line 806
    iget v2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    #@7
    .line 805
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@a
    move-result-object v1

    #@b
    .line 807
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@d
    .line 805
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@10
    move-result-object v0

    #@11
    .line 808
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 809
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    #@17
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@1a
    .line 811
    :cond_0
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 812
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    #@20
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    #@23
    .line 814
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@26
    move-result-object v1

    #@27
    return-object v1
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    #@0
    .prologue
    .line 865
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    #@0
    .prologue
    .line 872
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    #@0
    .prologue
    .line 1633
    monitor-enter p0

    #@1
    .line 1634
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 1633
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getRecordingState()I
    .locals 2

    #@0
    .prologue
    .line 842
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 843
    :try_start_0
    iget v1, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 842
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1379
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_getRoutedDeviceId()I

    #@4
    move-result v0

    #@5
    .line 1380
    .local v0, "deviceId":I
    if-nez v0, :cond_0

    #@7
    .line 1381
    return-object v4

    #@8
    .line 1384
    :cond_0
    const/4 v3, 0x1

    #@9
    invoke-static {v3}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    #@c
    move-result-object v1

    #@d
    .line 1385
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    #@f
    if-ge v2, v3, :cond_2

    #@11
    .line 1386
    aget-object v3, v1, v2

    #@13
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    #@16
    move-result v3

    #@17
    if-ne v3, v0, :cond_1

    #@19
    .line 1387
    aget-object v3, v1, v2

    #@1b
    return-object v3

    #@1c
    .line 1385
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1390
    :cond_2
    return-object v4
.end method

.method public getSampleRate()I
    .locals 1

    #@0
    .prologue
    .line 767
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    #@2
    return v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 833
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    #@2
    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;I)I
    .locals 1
    .param p1, "outTimestamp"    # Landroid/media/AudioTimestamp;
    .param p2, "timebase"    # I

    #@0
    .prologue
    .line 896
    if-eqz p1, :cond_0

    #@2
    .line 897
    const/4 v0, 0x1

    #@3
    if-eq p2, v0, :cond_1

    #@5
    .line 898
    if-eqz p2, :cond_1

    #@7
    .line 899
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v0

    #@d
    .line 901
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_get_timestamp(Landroid/media/AudioTimestamp;I)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public final native native_release()V
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I

    #@0
    .prologue
    .line 1267
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;II)I
    .locals 4
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "readMode"    # I

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    const/4 v0, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 1300
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    #@5
    if-eq v2, v0, :cond_0

    #@7
    .line 1301
    const/4 v0, -0x3

    #@8
    return v0

    #@9
    .line 1304
    :cond_0
    if-eqz p3, :cond_1

    #@b
    if-eq p3, v0, :cond_1

    #@d
    .line 1305
    const-string/jumbo v0, "android.media.AudioRecord"

    #@10
    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    #@13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 1306
    return v3

    #@17
    .line 1309
    :cond_1
    if-eqz p1, :cond_2

    #@19
    if-gez p2, :cond_3

    #@1b
    .line 1310
    :cond_2
    return v3

    #@1c
    .line 1313
    :cond_3
    if-nez p3, :cond_4

    #@1e
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;IZ)I

    #@21
    move-result v0

    #@22
    return v0

    #@23
    :cond_4
    move v0, v1

    #@24
    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    #@0
    .prologue
    .line 1066
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([BIII)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public read([BIII)I
    .locals 5
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "readMode"    # I

    #@0
    .prologue
    const/4 v4, -0x2

    #@1
    const/4 v0, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 1098
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    #@5
    if-ne v2, v0, :cond_0

    #@7
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@9
    const/4 v3, 0x4

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 1099
    :cond_0
    const/4 v0, -0x3

    #@d
    return v0

    #@e
    .line 1102
    :cond_1
    if-eqz p4, :cond_2

    #@10
    if-eq p4, v0, :cond_2

    #@12
    .line 1103
    const-string/jumbo v0, "android.media.AudioRecord"

    #@15
    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1104
    return v4

    #@1c
    .line 1107
    :cond_2
    if-eqz p1, :cond_3

    #@1e
    if-gez p2, :cond_4

    #@20
    .line 1110
    :cond_3
    return v4

    #@21
    .line 1107
    :cond_4
    if-ltz p3, :cond_3

    #@23
    .line 1108
    add-int v2, p2, p3

    #@25
    if-ltz v2, :cond_3

    #@27
    .line 1109
    add-int v2, p2, p3

    #@29
    array-length v3, p1

    #@2a
    if-gt v2, v3, :cond_3

    #@2c
    .line 1114
    if-nez p4, :cond_5

    #@2e
    .line 1113
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_byte_array([BIIZ)I

    #@31
    move-result v0

    #@32
    return v0

    #@33
    :cond_5
    move v0, v1

    #@34
    .line 1114
    goto :goto_0
.end method

.method public read([FIII)I
    .locals 6
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "readMode"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v5, -0x2

    #@2
    const/4 v4, -0x3

    #@3
    const/4 v1, 0x0

    #@4
    .line 1217
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1218
    const-string/jumbo v0, "android.media.AudioRecord"

    #@b
    const-string/jumbo v1, "AudioRecord.read() called in invalid state STATE_UNINITIALIZED"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1219
    return v4

    #@12
    .line 1222
    :cond_0
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@14
    const/4 v3, 0x4

    #@15
    if-eq v2, v3, :cond_1

    #@17
    .line 1223
    const-string/jumbo v0, "android.media.AudioRecord"

    #@1a
    const-string/jumbo v1, "AudioRecord.read(float[] ...) requires format ENCODING_PCM_FLOAT"

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1224
    return v4

    #@21
    .line 1227
    :cond_1
    if-eqz p4, :cond_2

    #@23
    if-eq p4, v0, :cond_2

    #@25
    .line 1228
    const-string/jumbo v0, "android.media.AudioRecord"

    #@28
    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    #@2b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 1229
    return v5

    #@2f
    .line 1232
    :cond_2
    if-eqz p1, :cond_3

    #@31
    if-gez p2, :cond_4

    #@33
    .line 1235
    :cond_3
    return v5

    #@34
    .line 1232
    :cond_4
    if-ltz p3, :cond_3

    #@36
    .line 1233
    add-int v2, p2, p3

    #@38
    if-ltz v2, :cond_3

    #@3a
    .line 1234
    add-int v2, p2, p3

    #@3c
    array-length v3, p1

    #@3d
    if-gt v2, v3, :cond_3

    #@3f
    .line 1239
    if-nez p4, :cond_5

    #@41
    .line 1238
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_float_array([FIIZ)I

    #@44
    move-result v0

    #@45
    return v0

    #@46
    :cond_5
    move v0, v1

    #@47
    .line 1239
    goto :goto_0
.end method

.method public read([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    #@0
    .prologue
    .line 1139
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([SIII)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public read([SIII)I
    .locals 5
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "readMode"    # I

    #@0
    .prologue
    const/4 v4, -0x2

    #@1
    const/4 v0, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 1170
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    #@5
    if-ne v2, v0, :cond_0

    #@7
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@9
    const/4 v3, 0x4

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 1171
    :cond_0
    const/4 v0, -0x3

    #@d
    return v0

    #@e
    .line 1174
    :cond_1
    if-eqz p4, :cond_2

    #@10
    if-eq p4, v0, :cond_2

    #@12
    .line 1175
    const-string/jumbo v0, "android.media.AudioRecord"

    #@15
    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1176
    return v4

    #@1c
    .line 1179
    :cond_2
    if-eqz p1, :cond_3

    #@1e
    if-gez p2, :cond_4

    #@20
    .line 1182
    :cond_3
    return v4

    #@21
    .line 1179
    :cond_4
    if-ltz p3, :cond_3

    #@23
    .line 1180
    add-int v2, p2, p3

    #@25
    if-ltz v2, :cond_3

    #@27
    .line 1181
    add-int v2, p2, p3

    #@29
    array-length v3, p1

    #@2a
    if-gt v2, v3, :cond_3

    #@2c
    .line 1186
    if-nez p4, :cond_5

    #@2e
    .line 1185
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_short_array([SIIZ)I

    #@31
    move-result v0

    #@32
    return v0

    #@33
    :cond_5
    move v0, v1

    #@34
    .line 1186
    goto :goto_0
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 740
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 744
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->native_release()V

    #@6
    .line 745
    const/4 v1, 0x0

    #@7
    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    #@9
    .line 738
    return-void

    #@a
    .line 741
    :catch_0
    move-exception v0

    #@b
    .local v0, "ise":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1514
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    #@3
    .line 1513
    return-void
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    #@0
    .prologue
    .line 1453
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@2
    monitor-enter v1

    #@3
    .line 1454
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1455
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 1456
    invoke-direct {p0}, Landroid/media/AudioRecord;->testDisableNativeRoutingCallbacksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 1452
    return-void

    #@15
    .line 1453
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    #@0
    .prologue
    .line 1366
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1367
    const/4 v0, -0x3

    #@5
    return v0

    #@6
    .line 1369
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    #@0
    .prologue
    .line 1591
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1592
    const/4 v0, -0x3

    #@5
    return v0

    #@6
    .line 1594
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1613
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_3

    #@9
    .line 1617
    :cond_0
    if-eqz p1, :cond_1

    #@b
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    #@e
    move-result v0

    #@f
    .line 1618
    .local v0, "preferredDeviceId":I
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_setInputDevice(I)Z

    #@12
    move-result v1

    #@13
    .line 1619
    .local v1, "status":Z
    if-eqz v1, :cond_2

    #@15
    .line 1620
    monitor-enter p0

    #@16
    .line 1621
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 1624
    :cond_2
    return v1

    #@1a
    .line 1614
    .end local v0    # "preferredDeviceId":I
    .end local v1    # "status":Z
    :cond_3
    return v0

    #@1b
    .line 1620
    .restart local v0    # "preferredDeviceId":I
    .restart local v1    # "status":Z
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit p0

    #@1d
    throw v2
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    #@0
    .prologue
    .line 1325
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    #@4
    .line 1324
    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1338
    iget-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1340
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    #@5
    .line 1342
    if-eqz p1, :cond_1

    #@7
    .line 1343
    if-eqz p2, :cond_0

    #@9
    .line 1344
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    #@b
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    #@12
    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :goto_0
    monitor-exit v1

    #@15
    .line 1337
    return-void

    #@16
    .line 1347
    :cond_0
    :try_start_1
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    #@18
    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    #@1a
    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    #@1d
    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 1338
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0

    #@23
    .line 1350
    :cond_1
    const/4 v0, 0x0

    #@24
    :try_start_2
    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    goto :goto_0
.end method

.method public startRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 975
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 976
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 981
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 982
    const/4 v0, 0x0

    #@12
    const/4 v2, 0x0

    #@13
    :try_start_0
    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 983
    const/4 v0, 0x1

    #@1a
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    #@1d
    .line 984
    const/4 v0, 0x3

    #@1e
    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_1
    monitor-exit v1

    #@21
    .line 974
    return-void

    #@22
    .line 981
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method public startRecording(Landroid/media/MediaSyncEvent;)V
    .locals 3
    .param p1, "syncEvent"    # Landroid/media/MediaSyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 998
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 999
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1004
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 1005
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    #@14
    move-result v0

    #@15
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    #@18
    move-result v2

    #@19
    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_1

    #@1f
    .line 1006
    const/4 v0, 0x1

    #@20
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    #@23
    .line 1007
    const/4 v0, 0x3

    #@24
    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :cond_1
    monitor-exit v1

    #@27
    .line 997
    return-void

    #@28
    .line 1004
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1018
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1019
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "stop() called on an uninitialized AudioRecord."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1023
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 1024
    const/4 v0, 0x0

    #@12
    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    #@15
    .line 1025
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    #@18
    .line 1026
    const/4 v0, 0x1

    #@19
    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 1017
    return-void

    #@1d
    .line 1023
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method
