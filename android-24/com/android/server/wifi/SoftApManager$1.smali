.class Lcom/android/server/wifi/SoftApManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/SoftApManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Landroid/os/INetworkManagementService;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wifi/SoftApManager$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SoftApManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SoftApManager;

    #@0
    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$1;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 115
    const-string/jumbo v2, "availableArray"

    #@3
    .line 114
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@6
    move-result-object v1

    #@7
    .line 117
    .local v1, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "activeArray"

    #@a
    .line 116
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@d
    move-result-object v0

    #@e
    .line 118
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$1;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@10
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-get0(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@13
    move-result-object v2

    #@14
    .line 120
    new-instance v3, Lcom/android/server/wifi/SoftApManager$TetherStateChange;

    #@16
    invoke-direct {v3, v1, v0}, Lcom/android/server/wifi/SoftApManager$TetherStateChange;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@19
    .line 119
    const/4 v4, 0x2

    #@1a
    .line 118
    invoke-virtual {v2, v4, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@1d
    .line 113
    return-void
.end method
