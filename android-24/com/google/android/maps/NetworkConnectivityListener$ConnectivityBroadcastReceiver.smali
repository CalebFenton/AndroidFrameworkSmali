.class Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/NetworkConnectivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/NetworkConnectivityListener;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/NetworkConnectivityListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/maps/NetworkConnectivityListener;

    #@0
    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/NetworkConnectivityListener;Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/maps/NetworkConnectivityListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/google/android/maps/NetworkConnectivityListener;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 94
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    #@8
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_0

    #@e
    .line 95
    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #@10
    invoke-static {v5}, Lcom/google/android/maps/NetworkConnectivityListener;->-get1(Lcom/google/android/maps/NetworkConnectivityListener;)Z

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_1

    #@16
    .line 96
    :cond_0
    const-string/jumbo v5, "NetworkConnectivityListener"

    #@19
    new-instance v6, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v7, "onReceived() called with "

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    iget-object v7, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #@27
    invoke-static {v7}, Lcom/google/android/maps/NetworkConnectivityListener;->-get2(Lcom/google/android/maps/NetworkConnectivityListener;)Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7}, Lcom/google/android/maps/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    const-string/jumbo v7, " and "

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 97
    return-void

    #@46
    .line 101
    :cond_1
    const-string/jumbo v5, "noConnectivity"

    #@49
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@4c
    move-result v3

    #@4d
    .line 103
    .local v3, "noConnectivity":Z
    if-eqz v3, :cond_2

    #@4f
    .line 104
    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #@51
    sget-object v6, Lcom/google/android/maps/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@53
    invoke-static {v5, v6}, Lcom/google/android/maps/NetworkConnectivityListener;->-set4(Lcom/google/android/maps/NetworkConnectivityListener;Lcom/google/android/maps/NetworkConnectivityListener$State;)Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@56
    .line 109
    :goto_0
    iget-object v6, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #@58
    .line 110
    const-string/jumbo v5, "networkInfo"

    #@5b
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5e
    move-result-object v5

    #@5f
    check-cast v5, Landroid/net/NetworkInfo;

    #@61
    .line 109
    invoke-static {v6, v5}, Lcom/google/android/maps/NetworkConnectivityListener;->-set1(Lcom/google/android/maps/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    #@64
    .line 111
    iget-object v6, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #@66
    .line 112
    const-string/jumbo v5, "otherNetwork"

    #@69
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@6c
    move-result-object v5

    #@6d
    check-cast v5, Landroid/net/NetworkInfo;

    #@6f
    .line 111
    invoke-static {v6, v5}, Lcom/google/android/maps/NetworkConnectivityListener;->-set2(Lcom/google/android/maps/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    #@72
    .line 114
    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #@74
    const-string/jumbo v6, "reason"

    #@77
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    invoke-static {v5, v6}, Lcom/google/android/maps/NetworkConnectivityListener;->-set3(Lcom/google/android/maps/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;

    #@7e
    .line 115
    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #@80
    .line 116
    const-string/jumbo v6, "isFailover"

    #@83
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@86
    move-result v6

    #@87
    .line 115
    invoke-static {v5, v6}, Lcom/google/android/maps/NetworkConnectivityListener;->-set0(Lcom/google/android/maps/NetworkConnectivityListener;Z)Z

    #@8a
    .line 125
    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #@8c
    invoke-static {v5}, Lcom/google/android/maps/NetworkConnectivityListener;->-get0(Lcom/google/android/maps/NetworkConnectivityListener;)Ljava/util/HashMap;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@93
    move-result-object v5

    #@94
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@97
    move-result-object v1

    #@98
    .line 126
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Handler;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9b
    move-result v5

    #@9c
    if-eqz v5, :cond_3

    #@9e
    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a1
    move-result-object v4

    #@a2
    check-cast v4, Landroid/os/Handler;

    #@a4
    .line 128
    .local v4, "target":Landroid/os/Handler;
    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #@a6
    invoke-static {v5}, Lcom/google/android/maps/NetworkConnectivityListener;->-get0(Lcom/google/android/maps/NetworkConnectivityListener;)Ljava/util/HashMap;

    #@a9
    move-result-object v5

    #@aa
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    move-result-object v5

    #@ae
    check-cast v5, Ljava/lang/Integer;

    #@b0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@b3
    move-result v5

    #@b4
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@b7
    move-result-object v2

    #@b8
    .line 129
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@bb
    goto :goto_1

    #@bc
    .line 106
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Handler;>;"
    .end local v2    # "message":Landroid/os/Message;
    .end local v4    # "target":Landroid/os/Handler;
    :cond_2
    iget-object v5, p0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/google/android/maps/NetworkConnectivityListener;

    #@be
    sget-object v6, Lcom/google/android/maps/NetworkConnectivityListener$State;->CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@c0
    invoke-static {v5, v6}, Lcom/google/android/maps/NetworkConnectivityListener;->-set4(Lcom/google/android/maps/NetworkConnectivityListener;Lcom/google/android/maps/NetworkConnectivityListener$State;)Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@c3
    goto :goto_0

    #@c4
    .line 91
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Handler;>;"
    :cond_3
    return-void
.end method
