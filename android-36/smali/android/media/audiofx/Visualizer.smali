.class public Landroid/media/audiofx/Visualizer;
.super Ljava/lang/Object;
.source "Visualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Visualizer$OnDataCaptureListener;,
        Landroid/media/audiofx/Visualizer$OnServerDiedListener;,
        Landroid/media/audiofx/Visualizer$MeasurementPeakRms;
    }
.end annotation


# static fields
.field public static final whitelist ALREADY_EXISTS:I = -0x2

.field public static final whitelist ERROR:I = -0x1

.field public static final whitelist ERROR_BAD_VALUE:I = -0x4

.field public static final whitelist ERROR_DEAD_OBJECT:I = -0x7

.field public static final whitelist ERROR_INVALID_OPERATION:I = -0x5

.field public static final whitelist ERROR_NO_INIT:I = -0x3

.field public static final whitelist ERROR_NO_MEMORY:I = -0x6

.field public static final whitelist MEASUREMENT_MODE_NONE:I = 0x0

.field public static final whitelist MEASUREMENT_MODE_PEAK_RMS:I = 0x1

.field private static final greylist-max-o NATIVE_EVENT_FFT_CAPTURE:I = 0x1

.field private static final greylist-max-o NATIVE_EVENT_PCM_CAPTURE:I = 0x0

.field private static final greylist-max-o NATIVE_EVENT_SERVER_DIED:I = 0x2

.field public static final whitelist SCALING_MODE_AS_PLAYED:I = 0x1

.field public static final whitelist SCALING_MODE_NORMALIZED:I = 0x0

.field public static final whitelist STATE_ENABLED:I = 0x2

.field public static final whitelist STATE_INITIALIZED:I = 0x1

.field public static final whitelist STATE_UNINITIALIZED:I = 0x0

.field public static final whitelist SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Visualizer-JAVA"


# instance fields
.field private greylist-max-o mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field private greylist mId:I

.field private greylist-max-o mJniData:J

.field private final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private blacklist mNativeEventHandler:Landroid/os/Handler;

.field private greylist-max-o mNativeVisualizer:J

.field private greylist-max-o mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

.field private greylist-max-o mState:I

.field private final greylist-max-o mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Landroid/media/audiofx/Visualizer;->native_init()V

    .line 79
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 9
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 179
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    .line 190
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/os/Handler;

    .line 199
    iput-object v1, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 204
    iput-object v1, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    .line 228
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 230
    .local v2, "id":[I
    iget-object v3, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 231
    :try_start_21
    iput v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 236
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 237
    invoke-virtual {v4}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_a3

    .line 238
    .local v4, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_2b
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v4}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v6

    .line 238
    invoke-direct {p0, v5, p1, v2, v6}, Landroid/media/audiofx/Visualizer;->native_setup(Ljava/lang/Object;I[ILandroid/os/Parcel;)I

    move-result v5
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_97

    .line 240
    .local v5, "result":I
    if-eqz v4, :cond_3d

    :try_start_3a
    invoke-virtual {v4}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 241
    .end local v4    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_3d
    if-eqz v5, :cond_85

    const/4 v4, -0x2

    if-eq v5, v4, :cond_85

    .line 242
    const-string v0, "Visualizer-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error code "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " when initializing Visualizer."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    packed-switch v5, :pswitch_data_a6

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    goto :goto_6e

    .line 245
    :pswitch_66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Effect library not loaded"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v2    # "id":[I
    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    .end local p1    # "audioSession":I
    throw v0

    .line 247
    .restart local v2    # "id":[I
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    .restart local p1    # "audioSession":I
    :goto_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot initialize Visualizer engine, error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "id":[I
    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    .end local p1    # "audioSession":I
    throw v0

    .line 251
    .restart local v2    # "id":[I
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    .restart local p1    # "audioSession":I
    :cond_85
    aget v0, v2, v0

    iput v0, p0, Landroid/media/audiofx/Visualizer;->mId:I

    .line 252
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getEnabled()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 253
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    goto :goto_95

    .line 255
    :cond_93
    iput v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 257
    .end local v5    # "result":I
    :goto_95
    monitor-exit v3
    :try_end_96
    .catchall {:try_start_3a .. :try_end_96} :catchall_a3

    .line 258
    return-void

    .line 236
    .restart local v4    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_97
    move-exception v0

    if-eqz v4, :cond_a2

    :try_start_9a
    invoke-virtual {v4}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a2

    :catchall_9e
    move-exception v1

    :try_start_9f
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "id":[I
    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    .end local p1    # "audioSession":I
    :cond_a2
    :goto_a2
    throw v0

    .line 257
    .end local v4    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    .restart local v2    # "id":[I
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    .restart local p1    # "audioSession":I
    :catchall_a3
    move-exception v0

    monitor-exit v3
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_a3

    throw v0

    :pswitch_data_a6
    .packed-switch -0x5
        :pswitch_66
    .end packed-switch
.end method

.method public static native whitelist getCaptureSizeRange()[I
.end method

.method public static native whitelist getMaxCaptureRate()I
.end method

.method static synthetic blacklist lambda$postEventFromNative$0(Landroid/media/audiofx/Visualizer;I[BI)V
    .registers 6
    .param p0, "visualizer"    # Landroid/media/audiofx/Visualizer;
    .param p1, "what"    # I
    .param p2, "data"    # [B
    .param p3, "samplingRate"    # I

    .line 789
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 790
    :try_start_3
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 791
    .local v1, "l":Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    .line 792
    if-eqz v1, :cond_11

    .line 793
    if-nez p1, :cond_e

    .line 794
    invoke-interface {v1, p0, p2, p3}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    goto :goto_11

    .line 796
    :cond_e
    invoke-interface {v1, p0, p2, p3}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    .line 799
    :cond_11
    :goto_11
    return-void

    .line 791
    .end local v1    # "l":Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method static synthetic blacklist lambda$postEventFromNative$1(Landroid/media/audiofx/Visualizer;)V
    .registers 3
    .param p0, "visualizer"    # Landroid/media/audiofx/Visualizer;

    .line 804
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_3
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    .line 806
    .local v1, "l":Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 807
    if-eqz v1, :cond_b

    .line 808
    invoke-interface {v1}, Landroid/media/audiofx/Visualizer$OnServerDiedListener;->onServerDied()V

    .line 810
    :cond_b
    return-void

    .line 806
    .end local v1    # "l":Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_getCaptureSize()I
.end method

.method private final native greylist-max-o native_getEnabled()Z
.end method

.method private final native greylist-max-o native_getFft([B)I
.end method

.method private final native greylist-max-o native_getMeasurementMode()I
.end method

.method private final native greylist-max-o native_getPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I
.end method

.method private final native greylist-max-o native_getSamplingRate()I
.end method

.method private final native greylist-max-o native_getScalingMode()I
.end method

.method private final native greylist-max-o native_getWaveForm([B)I
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private final native greylist-max-o native_setCaptureSize(I)I
.end method

.method private final native greylist-max-o native_setEnabled(Z)I
.end method

.method private final native greylist-max-o native_setMeasurementMode(I)I
.end method

.method private final native greylist-max-o native_setPeriodicCapture(IZZ)I
.end method

.method private final native greylist-max-o native_setScalingMode(I)I
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;I[ILandroid/os/Parcel;)I
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;II[B)V
    .registers 9
    .param p0, "effect_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "samplingRate"    # I
    .param p3, "data"    # [B

    .line 775
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/Visualizer;

    .line 776
    .local v0, "visualizer":Landroid/media/audiofx/Visualizer;
    if-nez v0, :cond_c

    return-void

    .line 779
    :cond_c
    iget-object v1, v0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 780
    :try_start_f
    iget-object v2, v0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/os/Handler;

    .line 781
    .local v2, "handler":Landroid/os/Handler;
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_44

    .line 782
    if-nez v2, :cond_15

    return-void

    .line 784
    :cond_15
    packed-switch p1, :pswitch_data_48

    .line 813
    const-string v1, "Visualizer-JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown native event in postEventFromNative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 802
    :pswitch_31
    new-instance v1, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda1;-><init>(Landroid/media/audiofx/Visualizer;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 811
    goto :goto_43

    .line 787
    :pswitch_3a
    new-instance v1, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p3, p2}, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda0;-><init>(Landroid/media/audiofx/Visualizer;I[BI)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 800
    nop

    .line 816
    :goto_43
    return-void

    .line 781
    .end local v2    # "handler":Landroid/os/Handler;
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v2

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_3a
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3

    .line 273
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_finalize()V

    .line 275
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist getCaptureSize()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 369
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getCaptureSize()I

    move-result v1

    monitor-exit v0

    return v1

    .line 367
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCaptureSize() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    throw v1

    .line 370
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist getEnabled()Z
    .registers 5

    .line 309
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 313
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getEnabled()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 311
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEnabled() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    throw v1

    .line 314
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist getFft([B)I
    .registers 6
    .param p1, "fft"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 548
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 552
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getFft([B)I

    move-result v1

    monitor-exit v0

    return v1

    .line 550
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFft() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    .end local p1    # "fft":[B
    throw v1

    .line 553
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    .restart local p1    # "fft":[B
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public whitelist getMeasurementMode()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 442
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getMeasurementMode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 439
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMeasurementMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    throw v1

    .line 443
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist getMeasurementPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I
    .registers 6
    .param p1, "measurement"    # Landroid/media/audiofx/Visualizer$MeasurementPeakRms;

    .line 583
    if-nez p1, :cond_b

    .line 584
    const-string v0, "Visualizer-JAVA"

    const-string v1, "Cannot store measurements in a null object"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 v0, -0x4

    return v0

    .line 587
    :cond_b
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_e
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 592
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 589
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMeasurementPeakRms() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    .end local p1    # "measurement":Landroid/media/audiofx/Visualizer$MeasurementPeakRms;
    throw v1

    .line 593
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    .restart local p1    # "measurement":Landroid/media/audiofx/Visualizer$MeasurementPeakRms;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_34

    throw v1
.end method

.method public whitelist getSamplingRate()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 456
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getSamplingRate()I

    move-result v1

    monitor-exit v0

    return v1

    .line 454
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSamplingRate() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    throw v1

    .line 457
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist getScalingMode()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 405
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getScalingMode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 402
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScalingMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    throw v1

    .line 406
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist getWaveForm([B)I
    .registers 7
    .param p1, "waveform"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3f

    .line 479
    invoke-virtual {p0}, Landroid/media/audiofx/Visualizer;->getCaptureSize()I

    move-result v1

    .line 480
    .local v1, "captureSize":I
    array-length v2, p1

    if-gt v1, v2, :cond_15

    .line 485
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getWaveForm([B)I

    move-result v2

    monitor-exit v0

    return v2

    .line 481
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWaveForm() called with illegal size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expecting at least "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    .end local p1    # "waveform":[B
    throw v2

    .line 477
    .end local v1    # "captureSize":I
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    .restart local p1    # "waveform":[B
    :cond_3f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWaveForm() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    .end local p1    # "waveform":[B
    throw v1

    .line 486
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    .restart local p1    # "waveform":[B
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public whitelist release()V
    .registers 3

    .line 265
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_release()V

    .line 267
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist setCaptureSize(I)I
    .registers 7
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_30

    .line 350
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setCaptureSize(I)I

    move-result v1

    .line 351
    .local v1, "ret":I
    const/4 v2, -0x4

    if-eq v1, v2, :cond_11

    .line 355
    monitor-exit v0

    return v1

    .line 352
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCaptureSize to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    .end local p1    # "size":I
    throw v2

    .line 347
    .end local v1    # "ret":I
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    .restart local p1    # "size":I
    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCaptureSize() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    .end local p1    # "size":I
    throw v1

    .line 356
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    .restart local p1    # "size":I
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public whitelist setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I
    .registers 9
    .param p1, "listener"    # Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    .param p2, "rate"    # I
    .param p3, "waveform"    # Z
    .param p4, "fft"    # Z

    .line 647
    if-nez p1, :cond_4

    .line 649
    const/4 p3, 0x0

    .line 650
    const/4 p4, 0x0

    .line 653
    :cond_4
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_7
    invoke-direct {p0, p2, p3, p4}, Landroid/media/audiofx/Visualizer;->native_setPeriodicCapture(IZZ)I

    move-result v1

    .line 655
    .local v1, "status":I
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_41

    .line 656
    if-nez v1, :cond_40

    .line 657
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_11
    iput-object p1, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 659
    if-eqz p1, :cond_3b

    iget-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/os/Handler;

    if-nez v2, :cond_3b

    .line 661
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    .local v3, "looper":Landroid/os/Looper;
    if-eqz v2, :cond_28

    .line 662
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/os/Handler;

    goto :goto_3b

    .line 663
    :cond_28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_37

    .line 664
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/os/Handler;

    goto :goto_3b

    .line 666
    :cond_37
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/os/Handler;

    .line 667
    const/4 v1, -0x3

    .line 670
    .end local v3    # "looper":Landroid/os/Looper;
    :cond_3b
    :goto_3b
    monitor-exit v0

    goto :goto_40

    :catchall_3d
    move-exception v2

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_11 .. :try_end_3f} :catchall_3d

    throw v2

    .line 672
    :cond_40
    :goto_40
    return v1

    .line 655
    .end local v1    # "status":I
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public whitelist setEnabled(Z)I
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_25

    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, "status":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_10

    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eq v4, v3, :cond_16

    :cond_10
    if-nez p1, :cond_23

    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-ne v4, v2, :cond_23

    .line 294
    :cond_16
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setEnabled(Z)I

    move-result v4

    move v1, v4

    .line 295
    if-nez v1, :cond_23

    .line 296
    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    move v2, v3

    :goto_21
    iput v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 299
    :cond_23
    monitor-exit v0

    return v1

    .line 289
    .end local v1    # "status":I
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnabled() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    .end local p1    # "enabled":Z
    throw v1

    .line 300
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    .restart local p1    # "enabled":Z
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public whitelist setMeasurementMode(I)I
    .registers 6
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 424
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setMeasurementMode(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 421
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMeasurementMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    .end local p1    # "mode":I
    throw v1

    .line 425
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    .restart local p1    # "mode":I
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist setScalingMode(I)I
    .registers 6
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 388
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setScalingMode(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 385
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScalingMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/Visualizer;
    .end local p1    # "mode":I
    throw v1

    .line 389
    .restart local p0    # "this":Landroid/media/audiofx/Visualizer;
    .restart local p1    # "mode":I
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public greylist-max-o setServerDiedListener(Landroid/media/audiofx/Visualizer$OnServerDiedListener;)I
    .registers 4
    .param p1, "listener"    # Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    .line 706
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_3
    iput-object p1, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    .line 708
    monitor-exit v0

    .line 709
    const/4 v0, 0x0

    return v0

    .line 708
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
