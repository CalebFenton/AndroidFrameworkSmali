.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    #@0
    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 507
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 508
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 509
    :cond_0
    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    #@a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_3

    #@10
    .line 510
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@12
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    monitor-enter v4

    #@17
    .line 511
    :try_start_0
    const-string/jumbo v3, "connected"

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@1e
    move-result v2

    #@1f
    .line 512
    .local v2, "usbConnected":Z
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@21
    const-string/jumbo v5, "rndis"

    #@24
    const/4 v6, 0x0

    #@25
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@28
    move-result v5

    #@29
    invoke-static {v3, v5}, Lcom/android/server/connectivity/Tethering;->-set0(Lcom/android/server/connectivity/Tethering;Z)Z

    #@2c
    .line 514
    if-eqz v2, :cond_1

    #@2e
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@30
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@38
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get11(Lcom/android/server/connectivity/Tethering;)Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_1

    #@3e
    .line 515
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@40
    const/4 v5, 0x1

    #@41
    invoke-static {v3, v5}, Lcom/android/server/connectivity/Tethering;->-wrap4(Lcom/android/server/connectivity/Tethering;Z)V

    #@44
    .line 517
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@46
    const/4 v5, 0x0

    #@47
    invoke-static {v3, v5}, Lcom/android/server/connectivity/Tethering;->-set1(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    monitor-exit v4

    #@4b
    .line 506
    .end local v2    # "usbConnected":Z
    :cond_2
    :goto_0
    return-void

    #@4c
    .line 510
    :catchall_0
    move-exception v3

    #@4d
    monitor-exit v4

    #@4e
    throw v3

    #@4f
    .line 519
    :cond_3
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    #@52
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v3

    #@56
    if-eqz v3, :cond_4

    #@58
    .line 521
    const-string/jumbo v3, "networkInfo"

    #@5b
    .line 520
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5e
    move-result-object v1

    #@5f
    check-cast v1, Landroid/net/NetworkInfo;

    #@61
    .line 522
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    #@63
    .line 523
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@66
    move-result-object v3

    #@67
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@69
    if-eq v3, v4, :cond_2

    #@6b
    .line 525
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@6d
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    #@70
    move-result-object v3

    #@71
    const/4 v4, 0x3

    #@72
    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@75
    goto :goto_0

    #@76
    .line 527
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4
    const-string/jumbo v3, "android.intent.action.CONFIGURATION_CHANGED"

    #@79
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v3

    #@7d
    if-eqz v3, :cond_2

    #@7f
    .line 528
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@81
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    #@84
    goto :goto_0
.end method
