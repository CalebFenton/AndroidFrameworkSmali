.class Lcom/android/server/wifi/WifiTrafficPoller$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiTrafficPoller;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    #@0
    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

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
    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 86
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    #@7
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 87
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@f
    .line 88
    const-string/jumbo v0, "networkInfo"

    #@12
    .line 87
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/net/NetworkInfo;

    #@18
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-set1(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    #@1b
    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@1d
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-wrap0(Lcom/android/server/wifi/WifiTrafficPoller;)V

    #@20
    .line 84
    return-void

    #@21
    .line 89
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 90
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@30
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get4(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@33
    move-result-object v0

    #@34
    const/4 v1, 0x0

    #@35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@38
    goto :goto_0

    #@39
    .line 91
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_0

    #@46
    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@48
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get4(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@4b
    move-result-object v0

    #@4c
    const/4 v1, 0x1

    #@4d
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@50
    goto :goto_0
.end method
