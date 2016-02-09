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
    .line 2115
    .local p3, "callbackMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;>;"
    iput-object p1, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    #@2
    .line 2117
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 2118
    iput-object p3, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    #@7
    .line 2119
    iput-object p4, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@9
    .line 2120
    iput-object p5, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCm:Landroid/net/ConnectivityManager;

    #@b
    .line 2116
    return-void
.end method

.method private getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 4
    .param p1, "req"    # Landroid/net/NetworkRequest;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2232
    iget-object v2, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 2233
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
    .line 2235
    if-nez v0, :cond_0

    #@e
    .line 2236
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
    .line 2238
    :cond_0
    return-object v0

    #@30
    .line 2232
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
    .line 2227
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
    .line 2125
    const-string/jumbo v5, "ConnectivityManager.CallbackHandler"

    #@3
    new-instance v6, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v7, "CM callback handler got msg "

    #@b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v6

    #@f
    iget v7, p1, Landroid/os/Message;->what:I

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 2126
    const-class v5, Landroid/net/NetworkRequest;

    #@1e
    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Landroid/net/NetworkRequest;

    #@24
    .line 2127
    .local v4, "request":Landroid/net/NetworkRequest;
    const-class v5, Landroid/net/Network;

    #@26
    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Landroid/net/Network;

    #@2c
    .line 2128
    .local v3, "network":Landroid/net/Network;
    iget v5, p1, Landroid/os/Message;->what:I

    #@2e
    packed-switch v5, :pswitch_data_0

    #@31
    .line 2124
    :cond_0
    :goto_0
    return-void

    #@32
    .line 2130
    :pswitch_0
    const-string/jumbo v5, "PRECHECK"

    #@35
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@38
    move-result-object v0

    #@39
    .line 2131
    .local v0, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@3b
    .line 2132
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onPreCheck(Landroid/net/Network;)V

    #@3e
    goto :goto_0

    #@3f
    .line 2137
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_1
    const-string/jumbo v5, "AVAILABLE"

    #@42
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@45
    move-result-object v0

    #@46
    .line 2138
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@48
    .line 2139
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    #@4b
    goto :goto_0

    #@4c
    .line 2144
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_2
    const-string/jumbo v5, "LOSING"

    #@4f
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@52
    move-result-object v0

    #@53
    .line 2145
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@55
    .line 2146
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@57
    invoke-virtual {v0, v3, v5}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    #@5a
    goto :goto_0

    #@5b
    .line 2151
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_3
    const-string/jumbo v5, "LOST"

    #@5e
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@61
    move-result-object v0

    #@62
    .line 2152
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@64
    .line 2153
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    #@67
    goto :goto_0

    #@68
    .line 2158
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_4
    const-string/jumbo v5, "UNAVAIL"

    #@6b
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@6e
    move-result-object v0

    #@6f
    .line 2159
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@71
    .line 2160
    invoke-virtual {v0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    #@74
    goto :goto_0

    #@75
    .line 2165
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_5
    const-string/jumbo v5, "CAP_CHANGED"

    #@78
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@7b
    move-result-object v0

    #@7c
    .line 2166
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@7e
    .line 2168
    const-class v5, Landroid/net/NetworkCapabilities;

    #@80
    .line 2167
    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    #@83
    move-result-object v1

    #@84
    check-cast v1, Landroid/net/NetworkCapabilities;

    #@86
    .line 2170
    .local v1, "cap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0, v3, v1}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    #@89
    goto :goto_0

    #@8a
    .line 2175
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v1    # "cap":Landroid/net/NetworkCapabilities;
    :pswitch_6
    const-string/jumbo v5, "IP_CHANGED"

    #@8d
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@90
    move-result-object v0

    #@91
    .line 2176
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@93
    .line 2178
    const-class v5, Landroid/net/LinkProperties;

    #@95
    .line 2177
    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    #@98
    move-result-object v2

    #@99
    check-cast v2, Landroid/net/LinkProperties;

    #@9b
    .line 2180
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v0, v3, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    #@9e
    goto :goto_0

    #@9f
    .line 2185
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    :pswitch_7
    const-string/jumbo v5, "SUSPENDED"

    #@a2
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@a5
    move-result-object v0

    #@a6
    .line 2186
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@a8
    .line 2187
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkSuspended(Landroid/net/Network;)V

    #@ab
    goto :goto_0

    #@ac
    .line 2192
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_8
    const-string/jumbo v5, "RESUMED"

    #@af
    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    #@b2
    move-result-object v0

    #@b3
    .line 2193
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_0

    #@b5
    .line 2194
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkResumed(Landroid/net/Network;)V

    #@b8
    goto/16 :goto_0

    #@ba
    .line 2199
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_9
    const/4 v0, 0x0

    #@bb
    .line 2200
    .local v0, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v6, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    #@bd
    monitor-enter v6

    #@be
    .line 2201
    :try_start_0
    iget-object v5, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    #@c0
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c3
    move-result-object v0

    #@c4
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c6
    .local v0, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    monitor-exit v6

    #@c7
    .line 2203
    if-eqz v0, :cond_2

    #@c9
    .line 2204
    iget-object v6, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@cb
    monitor-enter v6

    #@cc
    .line 2205
    :try_start_1
    iget-object v5, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@ce
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@d1
    move-result v5

    #@d2
    if-nez v5, :cond_1

    #@d4
    .line 2206
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$CallbackHandler;->getLooper()Landroid/os/Looper;

    #@d7
    move-result-object v5

    #@d8
    invoke-virtual {v5}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@db
    :cond_1
    monitor-exit v6

    #@dc
    goto/16 :goto_0

    #@de
    .line 2200
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :catchall_0
    move-exception v5

    #@df
    monitor-exit v6

    #@e0
    throw v5

    #@e1
    .line 2204
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :catchall_1
    move-exception v5

    #@e2
    monitor-exit v6

    #@e3
    throw v5

    #@e4
    .line 2210
    :cond_2
    const-string/jumbo v5, "ConnectivityManager.CallbackHandler"

    #@e7
    const-string/jumbo v6, "callback not found for RELEASED message"

    #@ea
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ed
    goto/16 :goto_0

    #@ef
    .line 2215
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_a
    const-string/jumbo v5, "ConnectivityManager.CallbackHandler"

    #@f2
    const-string/jumbo v6, "Listener quitting"

    #@f5
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f8
    .line 2216
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$CallbackHandler;->getLooper()Landroid/os/Looper;

    #@fb
    move-result-object v5

    #@fc
    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    #@ff
    goto/16 :goto_0

    #@101
    .line 2220
    :pswitch_b
    iget-object v6, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    #@103
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@105
    check-cast v5, Landroid/net/NetworkCapabilities;

    #@107
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@109
    invoke-static {v6, v5, v7}, Landroid/net/ConnectivityManager;->-wrap0(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V

    #@10c
    goto/16 :goto_0

    #@10e
    .line 2128
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
