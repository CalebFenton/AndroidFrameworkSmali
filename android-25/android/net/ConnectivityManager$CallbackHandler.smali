.class Landroid/net/ConnectivityManager$CallbackHandler;
.super Landroid/os/Handler;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager.CallbackHandler"


# instance fields
.field private final mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ConnectivityManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p4, "refCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p5, "cm"    # Landroid/net/ConnectivityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Landroid/net/ConnectivityManager;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 2675
    .local p3, "callbackMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;>;"
    iput-object p1, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    #@2
    .line 2677
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 2678
    iput-object p3, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    #@7
    .line 2679
    iput-object p4, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@9
    .line 2680
    iput-object p5, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCm:Landroid/net/ConnectivityManager;

    #@b
    .line 2676
    return-void
.end method

.method private getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 4
    .param p1, "req"    # Landroid/net/NetworkRequest;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2794
    iget-object v2, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 2795
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .local v0, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    monitor-exit v2

    #@c
    .line 2797
    if-nez v0, :cond_0

    #@e
    .line 2798
    const-string/jumbo v1, "ConnectivityManager.CallbackHandler"

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "callback not found for "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    const-string/jumbo v3, " message"

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 2800
    :cond_0
    return-object v0

    #@30
    .line 2794
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1
.end method

.method private getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "c"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 2789
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2685
    const-class v5, Landroid/net/NetworkRequest;

    #@2
    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    check-cast v4, Landroid/net/NetworkRequest;

    #@8
    .line 2686
    .local v4, "request":Landroid/net/NetworkRequest;
    const-class v5, Landroid/net/Network;

    #@a
    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/net/Network;

    #@10
    .line 2690
    .local v3, "network":Landroid/net/Network;
    iget v5, p1, Landroid/os/Message;->what:I

    #@12
    packed-switch v5, :pswitch_data_0

    #@15
    .line 2684
    :cond_0
    :goto_0
    return-void

    #@16
    .line 2692
    :pswitch_0
    const-string/jumbo v5, "PRECHECK"

    #@19
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@1c
    move-result-object v0

    #@1d
    .line 2693
    .local v0, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@1f
    .line 2694
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onPreCheck(Landroid/net/Network;)V

    #@22
    goto :goto_0

    #@23
    .line 2699
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_1
    const-string/jumbo v5, "AVAILABLE"

    #@26
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@29
    move-result-object v0

    #@2a
    .line 2700
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@2c
    .line 2701
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    #@2f
    goto :goto_0

    #@30
    .line 2706
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_2
    const-string/jumbo v5, "LOSING"

    #@33
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@36
    move-result-object v0

    #@37
    .line 2707
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@39
    .line 2708
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@3b
    invoke-virtual {v0, v3, v5}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    #@3e
    goto :goto_0

    #@3f
    .line 2713
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_3
    const-string/jumbo v5, "LOST"

    #@42
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@45
    move-result-object v0

    #@46
    .line 2714
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@48
    .line 2715
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    #@4b
    goto :goto_0

    #@4c
    .line 2720
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_4
    const-string/jumbo v5, "UNAVAIL"

    #@4f
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@52
    move-result-object v0

    #@53
    .line 2721
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@55
    .line 2722
    invoke-virtual {v0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    #@58
    goto :goto_0

    #@59
    .line 2727
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_5
    const-string/jumbo v5, "CAP_CHANGED"

    #@5c
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@5f
    move-result-object v0

    #@60
    .line 2728
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@62
    .line 2730
    const-class v5, Landroid/net/NetworkCapabilities;

    #@64
    .line 2729
    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    #@67
    move-result-object v1

    #@68
    check-cast v1, Landroid/net/NetworkCapabilities;

    #@6a
    .line 2732
    .local v1, "cap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0, v3, v1}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    #@6d
    goto :goto_0

    #@6e
    .line 2737
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v1    # "cap":Landroid/net/NetworkCapabilities;
    :pswitch_6
    const-string/jumbo v5, "IP_CHANGED"

    #@71
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@74
    move-result-object v0

    #@75
    .line 2738
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@77
    .line 2740
    const-class v5, Landroid/net/LinkProperties;

    #@79
    .line 2739
    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    #@7c
    move-result-object v2

    #@7d
    check-cast v2, Landroid/net/LinkProperties;

    #@7f
    .line 2742
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v0, v3, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    #@82
    goto :goto_0

    #@83
    .line 2747
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    :pswitch_7
    const-string/jumbo v5, "SUSPENDED"

    #@86
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@89
    move-result-object v0

    #@8a
    .line 2748
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@8c
    .line 2749
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkSuspended(Landroid/net/Network;)V

    #@8f
    goto :goto_0

    #@90
    .line 2754
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_8
    const-string/jumbo v5, "RESUMED"

    #@93
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@96
    move-result-object v0

    #@97
    .line 2755
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@99
    .line 2756
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkResumed(Landroid/net/Network;)V

    #@9c
    goto/16 :goto_0

    #@9e
    .line 2761
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_9
    const/4 v0, 0x0

    #@9f
    .line 2762
    .local v0, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v6, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    #@a1
    monitor-enter v6

    #@a2
    .line 2763
    :try_start_0
    iget-object v5, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    #@a4
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a7
    move-result-object v0

    #@a8
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@aa
    .local v0, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    monitor-exit v6

    #@ab
    .line 2765
    if-eqz v0, :cond_2

    #@ad
    .line 2766
    iget-object v6, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@af
    monitor-enter v6

    #@b0
    .line 2767
    :try_start_1
    iget-object v5, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b2
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@b5
    move-result v5

    #@b6
    if-nez v5, :cond_1

    #@b8
    .line 2768
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$CallbackHandler;->getLooper()Landroid/os/Looper;

    #@bb
    move-result-object v5

    #@bc
    invoke-virtual {v5}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@bf
    :cond_1
    monitor-exit v6

    #@c0
    goto/16 :goto_0

    #@c2
    .line 2762
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :catchall_0
    move-exception v5

    #@c3
    monitor-exit v6

    #@c4
    throw v5

    #@c5
    .line 2766
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :catchall_1
    move-exception v5

    #@c6
    monitor-exit v6

    #@c7
    throw v5

    #@c8
    .line 2772
    :cond_2
    const-string/jumbo v5, "ConnectivityManager.CallbackHandler"

    #@cb
    const-string/jumbo v6, "callback not found for RELEASED message"

    #@ce
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d1
    goto/16 :goto_0

    #@d3
    .line 2777
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_a
    const-string/jumbo v5, "ConnectivityManager.CallbackHandler"

    #@d6
    const-string/jumbo v6, "Listener quitting"

    #@d9
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@dc
    .line 2778
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$CallbackHandler;->getLooper()Landroid/os/Looper;

    #@df
    move-result-object v5

    #@e0
    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    #@e3
    goto/16 :goto_0

    #@e5
    .line 2782
    :pswitch_b
    iget-object v6, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    #@e7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e9
    check-cast v5, Landroid/net/NetworkCapabilities;

    #@eb
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@ed
    invoke-static {v6, v5, v7}, Landroid/net/ConnectivityManager;->-wrap0(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V

    #@f0
    goto/16 :goto_0

    #@f2
    .line 2690
    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
