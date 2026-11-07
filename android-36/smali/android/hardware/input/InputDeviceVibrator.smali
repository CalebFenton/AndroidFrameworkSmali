.class final Landroid/hardware/input/InputDeviceVibrator;
.super Landroid/os/Vibrator;
.source "InputDeviceVibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputDeviceVibrator"


# instance fields
.field private final blacklist mDelegates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Vibrator$OnVibratorStateChangedListener;",
            "Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceId:I

.field private final blacklist mGlobal:Landroid/hardware/input/InputManagerGlobal;

.field private final blacklist mToken:Landroid/os/Binder;

.field private final blacklist mVibratorInfo:Landroid/os/VibratorInfo;


# direct methods
.method constructor blacklist <init>(II)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "vibratorId"    # I

    .line 54
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    .line 55
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    .line 56
    iput p1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    .line 57
    new-instance v0, Landroid/os/VibratorInfo$Builder;

    invoke-direct {v0, p2}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 58
    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo$Builder;->setCapabilities(J)Landroid/os/VibratorInfo$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 61
    invoke-virtual {v0, v2}, Landroid/os/VibratorInfo$Builder;->setSupportedEffects([I)Landroid/os/VibratorInfo$Builder;

    move-result-object v0

    new-array v1, v1, [I

    .line 62
    invoke-virtual {v0, v1}, Landroid/os/VibratorInfo$Builder;->setSupportedBraking([I)Landroid/os/VibratorInfo$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 64
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mToken:Landroid/os/Binder;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 107
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 109
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/hardware/input/InputDeviceVibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 110
    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 123
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 128
    :try_start_9
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 129
    const-string v1, "InputDeviceVibrator"

    const-string v2, "Listener already registered."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    monitor-exit v0

    return-void

    .line 133
    :cond_1a
    new-instance v1, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;

    invoke-direct {v1, p0, p2, p1}, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;-><init>(Landroid/hardware/input/InputDeviceVibrator;Landroid/os/Vibrator$OnVibratorStateChangedListener;Ljava/util/concurrent/Executor;)V

    .line 135
    .local v1, "delegate":Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;
    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v3, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    invoke-virtual {v2, v3, v1}, Landroid/hardware/input/InputManagerGlobal;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 136
    const-string v2, "InputDeviceVibrator"

    const-string v3, "Failed to register vibrate state listener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    monitor-exit v0

    return-void

    .line 139
    :cond_32
    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    nop

    .end local v1    # "delegate":Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public whitelist cancel()V
    .registers 4

    .line 184
    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManagerGlobal;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 185
    return-void
.end method

.method public blacklist cancel(I)V
    .registers 2
    .param p1, "usageFilter"    # I

    .line 189
    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceVibrator;->cancel()V

    .line 190
    return-void
.end method

.method public blacklist getInfo()Landroid/os/VibratorInfo;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-object v0
.end method

.method public whitelist hasAmplitudeControl()Z
    .registers 4

    .line 170
    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasVibrator()Z
    .registers 2

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isVibrating()Z
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->isVibrating(I)Z

    move-result v0

    return v0
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 152
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 156
    :try_start_6
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 157
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;

    .line 159
    .local v1, "delegate":Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;
    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v3, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    invoke-virtual {v2, v3, v1}, Landroid/hardware/input/InputManagerGlobal;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 160
    const-string v2, "InputDeviceVibrator"

    const-string v3, "Failed to unregister vibrate state listener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit v0

    return-void

    .line 163
    :cond_29
    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v1    # "delegate":Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;
    :cond_2e
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 179
    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1, p3, v2}, Landroid/hardware/input/InputManagerGlobal;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V

    .line 180
    return-void
.end method
