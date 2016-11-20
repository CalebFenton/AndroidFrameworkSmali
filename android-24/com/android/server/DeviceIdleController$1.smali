.class Lcom/android/server/DeviceIdleController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    #@0
    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 325
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 327
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    #@10
    invoke-virtual {v3, p2}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    #@13
    .line 324
    :cond_0
    :goto_0
    return-void

    #@14
    .line 325
    :cond_1
    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_3

    #@1d
    .line 330
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    #@1f
    monitor-enter v4

    #@20
    .line 331
    :try_start_0
    const-string/jumbo v5, "plugged"

    #@23
    const/4 v6, 0x0

    #@24
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@27
    move-result v1

    #@28
    .line 332
    .local v1, "plugged":I
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    #@2a
    if-eqz v1, :cond_2

    #@2c
    const/4 v3, 0x1

    #@2d
    :cond_2
    invoke-virtual {v5, v3}, Lcom/android/server/DeviceIdleController;->updateChargingLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v4

    #@31
    goto :goto_0

    #@32
    .line 325
    .end local v1    # "plugged":I
    :cond_3
    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_0

    #@3b
    .line 336
    const-string/jumbo v4, "android.intent.extra.REPLACING"

    #@3e
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@41
    move-result v3

    #@42
    if-nez v3, :cond_0

    #@44
    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@47
    move-result-object v0

    #@48
    .line 339
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    #@4a
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .local v2, "ssp":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@50
    .line 340
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    #@52
    invoke-virtual {v3, v2}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    #@55
    goto :goto_0

    #@56
    .line 330
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "ssp":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@57
    monitor-exit v4

    #@58
    throw v3
.end method
