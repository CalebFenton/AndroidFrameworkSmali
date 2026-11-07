.class final Landroid/hardware/SystemSensorManager$InjectEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InjectEventQueue"
.end annotation


# instance fields
.field private blacklist mMode:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Landroid/hardware/SystemSensorManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "mode"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1144
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 1145
    iput p4, p0, Landroid/hardware/SystemSensorManager$InjectEventQueue;->mMode:I

    .line 1146
    return-void
.end method


# virtual methods
.method protected greylist-max-o addSensorEvent(Landroid/hardware/Sensor;)V
    .registers 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 1165
    return-void
.end method

.method protected greylist-max-o dispatchFlushCompleteEvent(I)V
    .registers 2
    .param p1, "handle"    # I

    .line 1160
    return-void
.end method

.method protected greylist-max-o dispatchSensorEvent(I[FIJ)V
    .registers 6
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 1155
    return-void
.end method

.method blacklist getDataInjectionMode()I
    .registers 2

    .line 1173
    iget v0, p0, Landroid/hardware/SystemSensorManager$InjectEventQueue;->mMode:I

    return v0
.end method

.method greylist-max-o injectSensorData(I[FIJ)I
    .registers 7
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 1149
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorDataBase(I[FIJ)I

    move-result v0

    return v0
.end method

.method protected greylist-max-o removeSensorEvent(Landroid/hardware/Sensor;)V
    .registers 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 1170
    return-void
.end method
