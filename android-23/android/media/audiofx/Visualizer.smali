.class public Landroid/media/audiofx/Visualizer;
.super Ljava/lang/Object;
.source "Visualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Visualizer$MeasurementPeakRms;,
        Landroid/media/audiofx/Visualizer$OnDataCaptureListener;,
        Landroid/media/audiofx/Visualizer$OnServerDiedListener;,
        Landroid/media/audiofx/Visualizer$NativeEventHandler;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I = -0x2

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final ERROR_INVALID_OPERATION:I = -0x5

.field public static final ERROR_NO_INIT:I = -0x3

.field public static final ERROR_NO_MEMORY:I = -0x6

.field public static final MEASUREMENT_MODE_NONE:I = 0x0

.field public static final MEASUREMENT_MODE_PEAK_RMS:I = 0x1

.field private static final NATIVE_EVENT_FFT_CAPTURE:I = 0x1

.field private static final NATIVE_EVENT_PCM_CAPTURE:I = 0x0

.field private static final NATIVE_EVENT_SERVER_DIED:I = 0x2

.field public static final SCALING_MODE_AS_PLAYED:I = 0x1

.field public static final SCALING_MODE_NORMALIZED:I = 0x0

.field public static final STATE_ENABLED:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Visualizer-JAVA"


# instance fields
.field private mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field private mId:I

.field private mJniData:J

.field private final mListenerLock:Ljava/lang/Object;

.field private mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

.field private mNativeVisualizer:J

.field private mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiofx/Visualizer;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 70
    const-string/jumbo v0, "audioeffect_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 71
    invoke-static {}, Landroid/media/audiofx/Visualizer;->native_init()V

    #@9
    .line 67
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 159
    iput v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@8
    .line 163
    new-instance v2, Ljava/lang/Object;

    #@a
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@f
    .line 172
    new-instance v2, Ljava/lang/Object;

    #@11
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@14
    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    #@16
    .line 176
    iput-object v3, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    #@18
    .line 180
    iput-object v3, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    #@1a
    .line 184
    iput-object v3, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    #@1c
    .line 205
    new-array v0, v4, [I

    #@1e
    .line 207
    .local v0, "id":[I
    iget-object v3, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@20
    monitor-enter v3

    #@21
    .line 208
    const/4 v2, 0x0

    #@22
    :try_start_0
    iput v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@24
    .line 210
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@26
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@29
    .line 211
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 210
    invoke-direct {p0, v2, p1, v0, v4}, Landroid/media/audiofx/Visualizer;->native_setup(Ljava/lang/Object;I[ILjava/lang/String;)I

    #@30
    move-result v1

    #@31
    .line 212
    .local v1, "result":I
    if-eqz v1, :cond_0

    #@33
    const/4 v2, -0x2

    #@34
    if-eq v1, v2, :cond_0

    #@36
    .line 213
    const-string/jumbo v2, "Visualizer-JAVA"

    #@39
    new-instance v4, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v5, "Error code "

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    const-string/jumbo v5, " when initializing Visualizer."

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 214
    packed-switch v1, :pswitch_data_0

    #@5a
    .line 218
    new-instance v2, Ljava/lang/RuntimeException;

    #@5c
    new-instance v4, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v5, "Cannot initialize Visualizer engine, error: "

    #@64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@73
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@74
    .line 207
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    #@75
    monitor-exit v3

    #@76
    throw v2

    #@77
    .line 216
    .restart local v1    # "result":I
    :pswitch_0
    :try_start_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@79
    const-string/jumbo v4, "Effect library not loaded"

    #@7c
    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v2

    #@80
    .line 222
    :cond_0
    const/4 v2, 0x0

    #@81
    aget v2, v0, v2

    #@83
    iput v2, p0, Landroid/media/audiofx/Visualizer;->mId:I

    #@85
    .line 223
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getEnabled()Z

    #@88
    move-result v2

    #@89
    if-eqz v2, :cond_1

    #@8b
    .line 224
    const/4 v2, 0x2

    #@8c
    iput v2, p0, Landroid/media/audiofx/Visualizer;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8e
    :goto_0
    monitor-exit v3

    #@8f
    .line 204
    return-void

    #@90
    .line 226
    :cond_1
    const/4 v2, 0x1

    #@91
    :try_start_2
    iput v2, p0, Landroid/media/audiofx/Visualizer;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@93
    goto :goto_0

    #@94
    .line 214
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
    .end packed-switch
.end method

.method public static native getCaptureSizeRange()[I
.end method

.method public static native getMaxCaptureRate()I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getCaptureSize()I
.end method

.method private final native native_getEnabled()Z
.end method

.method private final native native_getFft([B)I
.end method

.method private final native native_getMeasurementMode()I
.end method

.method private final native native_getPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I
.end method

.method private final native native_getSamplingRate()I
.end method

.method private final native native_getScalingMode()I
.end method

.method private final native native_getWaveForm([B)I
.end method

.method private static final native native_init()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setCaptureSize(I)I
.end method

.method private final native native_setEnabled(Z)I
.end method

.method private final native native_setMeasurementMode(I)I
.end method

.method private final native native_setPeriodicCapture(IZZ)I
.end method

.method private final native native_setScalingMode(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;I[ILjava/lang/String;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "effect_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 760
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "effect_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/media/audiofx/Visualizer;

    #@8
    .line 761
    .local v1, "visu":Landroid/media/audiofx/Visualizer;
    if-nez v1, :cond_0

    #@a
    .line 762
    return-void

    #@b
    .line 765
    :cond_0
    iget-object v2, v1, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 766
    iget-object v2, v1, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    #@11
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    .line 767
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    #@17
    invoke-virtual {v2, v0}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 759
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 244
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_finalize()V

    #@3
    .line 243
    return-void
.end method

.method public getCaptureSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 327
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 328
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "getCaptureSize() called in wrong state: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 327
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0

    #@26
    .line 331
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getCaptureSize()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result v0

    #@2a
    monitor-exit v1

    #@2b
    return v0
.end method

.method public getEnabled()Z
    .locals 4

    #@0
    .prologue
    .line 278
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 279
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "getEnabled() called in wrong state: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 278
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0

    #@26
    .line 282
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result v0

    #@2a
    monitor-exit v1

    #@2b
    return v0
.end method

.method public getFft([B)I
    .locals 4
    .param p1, "fft"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 488
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 489
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@5
    const/4 v2, 0x2

    #@6
    if-eq v0, v2, :cond_0

    #@8
    .line 490
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "getFft() called in wrong state: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 488
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0

    #@27
    .line 492
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getFft([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result v0

    #@2b
    monitor-exit v1

    #@2c
    return v0
.end method

.method public getMeasurementMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 399
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 400
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 401
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "getMeasurementMode() called in wrong state: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 402
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@17
    .line 401
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 399
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0

    #@26
    .line 404
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getMeasurementMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result v0

    #@2a
    monitor-exit v1

    #@2b
    return v0
.end method

.method public getMeasurementPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I
    .locals 4
    .param p1, "measurement"    # Landroid/media/audiofx/Visualizer$MeasurementPeakRms;

    #@0
    .prologue
    .line 523
    if-nez p1, :cond_0

    #@2
    .line 524
    const-string/jumbo v0, "Visualizer-JAVA"

    #@5
    const-string/jumbo v1, "Cannot store measurements in a null object"

    #@8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 525
    const/4 v0, -0x4

    #@c
    return v0

    #@d
    .line 527
    :cond_0
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@f
    monitor-enter v1

    #@10
    .line 528
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@12
    const/4 v2, 0x2

    #@13
    if-eq v0, v2, :cond_1

    #@15
    .line 529
    new-instance v0, Ljava/lang/IllegalStateException;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "getMeasurementPeakRms() called in wrong state: "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 530
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@25
    .line 529
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 527
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v1

    #@33
    throw v0

    #@34
    .line 532
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result v0

    #@38
    monitor-exit v1

    #@39
    return v0
.end method

.method public getSamplingRate()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 414
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 415
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 416
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "getSamplingRate() called in wrong state: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 414
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0

    #@26
    .line 418
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getSamplingRate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result v0

    #@2a
    monitor-exit v1

    #@2b
    return v0
.end method

.method public getScalingMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 362
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 363
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "getScalingMode() called in wrong state: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 365
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@17
    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 362
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0

    #@26
    .line 367
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getScalingMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result v0

    #@2a
    monitor-exit v1

    #@2b
    return v0
.end method

.method public getWaveForm([B)I
    .locals 4
    .param p1, "waveform"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 436
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@5
    const/4 v2, 0x2

    #@6
    if-eq v0, v2, :cond_0

    #@8
    .line 437
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "getWaveForm() called in wrong state: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 435
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0

    #@27
    .line 439
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getWaveForm([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result v0

    #@2b
    monitor-exit v1

    #@2c
    return v0
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 236
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 237
    :try_start_0
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_release()V

    #@6
    .line 238
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/media/audiofx/Visualizer;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 235
    return-void

    #@b
    .line 236
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public setCaptureSize(I)I
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 314
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@5
    const/4 v2, 0x1

    #@6
    if-eq v0, v2, :cond_0

    #@8
    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "setCaptureSize() called in wrong state: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 313
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0

    #@27
    .line 317
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setCaptureSize(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result v0

    #@2b
    monitor-exit v1

    #@2c
    return v0
.end method

.method public setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I
    .locals 4
    .param p1, "listener"    # Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    .param p2, "rate"    # I
    .param p3, "waveform"    # Z
    .param p4, "fft"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 584
    iget-object v2, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 585
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v2

    #@7
    .line 587
    if-nez p1, :cond_0

    #@9
    .line 589
    const/4 p3, 0x0

    #@a
    .line 590
    .local p3, "waveform":Z
    const/4 p4, 0x0

    #@b
    .line 592
    .end local p3    # "waveform":Z
    .end local p4    # "fft":Z
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Landroid/media/audiofx/Visualizer;->native_setPeriodicCapture(IZZ)I

    #@e
    move-result v1

    #@f
    .line 593
    .local v1, "status":I
    if-nez v1, :cond_1

    #@11
    .line 594
    if-eqz p1, :cond_1

    #@13
    iget-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    #@15
    if-nez v2, :cond_1

    #@17
    .line 596
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1a
    move-result-object v0

    #@1b
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_2

    #@1d
    .line 597
    new-instance v2, Landroid/media/audiofx/Visualizer$NativeEventHandler;

    #@1f
    invoke-direct {v2, p0, p0, v0}, Landroid/media/audiofx/Visualizer$NativeEventHandler;-><init>(Landroid/media/audiofx/Visualizer;Landroid/media/audiofx/Visualizer;Landroid/os/Looper;)V

    #@22
    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    #@24
    .line 606
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    :goto_0
    return v1

    #@25
    .line 584
    .end local v1    # "status":I
    .local p3, "waveform":Z
    .restart local p4    # "fft":Z
    :catchall_0
    move-exception v3

    #@26
    monitor-exit v2

    #@27
    throw v3

    #@28
    .line 598
    .end local p3    # "waveform":Z
    .end local p4    # "fft":Z
    .restart local v0    # "looper":Landroid/os/Looper;
    .restart local v1    # "status":I
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@2b
    move-result-object v0

    #@2c
    if-eqz v0, :cond_3

    #@2e
    .line 599
    new-instance v2, Landroid/media/audiofx/Visualizer$NativeEventHandler;

    #@30
    invoke-direct {v2, p0, p0, v0}, Landroid/media/audiofx/Visualizer$NativeEventHandler;-><init>(Landroid/media/audiofx/Visualizer;Landroid/media/audiofx/Visualizer;Landroid/os/Looper;)V

    #@33
    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    #@35
    goto :goto_0

    #@36
    .line 601
    :cond_3
    iput-object v3, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    #@38
    .line 602
    const/4 v1, -0x3

    #@39
    goto :goto_0
.end method

.method public setEnabled(Z)I
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v2, 0x1

    #@2
    .line 256
    iget-object v3, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 257
    :try_start_0
    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@7
    if-nez v4, :cond_0

    #@9
    .line 258
    new-instance v1, Ljava/lang/IllegalStateException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "setEnabled() called in wrong state: "

    #@13
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@19
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 256
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v3

    #@27
    throw v1

    #@28
    .line 260
    :cond_0
    const/4 v0, 0x0

    #@29
    .line 261
    .local v0, "status":I
    if-eqz p1, :cond_2

    #@2b
    :try_start_1
    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@2d
    if-ne v4, v2, :cond_2

    #@2f
    .line 263
    :goto_0
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setEnabled(Z)I

    #@32
    move-result v0

    #@33
    .line 264
    if-nez v0, :cond_1

    #@35
    .line 265
    if-eqz p1, :cond_3

    #@37
    :goto_1
    iput v1, p0, Landroid/media/audiofx/Visualizer;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    :cond_1
    monitor-exit v3

    #@3a
    .line 268
    return v0

    #@3b
    .line 262
    :cond_2
    if-nez p1, :cond_1

    #@3d
    :try_start_2
    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    if-ne v4, v1, :cond_1

    #@41
    goto :goto_0

    #@42
    :cond_3
    move v1, v2

    #@43
    .line 265
    goto :goto_1
.end method

.method public setMeasurementMode(I)I
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 381
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 382
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 383
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "setMeasurementMode() called in wrong state: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 384
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@17
    .line 383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 381
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0

    #@26
    .line 386
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setMeasurementMode(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result v0

    #@2a
    monitor-exit v1

    #@2b
    return v0
.end method

.method public setScalingMode(I)I
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 345
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 346
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "setScalingMode() called in wrong state: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 348
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    #@17
    .line 347
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 345
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0

    #@26
    .line 350
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setScalingMode(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result v0

    #@2a
    monitor-exit v1

    #@2b
    return v0
.end method

.method public setServerDiedListener(Landroid/media/audiofx/Visualizer$OnServerDiedListener;)I
    .locals 2
    .param p1, "listener"    # Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    #@0
    .prologue
    .line 640
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 641
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 643
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 640
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method
