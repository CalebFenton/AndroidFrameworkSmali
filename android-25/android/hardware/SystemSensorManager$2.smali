.class Landroid/hardware/SystemSensorManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/SystemSensorManager;

    #@0
    .prologue
    .line 388
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 391
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    #@7
    if-ne v0, v1, :cond_1

    #@9
    .line 392
    invoke-static {}, Landroid/hardware/SystemSensorManager;->-get0()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 393
    const-string/jumbo v0, "SensorManager"

    #@12
    const-string/jumbo v1, "DYNS received DYNAMIC_SENSOR_CHANED broadcast"

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 396
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    #@1a
    const/4 v1, 0x1

    #@1b
    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager;->-set0(Landroid/hardware/SystemSensorManager;Z)Z

    #@1e
    .line 397
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    #@20
    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-wrap0(Landroid/hardware/SystemSensorManager;)V

    #@23
    .line 390
    :cond_1
    return-void
.end method
