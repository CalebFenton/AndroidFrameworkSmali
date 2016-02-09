.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$Builder;,
        Landroid/media/AudioRecord$OnRoutingChangedListener;,
        Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;,
        Landroid/media/AudioRecord$NativeEventHandler;
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

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final READ_BLOCKING:I = 0x0

.field public static final READ_NON_BLOCKING:I = 0x1

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field private static final SAMPLE_RATE_HZ_MAX:I = 0x2ee00

.field private static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioRecord$OnRoutingChangedListener;",
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
    .line 271
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
    .line 274
    new-instance v1, Landroid/media/AudioFormat$Builder;

    #@f
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@12
    .line 276
    const/4 v2, 0x1

    #@13
    .line 275
    invoke-static {p3, v2}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    #@16
    move-result v2

    #@17
    .line 274
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
    .line 281
    const/4 v2, 0x0

    #@28
    .line 271
    invoke-direct {p0, v0, v1, p5, v2}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    #@2b
    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V
    .locals 18
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
    .line 305
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 199
    const/4 v2, 0x0

    #@4
    move-object/from16 v0, p0

    #@6
    iput v2, v0, Landroid/media/AudioRecord;->mState:I

    #@8
    .line 203
    const/4 v2, 0x1

    #@9
    move-object/from16 v0, p0

    #@b
    iput v2, v0, Landroid/media/AudioRecord;->mRecordingState:I

    #@d
    .line 207
    new-instance v2, Ljava/lang/Object;

    #@f
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@12
    move-object/from16 v0, p0

    #@14
    iput-object v2, v0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    #@16
    .line 214
    const/4 v2, 0x0

    #@17
    move-object/from16 v0, p0

    #@19
    iput-object v2, v0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    #@1b
    .line 218
    new-instance v2, Ljava/lang/Object;

    #@1d
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@20
    move-object/from16 v0, p0

    #@22
    iput-object v2, v0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    #@24
    .line 222
    const/4 v2, 0x0

    #@25
    move-object/from16 v0, p0

    #@27
    iput-object v2, v0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    #@29
    .line 226
    const/4 v2, 0x0

    #@2a
    move-object/from16 v0, p0

    #@2c
    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    #@2e
    .line 230
    const/4 v2, 0x0

    #@2f
    move-object/from16 v0, p0

    #@31
    iput v2, v0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    #@33
    .line 234
    const/4 v2, 0x0

    #@34
    move-object/from16 v0, p0

    #@36
    iput v2, v0, Landroid/media/AudioRecord;->mSessionId:I

    #@38
    .line 239
    const/4 v2, 0x0

    #@39
    move-object/from16 v0, p0

    #@3b
    iput-boolean v2, v0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    #@3d
    .line 939
    new-instance v2, Landroid/os/Binder;

    #@3f
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@42
    move-object/from16 v0, p0

    #@44
    iput-object v2, v0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    #@46
    .line 1268
    new-instance v2, Landroid/util/ArrayMap;

    #@48
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@4b
    .line 1267
    move-object/from16 v0, p0

    #@4d
    iput-object v2, v0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@4f
    .line 1393
    const/4 v2, 0x0

    #@50
    move-object/from16 v0, p0

    #@52
    iput-object v2, v0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    #@54
    .line 307
    const/4 v2, 0x1

    #@55
    move-object/from16 v0, p0

    #@57
    iput v2, v0, Landroid/media/AudioRecord;->mRecordingState:I

    #@59
    .line 309
    if-nez p1, :cond_0

    #@5b
    .line 310
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5d
    const-string/jumbo v3, "Illegal null AudioAttributes"

    #@60
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v2

    #@64
    .line 312
    :cond_0
    if-nez p2, :cond_1

    #@66
    .line 313
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@68
    const-string/jumbo v3, "Illegal null AudioFormat"

    #@6b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v2

    #@6f
    .line 317
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
    .line 318
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@7c
    move-result-object v2

    #@7d
    move-object/from16 v0, p0

    #@7f
    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    #@81
    .line 322
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@84
    move-result v2

    #@85
    const/16 v3, 0x8

    #@87
    if-ne v2, v3, :cond_9

    #@89
    .line 323
    new-instance v13, Landroid/media/AudioAttributes$Builder;

    #@8b
    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@8e
    .line 324
    .local v13, "filteredAttr":Landroid/media/AudioAttributes$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    #@91
    move-result-object v2

    #@92
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@95
    move-result-object v17

    #@96
    .line 325
    .local v17, "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@99
    move-result v2

    #@9a
    if-eqz v2, :cond_4

    #@9c
    .line 326
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9f
    move-result-object v16

    #@a0
    check-cast v16, Ljava/lang/String;

    #@a2
    .line 327
    .local v16, "tag":Ljava/lang/String;
    const-string/jumbo v2, "fixedVolume"

    #@a5
    move-object/from16 v0, v16

    #@a7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@aa
    move-result v2

    #@ab
    if-eqz v2, :cond_3

    #@ad
    .line 328
    const/4 v2, 0x1

    #@ae
    move-object/from16 v0, p0

    #@b0
    iput-boolean v2, v0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    #@b2
    .line 329
    const-string/jumbo v2, "android.media.AudioRecord"

    #@b5
    const-string/jumbo v3, "Will record from REMOTE_SUBMIX at full fixed volume"

    #@b8
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    goto :goto_0

    #@bc
    .line 331
    :cond_3
    move-object/from16 v0, v16

    #@be
    invoke-virtual {v13, v0}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    #@c1
    goto :goto_0

    #@c2
    .line 334
    .end local v16    # "tag":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@c5
    move-result v2

    #@c6
    invoke-virtual {v13, v2}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    #@c9
    .line 335
    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@cc
    move-result-object v2

    #@cd
    move-object/from16 v0, p0

    #@cf
    iput-object v2, v0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@d1
    .line 340
    .end local v13    # "filteredAttr":Landroid/media/AudioAttributes$Builder;
    .end local v17    # "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    const/4 v15, 0x0

    #@d2
    .line 341
    .local v15, "rate":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@d5
    move-result v2

    #@d6
    and-int/lit8 v2, v2, 0x2

    #@d8
    if-eqz v2, :cond_a

    #@da
    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    #@dd
    move-result v15

    #@de
    .line 352
    :cond_5
    :goto_2
    const/4 v12, 0x1

    #@df
    .line 353
    .local v12, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@e2
    move-result v2

    #@e3
    and-int/lit8 v2, v2, 0x1

    #@e5
    if-eqz v2, :cond_6

    #@e7
    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    #@ea
    move-result v12

    #@eb
    .line 358
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@ee
    move-result v2

    #@ef
    move-object/from16 v0, p0

    #@f1
    invoke-direct {v0, v2, v15, v12}, Landroid/media/AudioRecord;->audioParamCheck(III)V

    #@f4
    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@f7
    move-result v2

    #@f8
    and-int/lit8 v2, v2, 0x8

    #@fa
    if-eqz v2, :cond_7

    #@fc
    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    #@ff
    move-result v2

    #@100
    move-object/from16 v0, p0

    #@102
    iput v2, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    #@104
    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    #@107
    move-result v2

    #@108
    move-object/from16 v0, p0

    #@10a
    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    #@10c
    .line 365
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@10f
    move-result v2

    #@110
    and-int/lit8 v2, v2, 0x4

    #@112
    if-eqz v2, :cond_b

    #@114
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    #@117
    move-result v2

    #@118
    const/4 v3, 0x0

    #@119
    invoke-static {v2, v3}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    #@11c
    move-result v2

    #@11d
    move-object/from16 v0, p0

    #@11f
    iput v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    #@121
    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    #@124
    move-result v2

    #@125
    move-object/from16 v0, p0

    #@127
    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    #@129
    .line 374
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    #@12b
    move/from16 v1, p3

    #@12d
    invoke-direct {v0, v1}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    #@130
    .line 376
    const/4 v2, 0x1

    #@131
    new-array v10, v2, [I

    #@133
    .line 377
    .local v10, "session":[I
    const/4 v2, 0x0

    #@134
    aput p4, v10, v2

    #@136
    .line 380
    new-instance v3, Ljava/lang/ref/WeakReference;

    #@138
    move-object/from16 v0, p0

    #@13a
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@13d
    .line 381
    move-object/from16 v0, p0

    #@13f
    iget-object v4, v0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@141
    move-object/from16 v0, p0

    #@143
    iget v5, v0, Landroid/media/AudioRecord;->mSampleRate:I

    #@145
    move-object/from16 v0, p0

    #@147
    iget v6, v0, Landroid/media/AudioRecord;->mChannelMask:I

    #@149
    move-object/from16 v0, p0

    #@14b
    iget v7, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    #@14d
    .line 382
    move-object/from16 v0, p0

    #@14f
    iget v8, v0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@151
    move-object/from16 v0, p0

    #@153
    iget v9, v0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    #@155
    .line 383
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    #@158
    move-result-object v11

    #@159
    move-object/from16 v2, p0

    #@15b
    .line 380
    invoke-direct/range {v2 .. v11}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIII[ILjava/lang/String;)I

    #@15e
    move-result v14

    #@15f
    .line 384
    .local v14, "initResult":I
    if-eqz v14, :cond_c

    #@161
    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    #@163
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@166
    const-string/jumbo v3, "Error code "

    #@169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v2

    #@16d
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@170
    move-result-object v2

    #@171
    const-string/jumbo v3, " when initializing native AudioRecord object."

    #@174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v2

    #@178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17b
    move-result-object v2

    #@17c
    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    #@17f
    .line 386
    return-void

    #@180
    .line 337
    .end local v10    # "session":[I
    .end local v12    # "encoding":I
    .end local v14    # "initResult":I
    .end local v15    # "rate":I
    :cond_9
    move-object/from16 v0, p1

    #@182
    move-object/from16 v1, p0

    #@184
    iput-object v0, v1, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@186
    goto/16 :goto_1

    #@188
    .line 346
    .restart local v15    # "rate":I
    :cond_a
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    #@18b
    move-result v15

    #@18c
    .line 347
    if-gtz v15, :cond_5

    #@18e
    .line 348
    const v15, 0xac44

    #@191
    goto/16 :goto_2

    #@193
    .line 369
    .restart local v12    # "encoding":I
    :cond_b
    move-object/from16 v0, p0

    #@195
    iget v2, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    #@197
    if-nez v2, :cond_8

    #@199
    .line 370
    const/4 v2, 0x1

    #@19a
    const/4 v3, 0x0

    #@19b
    invoke-static {v2, v3}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    #@19e
    move-result v2

    #@19f
    move-object/from16 v0, p0

    #@1a1
    iput v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    #@1a3
    .line 371
    move-object/from16 v0, p0

    #@1a5
    iget v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    #@1a7
    invoke-static {v2}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    #@1aa
    move-result v2

    #@1ab
    move-object/from16 v0, p0

    #@1ad
    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    #@1af
    goto/16 :goto_3

    #@1b1
    .line 389
    .restart local v10    # "session":[I
    .restart local v14    # "initResult":I
    :cond_c
    const/4 v2, 0x0

    #@1b2
    aget v2, v10, v2

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    iput v2, v0, Landroid/media/AudioRecord;->mSessionId:I

    #@1b8
    .line 391
    const/4 v2, 0x1

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    iput v2, v0, Landroid/media/AudioRecord;->mState:I

    #@1bd
    .line 306
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
    .line 665
    iget v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    #@2
    .line 666
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@4
    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    #@7
    move-result v2

    #@8
    .line 665
    mul-int v0, v1, v2

    #@a
    .line 667
    .local v0, "frameSizeInBytes":I
    rem-int v1, p1, v0

    #@c
    if-nez v1, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    if-ge p1, v1, :cond_1

    #@11
    .line 668
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "Invalid audio buffer size."

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 671
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    #@1c
    .line 662
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
    .line 621
    if-ltz p1, :cond_0

    #@2
    .line 622
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    #@5
    move-result v0

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 623
    const/16 v0, 0x7ce

    #@a
    if-eq p1, v0, :cond_1

    #@c
    .line 624
    const/16 v0, 0x7cf

    #@e
    if-eq p1, v0, :cond_1

    #@10
    .line 625
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "Invalid audio source."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 627
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    #@1b
    .line 631
    const/16 v0, 0xfa0

    #@1d
    if-lt p2, v0, :cond_2

    #@1f
    const v0, 0x2ee00

    #@22
    if-le p2, v0, :cond_3

    #@24
    .line 632
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 633
    const-string/jumbo v2, "Hz is not a supported sample rate."

    #@32
    .line 632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 635
    :cond_3
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    #@40
    .line 639
    packed-switch p3, :pswitch_data_0

    #@43
    .line 649
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@45
    const-string/jumbo v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT, ENCODING_PCM_16BIT, or ENCODING_PCM_FLOAT."

    #@48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    .line 641
    :pswitch_0
    const/4 v0, 0x2

    #@4d
    iput v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@4f
    .line 617
    :goto_0
    return-void

    #@50
    .line 646
    :pswitch_1
    iput p3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@52
    goto :goto_0

    #@53
    .line 639
    nop

    #@54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private broadcastRoutingChange()V
    .locals 6

    #@0
    .prologue
    .line 1363
    iget-object v5, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@2
    monitor-enter v5

    #@3
    .line 1364
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v3

    #@9
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;>;"
    monitor-exit v5

    #@a
    .line 1366
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    #@d
    .line 1367
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "delegate$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    #@1d
    .line 1368
    .local v0, "delegate":Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    invoke-virtual {v0}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    #@20
    move-result-object v2

    #@21
    .line 1369
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    #@23
    .line 1370
    const/16 v4, 0x3e8

    #@25
    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@28
    goto :goto_0

    #@29
    .line 1363
    .end local v0    # "delegate":Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    .end local v1    # "delegate$iterator":Ljava/util/Iterator;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;>;"
    :catchall_0
    move-exception v4

    #@2a
    monitor-exit v5

    #@2b
    throw v4

    #@2c
    .line 1361
    .restart local v1    # "delegate$iterator":Ljava/util/Iterator;
    .restart local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;>;"
    :cond_1
    return-void
.end method

.method private static getChannelMaskFromLegacyConfig(IZ)I
    .locals 3
    .param p0, "inChannelConfig"    # I
    .param p1, "allowLegacyConfig"    # Z

    #@0
    .prologue
    .line 587
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 601
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "Unsupported channel configuration."

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 591
    :sswitch_0
    const/16 v0, 0x10

    #@e
    .line 604
    .local v0, "mask":I
    :goto_0
    if-nez p1, :cond_1

    #@10
    const/4 v1, 0x2

    #@11
    if-eq p0, v1, :cond_0

    #@13
    .line 605
    const/4 v1, 0x3

    #@14
    if-ne p0, v1, :cond_1

    #@16
    .line 607
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v2, "Unsupported deprecated configuration."

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 595
    .end local v0    # "mask":I
    :sswitch_1
    const/16 v0, 0xc

    #@21
    .line 596
    .restart local v0    # "mask":I
    goto :goto_0

    #@22
    .line 598
    .end local v0    # "mask":I
    :sswitch_2
    move v0, p0

    #@23
    .line 599
    .restart local v0    # "mask":I
    goto :goto_0

    #@24
    .line 610
    :cond_1
    return v0

    #@25
    .line 587
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
    .line 836
    const/4 v0, 0x0

    #@3
    .line 837
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 850
    const-string/jumbo v2, "getMinBufferSize(): Invalid channel configuration."

    #@9
    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    #@c
    .line 851
    return v3

    #@d
    .line 841
    :sswitch_0
    const/4 v0, 0x1

    #@e
    .line 854
    :goto_0
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    #@11
    move-result v1

    #@12
    .line 855
    .local v1, "size":I
    if-nez v1, :cond_0

    #@14
    .line 856
    return v3

    #@15
    .line 846
    .end local v1    # "size":I
    :sswitch_1
    const/4 v0, 0x2

    #@16
    .line 847
    goto :goto_0

    #@17
    .line 858
    .restart local v1    # "size":I
    :cond_0
    if-ne v1, v2, :cond_1

    #@19
    .line 859
    return v2

    #@1a
    .line 862
    :cond_1
    return v1

    #@1b
    .line 837
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
    .line 941
    iget-boolean v3, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    #@2
    if-nez v3, :cond_0

    #@4
    .line 942
    return-void

    #@5
    .line 944
    :cond_0
    const-string/jumbo v3, "audio"

    #@8
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    .line 945
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@f
    move-result-object v2

    #@10
    .line 947
    .local v2, "ias":Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    #@12
    invoke-interface {v2, p1, v3}, Landroid/media/IAudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 940
    :goto_0
    return-void

    #@16
    .line 948
    :catch_0
    move-exception v1

    #@17
    .line 949
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
    .line 1574
    const-string/jumbo v0, "android.media.AudioRecord"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1573
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1578
    const-string/jumbo v0, "android.media.AudioRecord"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1577
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

.method private final native native_read_in_byte_array([BIIZ)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;IZ)I
.end method

.method private final native native_read_in_float_array([FIIZ)I
.end method

.method private final native native_read_in_short_array([SIIZ)I
.end method

.method private final native native_release()V
.end method

.method private final native native_setInputDevice(I)Z
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIII[ILjava/lang/String;)I
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
    .line 1504
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "audiorecord_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/media/AudioRecord;

    #@8
    .line 1505
    .local v1, "recorder":Landroid/media/AudioRecord;
    if-nez v1, :cond_0

    #@a
    .line 1506
    return-void

    #@b
    .line 1509
    :cond_0
    const/16 v2, 0x3e8

    #@d
    if-ne p1, v2, :cond_1

    #@f
    .line 1510
    invoke-direct {v1}, Landroid/media/AudioRecord;->broadcastRoutingChange()V

    #@12
    .line 1511
    return-void

    #@13
    .line 1514
    :cond_1
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 1516
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    #@19
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v0

    #@1d
    .line 1517
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    #@1f
    invoke-virtual {v2, v0}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    #@22
    .line 1502
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1281
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1280
    .end local p2    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1282
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@d
    monitor-enter v1

    #@e
    .line 1283
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_2

    #@16
    .line 1284
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_enableDeviceCallback()V

    #@19
    .line 1286
    :cond_2
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@1b
    .line 1287
    new-instance v2, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    #@1d
    .line 1288
    if-eqz p2, :cond_3

    #@1f
    .line 1287
    .end local p2    # "handler":Landroid/os/Handler;
    :goto_1
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V

    #@22
    .line 1286
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v1

    #@26
    goto :goto_0

    #@27
    .line 1288
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_3
    :try_start_1
    new-instance p2, Landroid/os/Handler;

    #@29
    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    #@2b
    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_1

    #@2f
    .line 1282
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 695
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    #@3
    .line 693
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    #@0
    .prologue
    .line 722
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@2
    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    #@0
    .prologue
    .line 872
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    #@2
    return v0
.end method

.method public getAudioSource()I
    .locals 1

    #@0
    .prologue
    .line 714
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    #@2
    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    #@0
    .prologue
    .line 797
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
    .line 735
    iget v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    #@2
    return v0
.end method

.method public getChannelCount()I
    .locals 1

    #@0
    .prologue
    .line 760
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    #@2
    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 3

    #@0
    .prologue
    .line 744
    new-instance v1, Landroid/media/AudioFormat$Builder;

    #@2
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@5
    .line 745
    iget v2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    #@7
    .line 744
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@a
    move-result-object v1

    #@b
    .line 746
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@d
    .line 744
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@10
    move-result-object v0

    #@11
    .line 747
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 748
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    #@17
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@1a
    .line 750
    :cond_0
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 751
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    #@20
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    #@23
    .line 753
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
    .line 804
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
    .line 811
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
    .line 1424
    monitor-enter p0

    #@1
    .line 1425
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 1424
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
    .line 781
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 782
    :try_start_0
    iget v1, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 781
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
    .line 1247
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_getRoutedDeviceId()I

    #@4
    move-result v0

    #@5
    .line 1248
    .local v0, "deviceId":I
    if-nez v0, :cond_0

    #@7
    .line 1249
    return-object v4

    #@8
    .line 1252
    :cond_0
    const/4 v3, 0x1

    #@9
    invoke-static {v3}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    #@c
    move-result-object v1

    #@d
    .line 1253
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    #@f
    if-ge v2, v3, :cond_2

    #@11
    .line 1254
    aget-object v3, v1, v2

    #@13
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    #@16
    move-result v3

    #@17
    if-ne v3, v0, :cond_1

    #@19
    .line 1255
    aget-object v3, v1, v2

    #@1b
    return-object v3

    #@1c
    .line 1253
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1258
    :cond_2
    return-object v4
.end method

.method public getSampleRate()I
    .locals 1

    #@0
    .prologue
    .line 706
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    #@2
    return v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 772
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    #@2
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I

    #@0
    .prologue
    .line 1126
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
    .line 1152
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    #@5
    if-eq v2, v0, :cond_0

    #@7
    .line 1153
    const/4 v0, -0x3

    #@8
    return v0

    #@9
    .line 1156
    :cond_0
    if-eqz p3, :cond_1

    #@b
    if-eq p3, v0, :cond_1

    #@d
    .line 1157
    const-string/jumbo v0, "android.media.AudioRecord"

    #@10
    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    #@13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 1158
    return v3

    #@17
    .line 1161
    :cond_1
    if-eqz p1, :cond_2

    #@19
    if-gez p2, :cond_3

    #@1b
    .line 1162
    :cond_2
    return v3

    #@1c
    .line 1165
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
    .line 969
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
    .line 991
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
    .line 992
    :cond_0
    const/4 v0, -0x3

    #@d
    return v0

    #@e
    .line 995
    :cond_1
    if-eqz p4, :cond_2

    #@10
    if-eq p4, v0, :cond_2

    #@12
    .line 996
    const-string/jumbo v0, "android.media.AudioRecord"

    #@15
    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 997
    return v4

    #@1c
    .line 1000
    :cond_2
    if-eqz p1, :cond_3

    #@1e
    if-gez p2, :cond_4

    #@20
    .line 1003
    :cond_3
    return v4

    #@21
    .line 1000
    :cond_4
    if-ltz p3, :cond_3

    #@23
    .line 1001
    add-int v2, p2, p3

    #@25
    if-ltz v2, :cond_3

    #@27
    .line 1002
    add-int v2, p2, p3

    #@29
    array-length v3, p1

    #@2a
    if-gt v2, v3, :cond_3

    #@2c
    .line 1007
    if-nez p4, :cond_5

    #@2e
    .line 1006
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
    .line 1007
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
    .line 1083
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1084
    const-string/jumbo v0, "android.media.AudioRecord"

    #@b
    const-string/jumbo v1, "AudioRecord.read() called in invalid state STATE_UNINITIALIZED"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1085
    return v4

    #@12
    .line 1088
    :cond_0
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    #@14
    const/4 v3, 0x4

    #@15
    if-eq v2, v3, :cond_1

    #@17
    .line 1089
    const-string/jumbo v0, "android.media.AudioRecord"

    #@1a
    const-string/jumbo v1, "AudioRecord.read(float[] ...) requires format ENCODING_PCM_FLOAT"

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1090
    return v4

    #@21
    .line 1093
    :cond_1
    if-eqz p4, :cond_2

    #@23
    if-eq p4, v0, :cond_2

    #@25
    .line 1094
    const-string/jumbo v0, "android.media.AudioRecord"

    #@28
    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    #@2b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 1095
    return v5

    #@2f
    .line 1098
    :cond_2
    if-eqz p1, :cond_3

    #@31
    if-gez p2, :cond_4

    #@33
    .line 1101
    :cond_3
    return v5

    #@34
    .line 1098
    :cond_4
    if-ltz p3, :cond_3

    #@36
    .line 1099
    add-int v2, p2, p3

    #@38
    if-ltz v2, :cond_3

    #@3a
    .line 1100
    add-int v2, p2, p3

    #@3c
    array-length v3, p1

    #@3d
    if-gt v2, v3, :cond_3

    #@3f
    .line 1105
    if-nez p4, :cond_5

    #@41
    .line 1104
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
    .line 1105
    goto :goto_0
.end method

.method public read([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    #@0
    .prologue
    .line 1023
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
    .line 1045
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
    .line 1046
    :cond_0
    const/4 v0, -0x3

    #@d
    return v0

    #@e
    .line 1049
    :cond_1
    if-eqz p4, :cond_2

    #@10
    if-eq p4, v0, :cond_2

    #@12
    .line 1050
    const-string/jumbo v0, "android.media.AudioRecord"

    #@15
    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1051
    return v4

    #@1c
    .line 1054
    :cond_2
    if-eqz p1, :cond_3

    #@1e
    if-gez p2, :cond_4

    #@20
    .line 1057
    :cond_3
    return v4

    #@21
    .line 1054
    :cond_4
    if-ltz p3, :cond_3

    #@23
    .line 1055
    add-int v2, p2, p3

    #@25
    if-ltz v2, :cond_3

    #@27
    .line 1056
    add-int v2, p2, p3

    #@29
    array-length v3, p1

    #@2a
    if-gt v2, v3, :cond_3

    #@2c
    .line 1061
    if-nez p4, :cond_5

    #@2e
    .line 1060
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
    .line 1061
    goto :goto_0
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 683
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 687
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_release()V

    #@6
    .line 688
    const/4 v1, 0x0

    #@7
    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    #@9
    .line 681
    return-void

    #@a
    .line 684
    :catch_0
    move-exception v0

    #@b
    .local v0, "ise":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;

    #@0
    .prologue
    .line 1299
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@2
    monitor-enter v1

    #@3
    .line 1300
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1301
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 1302
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_0

    #@18
    .line 1303
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_disableDeviceCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit v1

    #@1c
    .line 1298
    return-void

    #@1d
    .line 1299
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    #@0
    .prologue
    .line 1218
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1219
    const/4 v0, -0x3

    #@5
    return v0

    #@6
    .line 1221
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
    .line 1384
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1385
    const/4 v0, -0x3

    #@5
    return v0

    #@6
    .line 1387
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
    .line 1405
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 1409
    :cond_0
    if-eqz p1, :cond_3

    #@a
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    #@d
    move-result v0

    #@e
    .line 1410
    .local v0, "preferredDeviceId":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_setInputDevice(I)Z

    #@11
    move-result v1

    #@12
    .line 1411
    .local v1, "status":Z
    if-eqz v1, :cond_1

    #@14
    .line 1412
    monitor-enter p0

    #@15
    .line 1413
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 1416
    :cond_1
    return v1

    #@19
    .line 1406
    .end local v0    # "preferredDeviceId":I
    .end local v1    # "status":Z
    :cond_2
    const/4 v2, 0x0

    #@1a
    return v2

    #@1b
    .line 1409
    :cond_3
    const/4 v0, 0x0

    #@1c
    .restart local v0    # "preferredDeviceId":I
    goto :goto_0

    #@1d
    .line 1412
    .restart local v1    # "status":Z
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit p0

    #@1f
    throw v2
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    #@0
    .prologue
    .line 1177
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    #@4
    .line 1176
    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1190
    iget-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1192
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    #@5
    .line 1194
    if-eqz p1, :cond_1

    #@7
    .line 1195
    if-eqz p2, :cond_0

    #@9
    .line 1196
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
    .line 1189
    return-void

    #@16
    .line 1199
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
    .line 1190
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0

    #@23
    .line 1202
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
    .line 884
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 885
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 890
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 891
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
    .line 892
    const/4 v0, 0x1

    #@1a
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    #@1d
    .line 893
    const/4 v0, 0x3

    #@1e
    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_1
    monitor-exit v1

    #@21
    .line 883
    return-void

    #@22
    .line 890
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
    .line 907
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 908
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 913
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 914
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
    .line 915
    const/4 v0, 0x1

    #@20
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    #@23
    .line 916
    const/4 v0, 0x3

    #@24
    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :cond_1
    monitor-exit v1

    #@27
    .line 906
    return-void

    #@28
    .line 913
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
    .line 927
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 928
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "stop() called on an uninitialized AudioRecord."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 932
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 933
    const/4 v0, 0x0

    #@12
    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    #@15
    .line 934
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    #@18
    .line 935
    const/4 v0, 0x1

    #@19
    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 926
    return-void

    #@1d
    .line 932
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method
