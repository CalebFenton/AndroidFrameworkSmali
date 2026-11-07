.class Landroid/hardware/SystemSensorManager$3;
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

    .line 593
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$3;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 596
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 598
    const-string v0, "SensorManager"

    const-string v1, "DYNS received DYNAMIC_SENSOR_CHANGED broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$3;->this$0:Landroid/hardware/SystemSensorManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager;->-$$Nest$fputmDynamicSensorListDirty(Landroid/hardware/SystemSensorManager;Z)V

    .line 602
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$3;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$mupdateDynamicSensorList(Landroid/hardware/SystemSensorManager;)V

    .line 604
    :cond_1e
    return-void
.end method
