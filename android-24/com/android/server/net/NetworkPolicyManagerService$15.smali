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
    .line 3116
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 34
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3119
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v26, v0

    #@6
    packed-switch v26, :pswitch_data_0

    #@9
    .line 3264
    :pswitch_0
    const/16 v26, 0x0

    #@b
    return v26

    #@c
    .line 3121
    :pswitch_1
    move-object/from16 v0, p1

    #@e
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@10
    move/from16 v21, v0

    #@12
    .line 3122
    .local v21, "uid":I
    move-object/from16 v0, p1

    #@14
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@16
    move/from16 v22, v0

    #@18
    .line 3123
    .local v22, "uidRules":I
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1c
    move-object/from16 v26, v0

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@22
    move-object/from16 v27, v0

    #@24
    invoke-static/range {v27 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    #@27
    move-result-object v27

    #@28
    move-object/from16 v0, v26

    #@2a
    move-object/from16 v1, v27

    #@2c
    move/from16 v2, v21

    #@2e
    move/from16 v3, v22

    #@30
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    #@33
    .line 3124
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@37
    move-object/from16 v26, v0

    #@39
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@3c
    move-result-object v26

    #@3d
    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@40
    move-result v10

    #@41
    .line 3125
    .local v10, "length":I
    const/4 v7, 0x0

    #@42
    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_0

    #@44
    .line 3126
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@48
    move-object/from16 v26, v0

    #@4a
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@4d
    move-result-object v26

    #@4e
    move-object/from16 v0, v26

    #@50
    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@53
    move-result-object v11

    #@54
    check-cast v11, Landroid/net/INetworkPolicyListener;

    #@56
    .line 3127
    .local v11, "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    #@58
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@5a
    move-object/from16 v26, v0

    #@5c
    move-object/from16 v0, v26

    #@5e
    move/from16 v1, v21

    #@60
    move/from16 v2, v22

    #@62
    invoke-static {v0, v11, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    #@65
    .line 3125
    add-int/lit8 v7, v7, 0x1

    #@67
    goto :goto_0

    #@68
    .line 3129
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_0
    move-object/from16 v0, p0

    #@6a
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@6c
    move-object/from16 v26, v0

    #@6e
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@71
    move-result-object v26

    #@72
    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@75
    .line 3130
    const/16 v26, 0x1

    #@77
    return v26

    #@78
    .line 3133
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v21    # "uid":I
    .end local v22    # "uidRules":I
    :pswitch_2
    move-object/from16 v0, p1

    #@7a
    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7c
    check-cast v14, [Ljava/lang/String;

    #@7e
    .line 3134
    .local v14, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@82
    move-object/from16 v26, v0

    #@84
    move-object/from16 v0, p0

    #@86
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@88
    move-object/from16 v27, v0

    #@8a
    invoke-static/range {v27 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    #@8d
    move-result-object v27

    #@8e
    move-object/from16 v0, v26

    #@90
    move-object/from16 v1, v27

    #@92
    invoke-static {v0, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    #@95
    .line 3135
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@99
    move-object/from16 v26, v0

    #@9b
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@9e
    move-result-object v26

    #@9f
    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@a2
    move-result v10

    #@a3
    .line 3136
    .restart local v10    # "length":I
    const/4 v7, 0x0

    #@a4
    .restart local v7    # "i":I
    :goto_1
    if-ge v7, v10, :cond_1

    #@a6
    .line 3137
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@aa
    move-object/from16 v26, v0

    #@ac
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@af
    move-result-object v26

    #@b0
    move-object/from16 v0, v26

    #@b2
    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@b5
    move-result-object v11

    #@b6
    check-cast v11, Landroid/net/INetworkPolicyListener;

    #@b8
    .line 3138
    .restart local v11    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    #@ba
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@bc
    move-object/from16 v26, v0

    #@be
    move-object/from16 v0, v26

    #@c0
    invoke-static {v0, v11, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    #@c3
    .line 3136
    add-int/lit8 v7, v7, 0x1

    #@c5
    goto :goto_1

    #@c6
    .line 3140
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    #@c8
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@ca
    move-object/from16 v26, v0

    #@cc
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@cf
    move-result-object v26

    #@d0
    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@d3
    .line 3141
    const/16 v26, 0x1

    #@d5
    return v26

    #@d6
    .line 3144
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v14    # "meteredIfaces":[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p1

    #@d8
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@da
    check-cast v8, Ljava/lang/String;

    #@dc
    .line 3146
    .local v8, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@e0
    move-object/from16 v26, v0

    #@e2
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    #@e5
    .line 3147
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@e9
    move-object/from16 v26, v0

    #@eb
    move-object/from16 v0, v26

    #@ed
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@ef
    move-object/from16 v27, v0

    #@f1
    monitor-enter v27

    #@f2
    .line 3148
    :try_start_0
    move-object/from16 v0, p0

    #@f4
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@f6
    move-object/from16 v26, v0

    #@f8
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    #@fb
    move-result-object v26

    #@fc
    move-object/from16 v0, v26

    #@fe
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@101
    move-result v26

    #@102
    if-eqz v26, :cond_2

    #@104
    .line 3152
    :try_start_1
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@108
    move-object/from16 v26, v0

    #@10a
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    #@10d
    move-result-object v26

    #@10e
    invoke-interface/range {v26 .. v26}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@111
    .line 3157
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    #@113
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@115
    move-object/from16 v26, v0

    #@117
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    #@11a
    .line 3158
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@11e
    move-object/from16 v26, v0

    #@120
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@123
    :cond_2
    monitor-exit v27

    #@124
    .line 3161
    const/16 v26, 0x1

    #@126
    return v26

    #@127
    .line 3147
    :catchall_0
    move-exception v26

    #@128
    monitor-exit v27

    #@129
    throw v26

    #@12a
    .line 3164
    .end local v8    # "iface":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    #@12c
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@12e
    move/from16 v26, v0

    #@130
    if-eqz v26, :cond_3

    #@132
    const/16 v20, 0x1

    #@134
    .line 3165
    .local v20, "restrictBackground":Z
    :goto_3
    move-object/from16 v0, p0

    #@136
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@138
    move-object/from16 v26, v0

    #@13a
    move-object/from16 v0, p0

    #@13c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@13e
    move-object/from16 v27, v0

    #@140
    invoke-static/range {v27 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    #@143
    move-result-object v27

    #@144
    move-object/from16 v0, v26

    #@146
    move-object/from16 v1, v27

    #@148
    move/from16 v2, v20

    #@14a
    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    #@14d
    .line 3166
    move-object/from16 v0, p0

    #@14f
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@151
    move-object/from16 v26, v0

    #@153
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@156
    move-result-object v26

    #@157
    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@15a
    move-result v10

    #@15b
    .line 3167
    .restart local v10    # "length":I
    const/4 v7, 0x0

    #@15c
    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v10, :cond_4

    #@15e
    .line 3168
    move-object/from16 v0, p0

    #@160
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@162
    move-object/from16 v26, v0

    #@164
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@167
    move-result-object v26

    #@168
    move-object/from16 v0, v26

    #@16a
    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@16d
    move-result-object v11

    #@16e
    check-cast v11, Landroid/net/INetworkPolicyListener;

    #@170
    .line 3169
    .restart local v11    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@174
    move-object/from16 v26, v0

    #@176
    move-object/from16 v0, v26

    #@178
    move/from16 v1, v20

    #@17a
    invoke-static {v0, v11, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    #@17d
    .line 3167
    add-int/lit8 v7, v7, 0x1

    #@17f
    goto :goto_4

    #@180
    .line 3164
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v20    # "restrictBackground":Z
    :cond_3
    const/16 v20, 0x0

    #@182
    .restart local v20    # "restrictBackground":Z
    goto :goto_3

    #@183
    .line 3171
    .restart local v7    # "i":I
    .restart local v10    # "length":I
    :cond_4
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@187
    move-object/from16 v26, v0

    #@189
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@18c
    move-result-object v26

    #@18d
    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@190
    .line 3173
    new-instance v9, Landroid/content/Intent;

    #@192
    const-string/jumbo v26, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    #@195
    move-object/from16 v0, v26

    #@197
    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19a
    .line 3174
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v26, 0x40000000    # 2.0f

    #@19c
    move/from16 v0, v26

    #@19e
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@1a1
    .line 3175
    move-object/from16 v0, p0

    #@1a3
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1a5
    move-object/from16 v26, v0

    #@1a7
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    #@1aa
    move-result-object v26

    #@1ab
    sget-object v27, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1ad
    move-object/from16 v0, v26

    #@1af
    move-object/from16 v1, v27

    #@1b1
    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1b4
    .line 3176
    const/16 v26, 0x1

    #@1b6
    return v26

    #@1b7
    .line 3189
    .end local v7    # "i":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "length":I
    .end local v20    # "restrictBackground":Z
    :pswitch_5
    move-object/from16 v0, p1

    #@1b9
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1bb
    move/from16 v21, v0

    #@1bd
    .line 3190
    .restart local v21    # "uid":I
    move-object/from16 v0, p1

    #@1bf
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@1c1
    move/from16 v26, v0

    #@1c3
    const/16 v27, 0x1

    #@1c5
    move/from16 v0, v26

    #@1c7
    move/from16 v1, v27

    #@1c9
    if-ne v0, v1, :cond_5

    #@1cb
    const/4 v5, 0x1

    #@1cc
    .line 3191
    .local v5, "changed":Z
    :goto_5
    move-object/from16 v0, p1

    #@1ce
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d0
    move-object/from16 v24, v0

    #@1d2
    check-cast v24, Ljava/lang/Boolean;

    #@1d4
    .line 3194
    .local v24, "whitelisted":Ljava/lang/Boolean;
    if-eqz v24, :cond_7

    #@1d6
    .line 3195
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    #@1d9
    move-result v25

    #@1da
    .line 3196
    .local v25, "whitelistedBool":Z
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1de
    move-object/from16 v26, v0

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1e4
    move-object/from16 v27, v0

    #@1e6
    invoke-static/range {v27 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    #@1e9
    move-result-object v27

    #@1ea
    move-object/from16 v0, v26

    #@1ec
    move-object/from16 v1, v27

    #@1ee
    move/from16 v2, v21

    #@1f0
    move/from16 v3, v25

    #@1f2
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    #@1f5
    .line 3198
    move-object/from16 v0, p0

    #@1f7
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1f9
    move-object/from16 v26, v0

    #@1fb
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@1fe
    move-result-object v26

    #@1ff
    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@202
    move-result v10

    #@203
    .line 3199
    .restart local v10    # "length":I
    const/4 v7, 0x0

    #@204
    .restart local v7    # "i":I
    :goto_6
    if-ge v7, v10, :cond_6

    #@206
    .line 3200
    move-object/from16 v0, p0

    #@208
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@20a
    move-object/from16 v26, v0

    #@20c
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@20f
    move-result-object v26

    #@210
    move-object/from16 v0, v26

    #@212
    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@215
    move-result-object v11

    #@216
    check-cast v11, Landroid/net/INetworkPolicyListener;

    #@218
    .line 3201
    .restart local v11    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    #@21a
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@21c
    move-object/from16 v26, v0

    #@21e
    move-object/from16 v0, v26

    #@220
    move/from16 v1, v21

    #@222
    move/from16 v2, v25

    #@224
    invoke-static {v0, v11, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    #@227
    .line 3199
    add-int/lit8 v7, v7, 0x1

    #@229
    goto :goto_6

    #@22a
    .line 3190
    .end local v5    # "changed":Z
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v24    # "whitelisted":Ljava/lang/Boolean;
    .end local v25    # "whitelistedBool":Z
    :cond_5
    const/4 v5, 0x0

    #@22b
    .restart local v5    # "changed":Z
    goto :goto_5

    #@22c
    .line 3204
    .restart local v7    # "i":I
    .restart local v10    # "length":I
    .restart local v24    # "whitelisted":Ljava/lang/Boolean;
    .restart local v25    # "whitelistedBool":Z
    :cond_6
    move-object/from16 v0, p0

    #@22e
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@230
    move-object/from16 v26, v0

    #@232
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@235
    move-result-object v26

    #@236
    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@239
    .line 3206
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v25    # "whitelistedBool":Z
    :cond_7
    move-object/from16 v0, p0

    #@23b
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@23d
    move-object/from16 v26, v0

    #@23f
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    #@242
    move-result-object v26

    #@243
    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@246
    move-result-object v17

    #@247
    .line 3207
    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v17

    #@249
    move/from16 v1, v21

    #@24b
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@24e
    move-result-object v16

    #@24f
    .line 3208
    .local v16, "packages":[Ljava/lang/String;
    if-eqz v5, :cond_8

    #@251
    if-eqz v16, :cond_8

    #@253
    .line 3210
    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    #@256
    move-result v23

    #@257
    .line 3211
    .local v23, "userId":I
    const/16 v26, 0x0

    #@259
    move-object/from16 v0, v16

    #@25b
    array-length v0, v0

    #@25c
    move/from16 v27, v0

    #@25e
    :goto_7
    move/from16 v0, v26

    #@260
    move/from16 v1, v27

    #@262
    if-ge v0, v1, :cond_8

    #@264
    aget-object v15, v16, v26

    #@266
    .line 3212
    .local v15, "packageName":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    #@268
    .line 3213
    const-string/jumbo v28, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    #@26b
    .line 3212
    move-object/from16 v0, v28

    #@26d
    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@270
    .line 3214
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual {v9, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@273
    .line 3215
    const/high16 v28, 0x40000000    # 2.0f

    #@275
    move/from16 v0, v28

    #@277
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@27a
    .line 3216
    move-object/from16 v0, p0

    #@27c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@27e
    move-object/from16 v28, v0

    #@280
    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    #@283
    move-result-object v28

    #@284
    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@287
    move-result-object v29

    #@288
    move-object/from16 v0, v28

    #@28a
    move-object/from16 v1, v29

    #@28c
    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@28f
    .line 3211
    add-int/lit8 v26, v26, 0x1

    #@291
    goto :goto_7

    #@292
    .line 3219
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v23    # "userId":I
    :cond_8
    const/16 v26, 0x1

    #@294
    return v26

    #@295
    .line 3222
    .end local v5    # "changed":Z
    .end local v16    # "packages":[Ljava/lang/String;
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v21    # "uid":I
    .end local v24    # "whitelisted":Ljava/lang/Boolean;
    :pswitch_6
    move-object/from16 v0, p1

    #@297
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@299
    move/from16 v21, v0

    #@29b
    .line 3223
    .restart local v21    # "uid":I
    move-object/from16 v0, p1

    #@29d
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@29f
    move/from16 v26, v0

    #@2a1
    const/16 v27, 0x1

    #@2a3
    move/from16 v0, v26

    #@2a5
    move/from16 v1, v27

    #@2a7
    if-ne v0, v1, :cond_9

    #@2a9
    const/4 v4, 0x1

    #@2aa
    .line 3225
    .local v4, "blacklisted":Z
    :goto_8
    move-object/from16 v0, p0

    #@2ac
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2ae
    move-object/from16 v26, v0

    #@2b0
    move-object/from16 v0, p0

    #@2b2
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2b4
    move-object/from16 v27, v0

    #@2b6
    invoke-static/range {v27 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    #@2b9
    move-result-object v27

    #@2ba
    move-object/from16 v0, v26

    #@2bc
    move-object/from16 v1, v27

    #@2be
    move/from16 v2, v21

    #@2c0
    invoke-static {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    #@2c3
    .line 3227
    move-object/from16 v0, p0

    #@2c5
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2c7
    move-object/from16 v26, v0

    #@2c9
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@2cc
    move-result-object v26

    #@2cd
    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@2d0
    move-result v10

    #@2d1
    .line 3228
    .restart local v10    # "length":I
    const/4 v7, 0x0

    #@2d2
    .restart local v7    # "i":I
    :goto_9
    if-ge v7, v10, :cond_a

    #@2d4
    .line 3229
    move-object/from16 v0, p0

    #@2d6
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2d8
    move-object/from16 v26, v0

    #@2da
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@2dd
    move-result-object v26

    #@2de
    move-object/from16 v0, v26

    #@2e0
    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@2e3
    move-result-object v11

    #@2e4
    check-cast v11, Landroid/net/INetworkPolicyListener;

    #@2e6
    .line 3230
    .restart local v11    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    #@2e8
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2ea
    move-object/from16 v26, v0

    #@2ec
    move-object/from16 v0, v26

    #@2ee
    move/from16 v1, v21

    #@2f0
    invoke-static {v0, v11, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    #@2f3
    .line 3228
    add-int/lit8 v7, v7, 0x1

    #@2f5
    goto :goto_9

    #@2f6
    .line 3223
    .end local v4    # "blacklisted":Z
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_9
    const/4 v4, 0x0

    #@2f7
    .restart local v4    # "blacklisted":Z
    goto :goto_8

    #@2f8
    .line 3233
    .restart local v7    # "i":I
    .restart local v10    # "length":I
    :cond_a
    move-object/from16 v0, p0

    #@2fa
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2fc
    move-object/from16 v26, v0

    #@2fe
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    #@301
    move-result-object v26

    #@302
    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@305
    .line 3234
    const/16 v26, 0x1

    #@307
    return v26

    #@308
    .line 3237
    .end local v4    # "blacklisted":Z
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v21    # "uid":I
    :pswitch_7
    move-object/from16 v0, p1

    #@30a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@30c
    move-object/from16 v26, v0

    #@30e
    check-cast v26, Ljava/lang/Long;

    #@310
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    #@313
    move-result-wide v12

    #@314
    .line 3241
    .local v12, "lowestRule":J
    const-wide/16 v26, 0x3e8

    #@316
    :try_start_3
    div-long v18, v12, v26

    #@318
    .line 3242
    .local v18, "persistThreshold":J
    move-object/from16 v0, p0

    #@31a
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@31c
    move-object/from16 v26, v0

    #@31e
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    #@321
    move-result-object v26

    #@322
    move-object/from16 v0, v26

    #@324
    move-wide/from16 v1, v18

    #@326
    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@329
    .line 3246
    .end local v18    # "persistThreshold":J
    :goto_a
    const/16 v26, 0x1

    #@32b
    return v26

    #@32c
    .line 3249
    .end local v12    # "lowestRule":J
    :pswitch_8
    move-object/from16 v0, p0

    #@32e
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@330
    move-object/from16 v26, v0

    #@332
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap16(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@335
    .line 3250
    const/16 v26, 0x1

    #@337
    return v26

    #@338
    .line 3253
    :pswitch_9
    move-object/from16 v0, p0

    #@33a
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@33c
    move-object/from16 v27, v0

    #@33e
    move-object/from16 v0, p1

    #@340
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@342
    move-object/from16 v26, v0

    #@344
    check-cast v26, Ljava/lang/String;

    #@346
    move-object/from16 v0, v27

    #@348
    move-object/from16 v1, v26

    #@34a
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    #@34d
    .line 3255
    move-object/from16 v0, p0

    #@34f
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@351
    move-object/from16 v27, v0

    #@353
    move-object/from16 v0, p1

    #@355
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@357
    move-object/from16 v26, v0

    #@359
    check-cast v26, Ljava/lang/String;

    #@35b
    .line 3256
    move-object/from16 v0, p1

    #@35d
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@35f
    move/from16 v28, v0

    #@361
    move/from16 v0, v28

    #@363
    int-to-long v0, v0

    #@364
    move-wide/from16 v28, v0

    #@366
    const/16 v30, 0x20

    #@368
    shl-long v28, v28, v30

    #@36a
    move-object/from16 v0, p1

    #@36c
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@36e
    move/from16 v30, v0

    #@370
    move/from16 v0, v30

    #@372
    int-to-long v0, v0

    #@373
    move-wide/from16 v30, v0

    #@375
    const-wide v32, 0xffffffffL

    #@37a
    and-long v30, v30, v32

    #@37c
    or-long v28, v28, v30

    #@37e
    .line 3255
    move-object/from16 v0, v27

    #@380
    move-object/from16 v1, v26

    #@382
    move-wide/from16 v2, v28

    #@384
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap11(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    #@387
    .line 3257
    const/16 v26, 0x1

    #@389
    return v26

    #@38a
    .line 3260
    :pswitch_a
    move-object/from16 v0, p0

    #@38c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@38e
    move-object/from16 v27, v0

    #@390
    move-object/from16 v0, p1

    #@392
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@394
    move-object/from16 v26, v0

    #@396
    check-cast v26, Ljava/lang/String;

    #@398
    move-object/from16 v0, v27

    #@39a
    move-object/from16 v1, v26

    #@39c
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    #@39f
    .line 3261
    const/16 v26, 0x1

    #@3a1
    return v26

    #@3a2
    .line 3243
    .restart local v12    # "lowestRule":J
    :catch_0
    move-exception v6

    #@3a3
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_a

    #@3a4
    .line 3153
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v12    # "lowestRule":J
    .restart local v8    # "iface":Ljava/lang/String;
    :catch_1
    move-exception v6

    #@3a5
    .restart local v6    # "e":Landroid/os/RemoteException;
    goto/16 :goto_2

    #@3a7
    .line 3119
    nop

    #@3a8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method
