.class public abstract Lcom/android/server/policy/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z


# instance fields
.field private mCurrentRotation:I

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/WindowOrientationListener;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 47
    const-string/jumbo v0, "debug.orientation.log"

    #@3
    const/4 v1, 0x0

    #@4
    .line 46
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    #@a
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 68
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    #@4
    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rate"    # I

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    #@6
    .line 59
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    #@d
    .line 84
    iput-object p2, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    #@f
    .line 85
    const-string/jumbo v0, "sensor"

    #@12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/hardware/SensorManager;

    #@18
    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    #@1a
    .line 86
    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    #@1c
    .line 87
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    #@1e
    const/4 v1, 0x1

    #@1f
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    #@25
    .line 89
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 91
    new-instance v0, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    #@2b
    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;-><init>(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;)V

    #@2e
    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    #@30
    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 2

    #@0
    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;
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
    .line 185
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public disable()V
    .locals 3

    #@0
    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 122
    const-string/jumbo v0, "WindowOrientationListener"

    #@a
    const-string/jumbo v2, "Cannot detect sensors. Invalid disable"

    #@d
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 123
    return-void

    #@12
    .line 125
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 126
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 127
    const-string/jumbo v0, "WindowOrientationListener"

    #@1d
    const-string/jumbo v2, "WindowOrientationListener disabled"

    #@20
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    #@25
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    #@27
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@2a
    .line 130
    const/4 v0, 0x0

    #@2b
    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    :cond_2
    monitor-exit v1

    #@2e
    .line 119
    return-void

    #@2f
    .line 120
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 204
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v2, "WindowOrientationListener"

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
    .line 205
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
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string/jumbo v2, "mEnabled="

    #@3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

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
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    const-string/jumbo v2, "mCurrentRotation="

    #@57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    #@5d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@68
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    const-string/jumbo v2, "mSensor="

    #@74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    #@7a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@85
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    const-string/jumbo v2, "mRate="

    #@91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    #@97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a2
    .line 211
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    #@a4
    if-eqz v0, :cond_0

    #@a6
    .line 212
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    #@a8
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ab
    :cond_0
    monitor-exit v1

    #@ac
    .line 202
    return-void

    #@ad
    .line 203
    :catchall_0
    move-exception v0

    #@ae
    monitor-exit v1

    #@af
    throw v0
.end method

.method public enable()V
    .locals 6

    #@0
    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 102
    const-string/jumbo v0, "WindowOrientationListener"

    #@a
    const-string/jumbo v2, "Cannot detect sensors. Not enabled"

    #@d
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 103
    return-void

    #@12
    .line 105
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    #@14
    if-nez v0, :cond_2

    #@16
    .line 106
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 107
    const-string/jumbo v0, "WindowOrientationListener"

    #@1d
    const-string/jumbo v2, "WindowOrientationListener enabled"

    #@20
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    #@25
    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->-wrap2(Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;)V

    #@28
    .line 110
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    #@2a
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    #@2c
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    #@2e
    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    #@30
    iget-object v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    #@32
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    #@35
    .line 111
    const/4 v0, 0x1

    #@36
    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    :cond_2
    monitor-exit v1

    #@39
    .line 99
    return-void

    #@3a
    .line 100
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v1

    #@3c
    throw v0
.end method

.method public getProposedRotation()I
    .locals 2

    #@0
    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 174
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 175
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    #@9
    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotationLocked()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 177
    :cond_0
    const/4 v0, -0x1

    #@10
    monitor-exit v1

    #@11
    return v0

    #@12
    .line 173
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public onTouchEnd()V
    .locals 4

    #@0
    .prologue
    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@3
    move-result-wide v0

    #@4
    .line 146
    .local v0, "whenElapsedNanos":J
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v3

    #@7
    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 148
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    #@d
    invoke-static {v2, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->-wrap0(Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v3

    #@11
    .line 143
    return-void

    #@12
    .line 146
    :catchall_0
    move-exception v2

    #@13
    monitor-exit v3

    #@14
    throw v2
.end method

.method public onTouchStart()V
    .locals 2

    #@0
    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 138
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorEventListener:Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;

    #@9
    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;->-wrap1(Lcom/android/server/policy/WindowOrientationListener$SensorEventListenerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 135
    return-void

    #@e
    .line 136
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public setCurrentRotation(I)V
    .locals 2
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 160
    :try_start_0
    iput p1, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 158
    return-void

    #@7
    .line 159
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method
