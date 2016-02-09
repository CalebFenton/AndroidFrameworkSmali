.class Lcom/android/server/net/NetworkPolicyManagerService$15;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    #@0
    .prologue
    .line 2326
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2329
    move-object/from16 v0, p1

    #@2
    iget v15, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v15, :pswitch_data_0

    #@7
    .line 2413
    :pswitch_0
    const/4 v15, 0x0

    #@8
    return v15

    #@9
    .line 2331
    :pswitch_1
    move-object/from16 v0, p1

    #@b
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@d
    .line 2332
    .local v13, "uid":I
    move-object/from16 v0, p1

    #@f
    iget v14, v0, Landroid/os/Message;->arg2:I

    #@11
    .line 2333
    .local v14, "uidRules":I
    move-object/from16 v0, p0

    #@13
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@15
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@18
    move-result-object v15

    #@19
    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@1c
    move-result v5

    #@1d
    .line 2334
    .local v5, "length":I
    const/4 v3, 0x0

    #@1e
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    #@20
    .line 2335
    move-object/from16 v0, p0

    #@22
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@24
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@27
    move-result-object v15

    #@28
    invoke-virtual {v15, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@2b
    move-result-object v6

    #@2c
    check-cast v6, Landroid/net/INetworkPolicyListener;

    #@2e
    .line 2336
    .local v6, "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v6, :cond_0

    #@30
    .line 2338
    :try_start_0
    invoke-interface {v6, v13, v14}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 2334
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@35
    goto :goto_0

    #@36
    .line 2339
    :catch_0
    move-exception v2

    #@37
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@38
    .line 2343
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v6    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    #@3a
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@3c
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@3f
    move-result-object v15

    #@40
    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@43
    .line 2344
    const/4 v15, 0x1

    #@44
    return v15

    #@45
    .line 2347
    .end local v3    # "i":I
    .end local v5    # "length":I
    .end local v13    # "uid":I
    .end local v14    # "uidRules":I
    :pswitch_2
    move-object/from16 v0, p1

    #@47
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@49
    check-cast v7, [Ljava/lang/String;

    #@4b
    .line 2348
    .local v7, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@4d
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@4f
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@52
    move-result-object v15

    #@53
    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@56
    move-result v5

    #@57
    .line 2349
    .restart local v5    # "length":I
    const/4 v3, 0x0

    #@58
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v5, :cond_3

    #@5a
    .line 2350
    move-object/from16 v0, p0

    #@5c
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@5e
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@61
    move-result-object v15

    #@62
    invoke-virtual {v15, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@65
    move-result-object v6

    #@66
    check-cast v6, Landroid/net/INetworkPolicyListener;

    #@68
    .line 2351
    .restart local v6    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v6, :cond_2

    #@6a
    .line 2353
    :try_start_1
    invoke-interface {v6, v7}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@6d
    .line 2349
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@6f
    goto :goto_2

    #@70
    .line 2354
    :catch_1
    move-exception v2

    #@71
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_3

    #@72
    .line 2358
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v6    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_3
    move-object/from16 v0, p0

    #@74
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@76
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@79
    move-result-object v15

    #@7a
    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@7d
    .line 2359
    const/4 v15, 0x1

    #@7e
    return v15

    #@7f
    .line 2362
    .end local v3    # "i":I
    .end local v5    # "length":I
    .end local v7    # "meteredIfaces":[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p1

    #@81
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@83
    check-cast v4, Ljava/lang/String;

    #@85
    .line 2364
    .local v4, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    #@87
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@89
    invoke-virtual {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    #@8c
    .line 2365
    move-object/from16 v0, p0

    #@8e
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@90
    iget-object v0, v15, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@92
    move-object/from16 v16, v0

    #@94
    monitor-enter v16

    #@95
    .line 2366
    :try_start_2
    move-object/from16 v0, p0

    #@97
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@99
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    #@9c
    move-result-object v15

    #@9d
    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a0
    move-result v15

    #@a1
    if-eqz v15, :cond_4

    #@a3
    .line 2370
    :try_start_3
    move-object/from16 v0, p0

    #@a5
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@a7
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    #@aa
    move-result-object v15

    #@ab
    invoke-interface {v15}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ae
    .line 2375
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    #@b0
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@b2
    invoke-virtual {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    #@b5
    .line 2376
    move-object/from16 v0, p0

    #@b7
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@b9
    invoke-virtual {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@bc
    :cond_4
    monitor-exit v16

    #@bd
    .line 2379
    const/4 v15, 0x1

    #@be
    return v15

    #@bf
    .line 2365
    :catchall_0
    move-exception v15

    #@c0
    monitor-exit v16

    #@c1
    throw v15

    #@c2
    .line 2382
    .end local v4    # "iface":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    #@c4
    iget v15, v0, Landroid/os/Message;->arg1:I

    #@c6
    if-eqz v15, :cond_6

    #@c8
    const/4 v12, 0x1

    #@c9
    .line 2383
    .local v12, "restrictBackground":Z
    :goto_5
    move-object/from16 v0, p0

    #@cb
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@cd
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@d0
    move-result-object v15

    #@d1
    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@d4
    move-result v5

    #@d5
    .line 2384
    .restart local v5    # "length":I
    const/4 v3, 0x0

    #@d6
    .restart local v3    # "i":I
    :goto_6
    if-ge v3, v5, :cond_7

    #@d8
    .line 2385
    move-object/from16 v0, p0

    #@da
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@dc
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@df
    move-result-object v15

    #@e0
    invoke-virtual {v15, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e3
    move-result-object v6

    #@e4
    check-cast v6, Landroid/net/INetworkPolicyListener;

    #@e6
    .line 2386
    .restart local v6    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v6, :cond_5

    #@e8
    .line 2388
    :try_start_5
    invoke-interface {v6, v12}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    #@eb
    .line 2384
    :cond_5
    :goto_7
    add-int/lit8 v3, v3, 0x1

    #@ed
    goto :goto_6

    #@ee
    .line 2382
    .end local v3    # "i":I
    .end local v5    # "length":I
    .end local v6    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v12    # "restrictBackground":Z
    :cond_6
    const/4 v12, 0x0

    #@ef
    .restart local v12    # "restrictBackground":Z
    goto :goto_5

    #@f0
    .line 2389
    .restart local v3    # "i":I
    .restart local v5    # "length":I
    .restart local v6    # "listener":Landroid/net/INetworkPolicyListener;
    :catch_2
    move-exception v2

    #@f1
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_7

    #@f2
    .line 2393
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v6    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_7
    move-object/from16 v0, p0

    #@f4
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@f6
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@f9
    move-result-object v15

    #@fa
    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@fd
    .line 2394
    const/4 v15, 0x1

    #@fe
    return v15

    #@ff
    .line 2397
    .end local v3    # "i":I
    .end local v5    # "length":I
    .end local v12    # "restrictBackground":Z
    :pswitch_5
    move-object/from16 v0, p1

    #@101
    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@103
    check-cast v15, Ljava/lang/Long;

    #@105
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    #@108
    move-result-wide v8

    #@109
    .line 2401
    .local v8, "lowestRule":J
    const-wide/16 v16, 0x3e8

    #@10b
    :try_start_6
    div-long v10, v8, v16

    #@10d
    .line 2402
    .local v10, "persistThreshold":J
    move-object/from16 v0, p0

    #@10f
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@111
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    #@114
    move-result-object v15

    #@115
    invoke-interface {v15, v10, v11}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    #@118
    .line 2406
    .end local v10    # "persistThreshold":J
    :goto_8
    const/4 v15, 0x1

    #@119
    return v15

    #@11a
    .line 2409
    .end local v8    # "lowestRule":J
    :pswitch_6
    move-object/from16 v0, p0

    #@11c
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@11e
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@121
    .line 2410
    const/4 v15, 0x1

    #@122
    return v15

    #@123
    .line 2403
    .restart local v8    # "lowestRule":J
    :catch_3
    move-exception v2

    #@124
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_8

    #@125
    .line 2371
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v8    # "lowestRule":J
    .restart local v4    # "iface":Ljava/lang/String;
    :catch_4
    move-exception v2

    #@126
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_4

    #@127
    .line 2329
    nop

    #@128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
