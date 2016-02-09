.class public abstract Landroid/view/OrientationEventListener;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OrientationEventListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final ORIENTATION_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OrientationEventListener"

.field private static final localLOGV:Z


# instance fields
.field private mEnabled:Z

.field private mOldListener:Landroid/view/OrientationListener;

.field private mOrientation:I

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static synthetic -get0(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/view/OrientationEventListener;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/view/OrientationEventListener;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    #@2
    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 56
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    #@4
    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rate"    # I

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    #@6
    .line 36
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    #@9
    .line 69
    const-string/jumbo v0, "sensor"

    #@c
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/hardware/SensorManager;

    #@12
    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    #@14
    .line 70
    iput p2, p0, Landroid/view/OrientationEventListener;->mRate:I

    #@16
    .line 71
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    #@18
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    #@1f
    .line 72
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 74
    new-instance v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    #@25
    invoke-direct {v0, p0}, Landroid/view/OrientationEventListener$SensorEventListenerImpl;-><init>(Landroid/view/OrientationEventListener;)V

    #@28
    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    #@2a
    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public disable()V
    .locals 2

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 103
    const-string/jumbo v0, "OrientationEventListener"

    #@7
    const-string/jumbo v1, "Cannot detect sensors. Invalid disable"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 104
    return-void

    #@e
    .line 106
    :cond_0
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 108
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    #@14
    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    #@16
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@19
    .line 109
    const/4 v0, 0x0

    #@1a
    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    #@1c
    .line 101
    :cond_1
    return-void
.end method

.method public enable()V
    .locals 4

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 88
    const-string/jumbo v0, "OrientationEventListener"

    #@7
    const-string/jumbo v1, "Cannot detect sensors. Not enabled"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 89
    return-void

    #@e
    .line 91
    :cond_0
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    #@10
    if-nez v0, :cond_1

    #@12
    .line 93
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    #@14
    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    #@16
    iget-object v2, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    #@18
    iget v3, p0, Landroid/view/OrientationEventListener;->mRate:I

    #@1a
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    #@1d
    .line 94
    const/4 v0, 0x1

    #@1e
    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    #@20
    .line 86
    :cond_1
    return-void
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method registerListener(Landroid/view/OrientationListener;)V
    .locals 0
    .param p1, "lis"    # Landroid/view/OrientationListener;

    #@0
    .prologue
    .line 79
    iput-object p1, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    #@2
    .line 78
    return-void
.end method
