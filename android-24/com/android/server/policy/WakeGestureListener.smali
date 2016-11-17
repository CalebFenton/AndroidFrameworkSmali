.class public abstract Lcom/android/server/policy/WakeGestureListener;
.super Ljava/lang/Object;
.source "WakeGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WakeGestureListener$1;,
        Lcom/android/server/policy/WakeGestureListener$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeGestureListener"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/TriggerEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mSensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTriggerRequested:Z

.field private final mWakeUpRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/WakeGestureListener;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mWakeUpRunnable:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/WakeGestureListener;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    #@2
    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    #@a
    .line 84
    new-instance v0, Lcom/android/server/policy/WakeGestureListener$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/policy/WakeGestureListener$1;-><init>(Lcom/android/server/policy/WakeGestureListener;)V

    #@f
    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    #@11
    .line 94
    new-instance v0, Lcom/android/server/policy/WakeGestureListener$2;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/policy/WakeGestureListener$2;-><init>(Lcom/android/server/policy/WakeGestureListener;)V

    #@16
    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mWakeUpRunnable:Ljava/lang/Runnable;

    #@18
    .line 43
    const-string/jumbo v0, "sensor"

    #@1b
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/hardware/SensorManager;

    #@21
    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    #@23
    .line 44
    iput-object p2, p0, Lcom/android/server/policy/WakeGestureListener;->mHandler:Landroid/os/Handler;

    #@25
    .line 46
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    #@27
    const/16 v1, 0x17

    #@29
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    #@2f
    .line 42
    return-void
.end method


# virtual methods
.method public cancelWakeUpTrigger()V
    .locals 4

    #@0
    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 69
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    #@e
    .line 70
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    #@10
    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    #@12
    iget-object v3, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    #@14
    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit v1

    #@18
    .line 66
    return-void

    #@19
    .line 67
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 77
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v2, "WakeGestureListener"

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v2, "  "

    #@26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object p2

    #@2e
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string/jumbo v2, "mTriggerRequested="

    #@3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget-boolean v2, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    #@40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    const-string/jumbo v2, "mSensor="

    #@57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    #@5d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    monitor-exit v1

    #@69
    .line 75
    return-void

    #@6a
    .line 76
    :catchall_0
    move-exception v0

    #@6b
    monitor-exit v1

    #@6c
    throw v0
.end method

.method public isSupported()Z
    .locals 2

    #@0
    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    monitor-exit v1

    #@9
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0

    #@c
    .line 52
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public abstract onWakeUp()V
.end method

.method public requestWakeUpTrigger()V
    .locals 4

    #@0
    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eqz v0, :cond_1

    #@b
    :cond_0
    :goto_0
    monitor-exit v1

    #@c
    .line 57
    return-void

    #@d
    .line 60
    :cond_1
    const/4 v0, 0x1

    #@e
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    #@10
    .line 61
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    #@12
    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    #@14
    iget-object v3, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    #@16
    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    goto :goto_0

    #@1a
    .line 58
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method
