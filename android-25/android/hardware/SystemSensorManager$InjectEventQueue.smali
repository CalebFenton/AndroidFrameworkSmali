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
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/SystemSensorManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 798
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$InjectEventQueue;->this$0:Landroid/hardware/SystemSensorManager;

    #@2
    .line 799
    const/4 v0, 0x1

    #@3
    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    #@6
    .line 798
    return-void
.end method


# virtual methods
.method protected addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 817
    return-void
.end method

.method protected dispatchFlushCompleteEvent(I)V
    .locals 0
    .param p1, "handle"    # I

    #@0
    .prologue
    .line 812
    return-void
.end method

.method protected dispatchSensorEvent(I[FIJ)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    #@0
    .prologue
    .line 808
    return-void
.end method

.method injectSensorData(I[FIJ)I
    .locals 2
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    #@0
    .prologue
    .line 803
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->injectSensorDataBase(I[FIJ)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 822
    return-void
.end method
