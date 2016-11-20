.class Lcom/android/server/net/NetworkPolicyManagerService$14;
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
    .line 3259
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 38
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3262
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v29, v0

    #@6
    packed-switch v29, :pswitch_data_0

    #@9
    .line 3415
    :pswitch_0
    const/16 v29, 0x0

    #@b
    return v29

    #@c
    .line 3264
    :pswitch_1
    move-object/from16 v0, p1

    #@e
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@10
    move/from16 v23, v0

    #@12
    .line 3265
    .local v23, "uid":I
    move-object/from16 v0, p1

    #@14
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@16
    move/from16 v24, v0

    #@18
    .line 3266
    .local v24, "uidRules":I
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1c
    move-object/from16 v29, v0

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@22
    move-object/from16 v30, v0

    #@24
    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    #@27
    move-result-object v30

    #@28
    move-object/from16 v0, v29

    #@2a
    move-object/from16 v1, v30

    #@2c
    move/from16 v2, v23

    #@2e
    move/from16 v3, v24

    #@30
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    #@33
    .line 3267
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@37
    move-object/from16 v29, v0

    #@39
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@3c
    move-result-object v29

    #@3d
    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@40
    move-result v11

    #@41
    .line 3268
    .local v11, "length":I
    const/4 v8, 0x0

    #@42
    .local v8, "i":I
    :goto_0
    if-ge v8, v11, :cond_0

    #@44
    .line 3269
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@48
    move-object/from16 v29, v0

    #@4a
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@4d
    move-result-object v29

    #@4e
    move-object/from16 v0, v29

    #@50
    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@53
    move-result-object v12

    #@54
    check-cast v12, Landroid/net/INetworkPolicyListener;

    #@56
    .line 3270
    .local v12, "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    #@58
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@5a
    move-object/from16 v29, v0

    #@5c
    move-object/from16 v0, v29

    #@5e
    move/from16 v1, v23

    #@60
    move/from16 v2, v24

    #@62
    invoke-static {v0, v12, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    #@65
    .line 3268
    add-int/lit8 v8, v8, 0x1

    #@67
    goto :goto_0

    #@68
    .line 3272
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_0
    move-object/from16 v0, p0

    #@6a
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@6c
    move-object/from16 v29, v0

    #@6e
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@71
    move-result-object v29

    #@72
    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@75
    .line 3273
    const/16 v29, 0x1

    #@77
    return v29

    #@78
    .line 3276
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v23    # "uid":I
    .end local v24    # "uidRules":I
    :pswitch_2
    move-object/from16 v0, p1

    #@7a
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7c
    check-cast v13, [Ljava/lang/String;

    #@7e
    .line 3277
    .local v13, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@82
    move-object/from16 v29, v0

    #@84
    move-object/from16 v0, p0

    #@86
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@88
    move-object/from16 v30, v0

    #@8a
    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    #@8d
    move-result-object v30

    #@8e
    move-object/from16 v0, v29

    #@90
    move-object/from16 v1, v30

    #@92
    invoke-static {v0, v1, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    #@95
    .line 3278
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@99
    move-object/from16 v29, v0

    #@9b
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@9e
    move-result-object v29

    #@9f
    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@a2
    move-result v11

    #@a3
    .line 3279
    .restart local v11    # "length":I
    const/4 v8, 0x0

    #@a4
    .restart local v8    # "i":I
    :goto_1
    if-ge v8, v11, :cond_1

    #@a6
    .line 3280
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@aa
    move-object/from16 v29, v0

    #@ac
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@af
    move-result-object v29

    #@b0
    move-object/from16 v0, v29

    #@b2
    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@b5
    move-result-object v12

    #@b6
    check-cast v12, Landroid/net/INetworkPolicyListener;

    #@b8
    .line 3281
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    #@ba
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@bc
    move-object/from16 v29, v0

    #@be
    move-object/from16 v0, v29

    #@c0
    invoke-static {v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    #@c3
    .line 3279
    add-int/lit8 v8, v8, 0x1

    #@c5
    goto :goto_1

    #@c6
    .line 3283
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    #@c8
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@ca
    move-object/from16 v29, v0

    #@cc
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@cf
    move-result-object v29

    #@d0
    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@d3
    .line 3284
    const/16 v29, 0x1

    #@d5
    return v29

    #@d6
    .line 3287
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v13    # "meteredIfaces":[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p1

    #@d8
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@da
    check-cast v9, Ljava/lang/String;

    #@dc
    .line 3289
    .local v9, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@e0
    move-object/from16 v29, v0

    #@e2
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    #@e5
    .line 3290
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@e9
    move-object/from16 v29, v0

    #@eb
    move-object/from16 v0, v29

    #@ed
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@ef
    move-object/from16 v30, v0

    #@f1
    monitor-enter v30

    #@f2
    .line 3291
    :try_start_0
    move-object/from16 v0, p0

    #@f4
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@f6
    move-object/from16 v29, v0

    #@f8
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    #@fb
    move-result-object v29

    #@fc
    move-object/from16 v0, v29

    #@fe
    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@101
    move-result v29

    #@102
    if-eqz v29, :cond_2

    #@104
    .line 3295
    :try_start_1
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@108
    move-object/from16 v29, v0

    #@10a
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    #@10d
    move-result-object v29

    #@10e
    invoke-interface/range {v29 .. v29}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@111
    .line 3300
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    #@113
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@115
    move-object/from16 v29, v0

    #@117
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    #@11a
    .line 3301
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@11e
    move-object/from16 v29, v0

    #@120
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@123
    :cond_2
    monitor-exit v30

    #@124
    .line 3304
    const/16 v29, 0x1

    #@126
    return v29

    #@127
    .line 3290
    :catchall_0
    move-exception v29

    #@128
    monitor-exit v30

    #@129
    throw v29

    #@12a
    .line 3307
    .end local v9    # "iface":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    #@12c
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@12e
    move/from16 v29, v0

    #@130
    if-eqz v29, :cond_3

    #@132
    const/16 v21, 0x1

    #@134
    .line 3308
    .local v21, "restrictBackground":Z
    :goto_3
    move-object/from16 v0, p0

    #@136
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@138
    move-object/from16 v29, v0

    #@13a
    move-object/from16 v0, p0

    #@13c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@13e
    move-object/from16 v30, v0

    #@140
    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    #@143
    move-result-object v30

    #@144
    move-object/from16 v0, v29

    #@146
    move-object/from16 v1, v30

    #@148
    move/from16 v2, v21

    #@14a
    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    #@14d
    .line 3309
    move-object/from16 v0, p0

    #@14f
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@151
    move-object/from16 v29, v0

    #@153
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@156
    move-result-object v29

    #@157
    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@15a
    move-result v11

    #@15b
    .line 3310
    .restart local v11    # "length":I
    const/4 v8, 0x0

    #@15c
    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v11, :cond_4

    #@15e
    .line 3311
    move-object/from16 v0, p0

    #@160
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@162
    move-object/from16 v29, v0

    #@164
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@167
    move-result-object v29

    #@168
    move-object/from16 v0, v29

    #@16a
    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@16d
    move-result-object v12

    #@16e
    check-cast v12, Landroid/net/INetworkPolicyListener;

    #@170
    .line 3312
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@174
    move-object/from16 v29, v0

    #@176
    move-object/from16 v0, v29

    #@178
    move/from16 v1, v21

    #@17a
    invoke-static {v0, v12, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    #@17d
    .line 3310
    add-int/lit8 v8, v8, 0x1

    #@17f
    goto :goto_4

    #@180
    .line 3307
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v21    # "restrictBackground":Z
    :cond_3
    const/16 v21, 0x0

    #@182
    .restart local v21    # "restrictBackground":Z
    goto :goto_3

    #@183
    .line 3314
    .restart local v8    # "i":I
    .restart local v11    # "length":I
    :cond_4
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@187
    move-object/from16 v29, v0

    #@189
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@18c
    move-result-object v29

    #@18d
    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@190
    .line 3316
    new-instance v10, Landroid/content/Intent;

    #@192
    const-string/jumbo v29, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    #@195
    move-object/from16 v0, v29

    #@197
    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19a
    .line 3317
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v29, 0x40000000    # 2.0f

    #@19c
    move/from16 v0, v29

    #@19e
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@1a1
    .line 3318
    move-object/from16 v0, p0

    #@1a3
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1a5
    move-object/from16 v29, v0

    #@1a7
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    #@1aa
    move-result-object v29

    #@1ab
    sget-object v30, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1ad
    move-object/from16 v0, v29

    #@1af
    move-object/from16 v1, v30

    #@1b1
    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1b4
    .line 3319
    const/16 v29, 0x1

    #@1b6
    return v29

    #@1b7
    .line 3332
    .end local v8    # "i":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "length":I
    .end local v21    # "restrictBackground":Z
    :pswitch_5
    move-object/from16 v0, p1

    #@1b9
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1bb
    move/from16 v23, v0

    #@1bd
    .line 3333
    .restart local v23    # "uid":I
    move-object/from16 v0, p1

    #@1bf
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@1c1
    move/from16 v29, v0

    #@1c3
    const/16 v30, 0x1

    #@1c5
    move/from16 v0, v29

    #@1c7
    move/from16 v1, v30

    #@1c9
    if-ne v0, v1, :cond_5

    #@1cb
    const/4 v6, 0x1

    #@1cc
    .line 3334
    .local v6, "changed":Z
    :goto_5
    move-object/from16 v0, p1

    #@1ce
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d0
    move-object/from16 v27, v0

    #@1d2
    check-cast v27, Ljava/lang/Boolean;

    #@1d4
    .line 3337
    .local v27, "whitelisted":Ljava/lang/Boolean;
    if-eqz v27, :cond_7

    #@1d6
    .line 3338
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    #@1d9
    move-result v28

    #@1da
    .line 3339
    .local v28, "whitelistedBool":Z
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1de
    move-object/from16 v29, v0

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1e4
    move-object/from16 v30, v0

    #@1e6
    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    #@1e9
    move-result-object v30

    #@1ea
    move-object/from16 v0, v29

    #@1ec
    move-object/from16 v1, v30

    #@1ee
    move/from16 v2, v23

    #@1f0
    move/from16 v3, v28

    #@1f2
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    #@1f5
    .line 3341
    move-object/from16 v0, p0

    #@1f7
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1f9
    move-object/from16 v29, v0

    #@1fb
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@1fe
    move-result-object v29

    #@1ff
    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@202
    move-result v11

    #@203
    .line 3342
    .restart local v11    # "length":I
    const/4 v8, 0x0

    #@204
    .restart local v8    # "i":I
    :goto_6
    if-ge v8, v11, :cond_6

    #@206
    .line 3343
    move-object/from16 v0, p0

    #@208
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@20a
    move-object/from16 v29, v0

    #@20c
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@20f
    move-result-object v29

    #@210
    move-object/from16 v0, v29

    #@212
    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@215
    move-result-object v12

    #@216
    check-cast v12, Landroid/net/INetworkPolicyListener;

    #@218
    .line 3344
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    #@21a
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@21c
    move-object/from16 v29, v0

    #@21e
    move-object/from16 v0, v29

    #@220
    move/from16 v1, v23

    #@222
    move/from16 v2, v28

    #@224
    invoke-static {v0, v12, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    #@227
    .line 3342
    add-int/lit8 v8, v8, 0x1

    #@229
    goto :goto_6

    #@22a
    .line 3333
    .end local v6    # "changed":Z
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v27    # "whitelisted":Ljava/lang/Boolean;
    .end local v28    # "whitelistedBool":Z
    :cond_5
    const/4 v6, 0x0

    #@22b
    .restart local v6    # "changed":Z
    goto :goto_5

    #@22c
    .line 3347
    .restart local v8    # "i":I
    .restart local v11    # "length":I
    .restart local v27    # "whitelisted":Ljava/lang/Boolean;
    .restart local v28    # "whitelistedBool":Z
    :cond_6
    move-object/from16 v0, p0

    #@22e
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@230
    move-object/from16 v29, v0

    #@232
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@235
    move-result-object v29

    #@236
    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@239
    .line 3349
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v28    # "whitelistedBool":Z
    :cond_7
    move-object/from16 v0, p0

    #@23b
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@23d
    move-object/from16 v29, v0

    #@23f
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    #@242
    move-result-object v29

    #@243
    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@246
    move-result-object v20

    #@247
    .line 3350
    .local v20, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v20

    #@249
    move/from16 v1, v23

    #@24b
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@24e
    move-result-object v17

    #@24f
    .line 3351
    .local v17, "packages":[Ljava/lang/String;
    if-eqz v6, :cond_8

    #@251
    if-eqz v17, :cond_8

    #@253
    .line 3353
    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    #@256
    move-result v26

    #@257
    .line 3354
    .local v26, "userId":I
    const/16 v29, 0x0

    #@259
    move-object/from16 v0, v17

    #@25b
    array-length v0, v0

    #@25c
    move/from16 v30, v0

    #@25e
    :goto_7
    move/from16 v0, v29

    #@260
    move/from16 v1, v30

    #@262
    if-ge v0, v1, :cond_8

    #@264
    aget-object v16, v17, v29

    #@266
    .line 3355
    .local v16, "packageName":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    #@268
    .line 3356
    const-string/jumbo v31, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    #@26b
    .line 3355
    move-object/from16 v0, v31

    #@26d
    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@270
    .line 3357
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v16

    #@272
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@275
    .line 3358
    const/high16 v31, 0x40000000    # 2.0f

    #@277
    move/from16 v0, v31

    #@279
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@27c
    .line 3359
    move-object/from16 v0, p0

    #@27e
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@280
    move-object/from16 v31, v0

    #@282
    invoke-static/range {v31 .. v31}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    #@285
    move-result-object v31

    #@286
    invoke-static/range {v26 .. v26}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@289
    move-result-object v32

    #@28a
    move-object/from16 v0, v31

    #@28c
    move-object/from16 v1, v32

    #@28e
    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@291
    .line 3354
    add-int/lit8 v29, v29, 0x1

    #@293
    goto :goto_7

    #@294
    .line 3362
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v26    # "userId":I
    :cond_8
    const/16 v29, 0x1

    #@296
    return v29

    #@297
    .line 3365
    .end local v6    # "changed":Z
    .end local v17    # "packages":[Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "uid":I
    .end local v27    # "whitelisted":Ljava/lang/Boolean;
    :pswitch_6
    move-object/from16 v0, p1

    #@299
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@29b
    move/from16 v23, v0

    #@29d
    .line 3366
    .restart local v23    # "uid":I
    move-object/from16 v0, p1

    #@29f
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@2a1
    move/from16 v29, v0

    #@2a3
    const/16 v30, 0x1

    #@2a5
    move/from16 v0, v29

    #@2a7
    move/from16 v1, v30

    #@2a9
    if-ne v0, v1, :cond_9

    #@2ab
    const/4 v4, 0x1

    #@2ac
    .line 3368
    .local v4, "blacklisted":Z
    :goto_8
    move-object/from16 v0, p0

    #@2ae
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2b0
    move-object/from16 v29, v0

    #@2b2
    move-object/from16 v0, p0

    #@2b4
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2b6
    move-object/from16 v30, v0

    #@2b8
    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    #@2bb
    move-result-object v30

    #@2bc
    move-object/from16 v0, v29

    #@2be
    move-object/from16 v1, v30

    #@2c0
    move/from16 v2, v23

    #@2c2
    invoke-static {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    #@2c5
    .line 3370
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2c9
    move-object/from16 v29, v0

    #@2cb
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@2ce
    move-result-object v29

    #@2cf
    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@2d2
    move-result v11

    #@2d3
    .line 3371
    .restart local v11    # "length":I
    const/4 v8, 0x0

    #@2d4
    .restart local v8    # "i":I
    :goto_9
    if-ge v8, v11, :cond_a

    #@2d6
    .line 3372
    move-object/from16 v0, p0

    #@2d8
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2da
    move-object/from16 v29, v0

    #@2dc
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@2df
    move-result-object v29

    #@2e0
    move-object/from16 v0, v29

    #@2e2
    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@2e5
    move-result-object v12

    #@2e6
    check-cast v12, Landroid/net/INetworkPolicyListener;

    #@2e8
    .line 3373
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    #@2ea
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2ec
    move-object/from16 v29, v0

    #@2ee
    move-object/from16 v0, v29

    #@2f0
    move/from16 v1, v23

    #@2f2
    invoke-static {v0, v12, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    #@2f5
    .line 3371
    add-int/lit8 v8, v8, 0x1

    #@2f7
    goto :goto_9

    #@2f8
    .line 3366
    .end local v4    # "blacklisted":Z
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_9
    const/4 v4, 0x0

    #@2f9
    .restart local v4    # "blacklisted":Z
    goto :goto_8

    #@2fa
    .line 3376
    .restart local v8    # "i":I
    .restart local v11    # "length":I
    :cond_a
    move-object/from16 v0, p0

    #@2fc
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2fe
    move-object/from16 v29, v0

    #@300
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@303
    move-result-object v29

    #@304
    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@307
    .line 3377
    const/16 v29, 0x1

    #@309
    return v29

    #@30a
    .line 3380
    .end local v4    # "blacklisted":Z
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v23    # "uid":I
    :pswitch_7
    move-object/from16 v0, p1

    #@30c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@30e
    move-object/from16 v29, v0

    #@310
    check-cast v29, Ljava/lang/Long;

    #@312
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    #@315
    move-result-wide v14

    #@316
    .line 3384
    .local v14, "lowestRule":J
    const-wide/16 v30, 0x3e8

    #@318
    :try_start_3
    div-long v18, v14, v30

    #@31a
    .line 3385
    .local v18, "persistThreshold":J
    move-object/from16 v0, p0

    #@31c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@31e
    move-object/from16 v29, v0

    #@320
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    #@323
    move-result-object v29

    #@324
    move-object/from16 v0, v29

    #@326
    move-wide/from16 v1, v18

    #@328
    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@32b
    .line 3389
    .end local v18    # "persistThreshold":J
    :goto_a
    const/16 v29, 0x1

    #@32d
    return v29

    #@32e
    .line 3392
    .end local v14    # "lowestRule":J
    :pswitch_8
    move-object/from16 v0, p0

    #@330
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@332
    move-object/from16 v30, v0

    #@334
    move-object/from16 v0, p1

    #@336
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@338
    move-object/from16 v29, v0

    #@33a
    check-cast v29, Ljava/lang/String;

    #@33c
    move-object/from16 v0, v30

    #@33e
    move-object/from16 v1, v29

    #@340
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    #@343
    .line 3394
    move-object/from16 v0, p0

    #@345
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@347
    move-object/from16 v30, v0

    #@349
    move-object/from16 v0, p1

    #@34b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@34d
    move-object/from16 v29, v0

    #@34f
    check-cast v29, Ljava/lang/String;

    #@351
    .line 3395
    move-object/from16 v0, p1

    #@353
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@355
    move/from16 v31, v0

    #@357
    move/from16 v0, v31

    #@359
    int-to-long v0, v0

    #@35a
    move-wide/from16 v32, v0

    #@35c
    const/16 v31, 0x20

    #@35e
    shl-long v32, v32, v31

    #@360
    move-object/from16 v0, p1

    #@362
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@364
    move/from16 v31, v0

    #@366
    move/from16 v0, v31

    #@368
    int-to-long v0, v0

    #@369
    move-wide/from16 v34, v0

    #@36b
    const-wide v36, 0xffffffffL

    #@370
    and-long v34, v34, v36

    #@372
    or-long v32, v32, v34

    #@374
    .line 3394
    move-object/from16 v0, v30

    #@376
    move-object/from16 v1, v29

    #@378
    move-wide/from16 v2, v32

    #@37a
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap12(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    #@37d
    .line 3396
    const/16 v29, 0x1

    #@37f
    return v29

    #@380
    .line 3399
    :pswitch_9
    move-object/from16 v0, p0

    #@382
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@384
    move-object/from16 v30, v0

    #@386
    move-object/from16 v0, p1

    #@388
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@38a
    move-object/from16 v29, v0

    #@38c
    check-cast v29, Ljava/lang/String;

    #@38e
    move-object/from16 v0, v30

    #@390
    move-object/from16 v1, v29

    #@392
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    #@395
    .line 3400
    const/16 v29, 0x1

    #@397
    return v29

    #@398
    .line 3403
    :pswitch_a
    move-object/from16 v0, p1

    #@39a
    iget v5, v0, Landroid/os/Message;->arg1:I

    #@39c
    .line 3404
    .local v5, "chain":I
    move-object/from16 v0, p1

    #@39e
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@3a0
    move/from16 v22, v0

    #@3a2
    .line 3405
    .local v22, "toggle":I
    move-object/from16 v0, p1

    #@3a4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a6
    move-object/from16 v25, v0

    #@3a8
    check-cast v25, Landroid/util/SparseIntArray;

    #@3aa
    .line 3406
    .local v25, "uidRules":Landroid/util/SparseIntArray;
    if-eqz v25, :cond_b

    #@3ac
    .line 3407
    move-object/from16 v0, p0

    #@3ae
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@3b0
    move-object/from16 v29, v0

    #@3b2
    move-object/from16 v0, v29

    #@3b4
    move-object/from16 v1, v25

    #@3b6
    invoke-static {v0, v5, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/util/SparseIntArray;)V

    #@3b9
    .line 3409
    :cond_b
    if-eqz v22, :cond_c

    #@3bb
    .line 3410
    move-object/from16 v0, p0

    #@3bd
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@3bf
    move-object/from16 v30, v0

    #@3c1
    const/16 v29, 0x1

    #@3c3
    move/from16 v0, v22

    #@3c5
    move/from16 v1, v29

    #@3c7
    if-ne v0, v1, :cond_d

    #@3c9
    const/16 v29, 0x1

    #@3cb
    :goto_b
    move-object/from16 v0, v30

    #@3cd
    move/from16 v1, v29

    #@3cf
    invoke-static {v0, v5, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;IZ)V

    #@3d2
    .line 3412
    :cond_c
    const/16 v29, 0x1

    #@3d4
    return v29

    #@3d5
    .line 3410
    :cond_d
    const/16 v29, 0x0

    #@3d7
    goto :goto_b

    #@3d8
    .line 3386
    .end local v5    # "chain":I
    .end local v22    # "toggle":I
    .end local v25    # "uidRules":Landroid/util/SparseIntArray;
    .restart local v14    # "lowestRule":J
    :catch_0
    move-exception v7

    #@3d9
    .local v7, "e":Landroid/os/RemoteException;
    goto/16 :goto_a

    #@3db
    .line 3296
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v14    # "lowestRule":J
    .restart local v9    # "iface":Ljava/lang/String;
    :catch_1
    move-exception v7

    #@3dc
    .restart local v7    # "e":Landroid/os/RemoteException;
    goto/16 :goto_2

    #@3de
    .line 3262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
