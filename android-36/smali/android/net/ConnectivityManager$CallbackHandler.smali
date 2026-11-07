.class Landroid/net/ConnectivityManager$CallbackHandler;
.super Landroid/os/Handler;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackHandler"
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ConnectivityManager.CallbackHandler"


# direct methods
.method constructor blacklist <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 4626
    const-string v0, "Handler cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/os/Looper;)V

    .line 4627
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 4622
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4623
    return-void
.end method

.method private greylist-max-o getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Message;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4717
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .line 4631
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_14

    .line 4635
    invoke-static {}, Landroid/net/ConnectivityManager;->-$$Nest$sfgetsInstance()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/net/ConnectivityManager;->-$$Nest$mexpireRequest(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V

    .line 4636
    return-void

    .line 4639
    :cond_14
    const-class v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v0}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/NetworkRequest;

    .line 4640
    .local v1, "request":Landroid/net/NetworkRequest;
    const-class v0, Landroid/net/Network;

    invoke-direct {p0, p1, v0}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Network;

    .line 4642
    .local v3, "network":Landroid/net/Network;
    invoke-static {}, Landroid/net/ConnectivityManager;->-$$Nest$sfgetsCallbacks()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 4643
    :try_start_2b
    invoke-static {}, Landroid/net/ConnectivityManager;->-$$Nest$sfgetsCallbacks()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 4644
    .local v0, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-nez v0, :cond_5d

    .line 4645
    const-string v4, "ConnectivityManager.CallbackHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callback not found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    .line 4646
    invoke-static {v6}, Landroid/net/ConnectivityManager;->getCallbackName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4645
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    monitor-exit v2

    return-void

    .line 4649
    :cond_5d
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_70

    .line 4650
    invoke-static {}, Landroid/net/ConnectivityManager;->-$$Nest$sfgetsCallbacks()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4651
    invoke-static {}, Landroid/net/ConnectivityManager;->-$$Nest$sfgetALREADY_UNREGISTERED()Landroid/net/NetworkRequest;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/ConnectivityManager$NetworkCallback;->-$$Nest$fputnetworkRequest(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)V

    .line 4653
    :cond_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_2b .. :try_end_71} :catchall_fa

    .line 4658
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_fe

    :pswitch_76
    move-object v2, v0

    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v2, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    goto/16 :goto_f9

    .line 4660
    .end local v2    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_79
    const-class v2, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 4661
    .local v2, "cap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onReserved(Landroid/net/NetworkCapabilities;)V

    .line 4662
    move-object v2, v0

    goto/16 :goto_f9

    .line 4698
    .end local v2    # "cap":Landroid/net/NetworkCapabilities;
    :pswitch_87
    const-class v2, Landroid/net/LocalNetworkInfo;

    invoke-direct {p0, p1, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LocalNetworkInfo;

    .line 4699
    .local v2, "info":Landroid/net/LocalNetworkInfo;
    invoke-virtual {v0, v3, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLocalNetworkInfoChanged(Landroid/net/Network;Landroid/net/LocalNetworkInfo;)V

    .line 4700
    move-object v2, v0

    goto/16 :goto_f9

    .line 4711
    .end local v2    # "info":Landroid/net/LocalNetworkInfo;
    :pswitch_95
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onBlockedStatusChanged(Landroid/net/Network;I)V

    move-object v2, v0

    goto/16 :goto_f9

    .line 4707
    :pswitch_9d
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkResumed(Landroid/net/Network;)V

    .line 4708
    move-object v2, v0

    goto :goto_f9

    .line 4703
    :pswitch_a2
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkSuspended(Landroid/net/Network;)V

    .line 4704
    move-object v2, v0

    goto :goto_f9

    .line 4693
    :pswitch_a7
    const-class v2, Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 4694
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v0, v3, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 4695
    move-object v2, v0

    goto :goto_f9

    .line 4688
    .end local v2    # "lp":Landroid/net/LinkProperties;
    :pswitch_b4
    const-class v2, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 4689
    .local v2, "cap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0, v3, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 4690
    move-object v2, v0

    goto :goto_f9

    .line 4684
    .end local v2    # "cap":Landroid/net/NetworkCapabilities;
    :pswitch_c1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 4685
    move-object v2, v0

    goto :goto_f9

    .line 4680
    :pswitch_c6
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 4681
    move-object v2, v0

    goto :goto_f9

    .line 4676
    :pswitch_cb
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    .line 4677
    move-object v2, v0

    goto :goto_f9

    .line 4669
    :pswitch_d2
    const-class v2, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/net/NetworkCapabilities;

    .line 4670
    .local v4, "cap":Landroid/net/NetworkCapabilities;
    const-class v2, Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/net/LinkProperties;

    .line 4671
    .local v5, "lp":Landroid/net/LinkProperties;
    const-class v2, Landroid/net/LocalNetworkInfo;

    invoke-direct {p0, p1, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/net/LocalNetworkInfo;

    .line 4672
    .local v6, "lni":Landroid/net/LocalNetworkInfo;
    iget v7, p1, Landroid/os/Message;->arg1:I

    move-object v2, v0

    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v2, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-virtual/range {v2 .. v7}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/LocalNetworkInfo;I)V

    .line 4673
    goto :goto_f9

    .line 4665
    .end local v2    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v4    # "cap":Landroid/net/NetworkCapabilities;
    .end local v5    # "lp":Landroid/net/LinkProperties;
    .end local v6    # "lni":Landroid/net/LocalNetworkInfo;
    .restart local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_f4
    move-object v2, v0

    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .restart local v2    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onPreCheck(Landroid/net/Network;)V

    .line 4666
    nop

    .line 4714
    :goto_f9
    return-void

    .line 4653
    .end local v2    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :catchall_fa
    move-exception v0

    :try_start_fb
    monitor-exit v2
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v0

    nop

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_f4
        :pswitch_d2
        :pswitch_cb
        :pswitch_c6
        :pswitch_c1
        :pswitch_b4
        :pswitch_a7
        :pswitch_76
        :pswitch_a2
        :pswitch_9d
        :pswitch_95
        :pswitch_87
        :pswitch_79
    .end packed-switch
.end method
