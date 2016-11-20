.class Landroid/hardware/SystemSensorManager$1;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;

.field final synthetic val$addedList:Ljava/util/List;

.field final synthetic val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

.field final synthetic val$removedList:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/SystemSensorManager;
    .param p3, "val$callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    #@0
    .prologue
    .line 363
    .local p2, "val$addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p4, "val$removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$1;->this$0:Landroid/hardware/SystemSensorManager;

    #@2
    iput-object p2, p0, Landroid/hardware/SystemSensorManager$1;->val$addedList:Ljava/util/List;

    #@4
    iput-object p3, p0, Landroid/hardware/SystemSensorManager$1;->val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

    #@6
    iput-object p4, p0, Landroid/hardware/SystemSensorManager$1;->val$removedList:Ljava/util/List;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 366
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$1;->val$addedList:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/hardware/Sensor;

    #@12
    .line 367
    .local v0, "s":Landroid/hardware/Sensor;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$1;->val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

    #@14
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager$DynamicSensorCallback;->onDynamicSensorConnected(Landroid/hardware/Sensor;)V

    #@17
    goto :goto_0

    #@18
    .line 369
    .end local v0    # "s":Landroid/hardware/Sensor;
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$1;->val$removedList:Ljava/util/List;

    #@1a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_1

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/hardware/Sensor;

    #@2a
    .line 370
    .restart local v0    # "s":Landroid/hardware/Sensor;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$1;->val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

    #@2c
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager$DynamicSensorCallback;->onDynamicSensorDisconnected(Landroid/hardware/Sensor;)V

    #@2f
    goto :goto_1

    #@30
    .line 365
    .end local v0    # "s":Landroid/hardware/Sensor;
    :cond_1
    return-void
.end method
