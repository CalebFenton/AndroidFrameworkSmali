.class public abstract Landroid/view/OrientationEventListener;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;,
        Landroid/view/OrientationEventListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist ORIENTATION_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "OrientationEventListener"

.field private static final greylist-max-o localLOGV:Z = false


# instance fields
.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mOldListener:Landroid/view/OrientationListener;

.field private greylist-max-o mOrientation:I

.field private greylist-max-o mRate:I

.field private greylist-max-o mSensor:Landroid/hardware/Sensor;

.field private greylist-max-o mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private greylist-max-o mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOldListener(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;
    .registers 1

    iget-object p0, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOrientation(Landroid/view/OrientationEventListener;)I
    .registers 1

    iget p0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOrientation(Landroid/view/OrientationEventListener;I)V
    .registers 2

    iput p1, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 62
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rate"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 74
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 75
    iput p2, p0, Landroid/view/OrientationEventListener;->mRate:I

    .line 76
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    .line 77
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3e

    .line 79
    nop

    .line 80
    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_CAMERA_COMPAT_SIMULATE_REQUESTED_ORIENTATION:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 81
    new-instance v0, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;

    new-instance v1, Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    invoke-direct {v1, p0}, Landroid/view/OrientationEventListener$SensorEventListenerImpl;-><init>(Landroid/view/OrientationEventListener;)V

    invoke-direct {v0, p0, v1}, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;-><init>(Landroid/view/OrientationEventListener;Landroid/view/OrientationEventListener$SensorEventListenerImpl;)V

    goto :goto_3c

    .line 82
    :cond_37
    new-instance v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Landroid/view/OrientationEventListener$SensorEventListenerImpl;-><init>(Landroid/view/OrientationEventListener;)V

    :goto_3c
    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 84
    :cond_3e
    return-void
.end method


# virtual methods
.method public whitelist canDetectOrientation()Z
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist disable()V
    .registers 3

    .line 110
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_c

    .line 111
    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 114
    :cond_c
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 116
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 119
    :cond_1b
    return-void
.end method

.method public whitelist enable()V
    .registers 5

    .line 95
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_c

    .line 96
    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 99
    :cond_c
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    if-nez v0, :cond_1e

    .line 101
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/OrientationEventListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 104
    :cond_1e
    return-void
.end method

.method public abstract whitelist onOrientationChanged(I)V
.end method

.method greylist-max-o registerListener(Landroid/view/OrientationListener;)V
    .registers 2
    .param p1, "lis"    # Landroid/view/OrientationListener;

    .line 87
    iput-object p1, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    .line 88
    return-void
.end method
