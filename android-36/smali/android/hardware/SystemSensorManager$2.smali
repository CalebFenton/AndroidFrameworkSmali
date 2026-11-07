.class Landroid/hardware/SystemSensorManager$2;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"

# interfaces
.implements Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager;->setupVirtualDeviceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/SystemSensorManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/SystemSensorManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 573
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onVirtualDeviceClosed(I)V
    .registers 7
    .param p1, "deviceId"    # I

    .line 576
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmFullRuntimeSensorListByDevice(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 577
    :try_start_7
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmFullRuntimeSensorListByDevice(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v1

    .line 578
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 579
    .local v1, "removedSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v1, :cond_2b

    .line 580
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 581
    .local v3, "s":Landroid/hardware/Sensor;
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v4, v3}, Landroid/hardware/SystemSensorManager;->-$$Nest$mcleanupSensorConnection(Landroid/hardware/SystemSensorManager;Landroid/hardware/Sensor;)V

    .line 582
    .end local v3    # "s":Landroid/hardware/Sensor;
    goto :goto_19

    .line 584
    :cond_2b
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmRuntimeSensorListByDeviceByType(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 585
    .end local v1    # "removedSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    monitor-exit v0

    .line 586
    return-void

    .line 585
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v1
.end method
