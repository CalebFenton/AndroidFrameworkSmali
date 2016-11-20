.class final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    .line 1012
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1011
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1017
    move-object/from16 v0, p1

    #@2
    iget v1, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 1015
    :goto_0
    return-void

    #@8
    .line 1019
    :pswitch_0
    move-object/from16 v0, p0

    #@a
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@c
    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    #@f
    goto :goto_0

    #@10
    .line 1023
    :pswitch_1
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    #@13
    .line 1026
    move-object/from16 v0, p1

    #@15
    iget v1, v0, Landroid/os/Message;->what:I

    #@17
    const/4 v2, 0x2

    #@18
    if-ne v1, v2, :cond_2

    #@1a
    .line 1027
    move-object/from16 v0, p0

    #@1c
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@1e
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    #@21
    move-result-object v1

    #@22
    const/4 v2, 0x1

    #@23
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    #@26
    move-result v13

    #@27
    .line 1028
    .local v13, "deepChanged":Z
    move-object/from16 v0, p0

    #@29
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@2b
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    #@2e
    move-result-object v1

    #@2f
    const/4 v2, 0x0

    #@30
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    #@33
    move-result v17

    #@34
    .line 1034
    .local v17, "lightChanged":Z
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    #@36
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@38
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    #@3b
    move-result-object v1

    #@3c
    const/4 v2, 0x1

    #@3d
    invoke-interface {v1, v2}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    #@40
    .line 1035
    move-object/from16 v0, p0

    #@42
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@44
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    #@47
    move-result-object v2

    #@48
    move-object/from16 v0, p1

    #@4a
    iget v1, v0, Landroid/os/Message;->what:I

    #@4c
    const/4 v3, 0x2

    #@4d
    if-ne v1, v3, :cond_3

    #@4f
    .line 1036
    const/4 v1, 0x2

    #@50
    .line 1037
    :goto_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@53
    move-result v3

    #@54
    const/4 v4, 0x0

    #@55
    .line 1035
    invoke-interface {v2, v1, v4, v3}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    #@58
    .line 1040
    :goto_3
    if-eqz v13, :cond_0

    #@5a
    .line 1041
    move-object/from16 v0, p0

    #@5c
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@5e
    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@61
    move-result-object v1

    #@62
    move-object/from16 v0, p0

    #@64
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@66
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get2(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    #@69
    move-result-object v2

    #@6a
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@6c
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@6f
    .line 1043
    :cond_0
    if-eqz v17, :cond_1

    #@71
    .line 1044
    move-object/from16 v0, p0

    #@73
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@75
    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@78
    move-result-object v1

    #@79
    move-object/from16 v0, p0

    #@7b
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@7d
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    #@80
    move-result-object v2

    #@81
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@83
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@86
    .line 1046
    :cond_1
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    #@89
    goto/16 :goto_0

    #@8b
    .line 1030
    .end local v13    # "deepChanged":Z
    .end local v17    # "lightChanged":Z
    :cond_2
    move-object/from16 v0, p0

    #@8d
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@8f
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    #@92
    move-result-object v1

    #@93
    const/4 v2, 0x0

    #@94
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    #@97
    move-result v13

    #@98
    .line 1031
    .restart local v13    # "deepChanged":Z
    move-object/from16 v0, p0

    #@9a
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@9c
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    #@9f
    move-result-object v1

    #@a0
    const/4 v2, 0x1

    #@a1
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    #@a4
    move-result v17

    #@a5
    .restart local v17    # "lightChanged":Z
    goto :goto_1

    #@a6
    .line 1037
    :cond_3
    const/4 v1, 0x1

    #@a7
    goto :goto_2

    #@a8
    .line 1049
    .end local v13    # "deepChanged":Z
    .end local v17    # "lightChanged":Z
    :pswitch_2
    const-string/jumbo v1, "unknown"

    #@ab
    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    #@ae
    .line 1050
    move-object/from16 v0, p0

    #@b0
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@b2
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    #@b5
    move-result-object v1

    #@b6
    const/4 v2, 0x0

    #@b7
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    #@ba
    move-result v13

    #@bb
    .line 1051
    .restart local v13    # "deepChanged":Z
    move-object/from16 v0, p0

    #@bd
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@bf
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    #@c2
    move-result-object v1

    #@c3
    const/4 v2, 0x0

    #@c4
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    #@c7
    move-result v17

    #@c8
    .line 1053
    .restart local v17    # "lightChanged":Z
    :try_start_1
    move-object/from16 v0, p0

    #@ca
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@cc
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    #@cf
    move-result-object v1

    #@d0
    const/4 v2, 0x0

    #@d1
    invoke-interface {v1, v2}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    #@d4
    .line 1054
    move-object/from16 v0, p0

    #@d6
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@d8
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    #@db
    move-result-object v1

    #@dc
    .line 1055
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@df
    move-result v2

    #@e0
    .line 1054
    const/4 v3, 0x0

    #@e1
    .line 1055
    const/4 v4, 0x0

    #@e2
    .line 1054
    invoke-interface {v1, v3, v4, v2}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@e5
    .line 1058
    :goto_4
    if-eqz v13, :cond_4

    #@e7
    .line 1059
    move-object/from16 v0, p0

    #@e9
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@eb
    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    #@ee
    .line 1060
    move-object/from16 v0, p0

    #@f0
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@f2
    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@f5
    move-result-object v1

    #@f6
    move-object/from16 v0, p0

    #@f8
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@fa
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get2(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    #@fd
    move-result-object v2

    #@fe
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@100
    .line 1061
    move-object/from16 v0, p0

    #@102
    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@104
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    #@107
    move-result-object v5

    #@108
    const/4 v4, 0x0

    #@109
    const/4 v6, 0x0

    #@10a
    const/4 v7, 0x0

    #@10b
    const/4 v8, 0x0

    #@10c
    const/4 v9, 0x0

    #@10d
    .line 1060
    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@110
    .line 1063
    :cond_4
    if-eqz v17, :cond_5

    #@112
    .line 1064
    move-object/from16 v0, p0

    #@114
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@116
    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    #@119
    .line 1065
    move-object/from16 v0, p0

    #@11b
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@11d
    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@120
    move-result-object v1

    #@121
    move-object/from16 v0, p0

    #@123
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@125
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    #@128
    move-result-object v2

    #@129
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@12b
    .line 1066
    move-object/from16 v0, p0

    #@12d
    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@12f
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    #@132
    move-result-object v5

    #@133
    const/4 v4, 0x0

    #@134
    const/4 v6, 0x0

    #@135
    const/4 v7, 0x0

    #@136
    const/4 v8, 0x0

    #@137
    const/4 v9, 0x0

    #@138
    .line 1065
    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@13b
    .line 1070
    :cond_5
    move-object/from16 v0, p0

    #@13d
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@13f
    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    #@142
    .line 1071
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    #@145
    goto/16 :goto_0

    #@147
    .line 1074
    .end local v13    # "deepChanged":Z
    .end local v17    # "lightChanged":Z
    :pswitch_3
    move-object/from16 v0, p1

    #@149
    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14b
    check-cast v11, Ljava/lang/String;

    #@14d
    .line 1075
    .local v11, "activeReason":Ljava/lang/String;
    move-object/from16 v0, p1

    #@14f
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@151
    .line 1077
    .local v12, "activeUid":I
    if-eqz v11, :cond_8

    #@153
    move-object v1, v11

    #@154
    .line 1076
    :goto_5
    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    #@157
    .line 1078
    move-object/from16 v0, p0

    #@159
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@15b
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    #@15e
    move-result-object v1

    #@15f
    const/4 v2, 0x0

    #@160
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    #@163
    move-result v13

    #@164
    .line 1079
    .restart local v13    # "deepChanged":Z
    move-object/from16 v0, p0

    #@166
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@168
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    #@16b
    move-result-object v1

    #@16c
    const/4 v2, 0x0

    #@16d
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    #@170
    move-result v17

    #@171
    .line 1081
    .restart local v17    # "lightChanged":Z
    :try_start_2
    move-object/from16 v0, p0

    #@173
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@175
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    #@178
    move-result-object v1

    #@179
    const/4 v2, 0x0

    #@17a
    invoke-interface {v1, v2}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    #@17d
    .line 1082
    move-object/from16 v0, p0

    #@17f
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@181
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    #@184
    move-result-object v1

    #@185
    const/4 v2, 0x0

    #@186
    invoke-interface {v1, v2, v11, v12}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@189
    .line 1086
    :goto_6
    if-eqz v13, :cond_6

    #@18b
    .line 1087
    move-object/from16 v0, p0

    #@18d
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@18f
    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@192
    move-result-object v1

    #@193
    move-object/from16 v0, p0

    #@195
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@197
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get2(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    #@19a
    move-result-object v2

    #@19b
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@19d
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1a0
    .line 1089
    :cond_6
    if-eqz v17, :cond_7

    #@1a2
    .line 1090
    move-object/from16 v0, p0

    #@1a4
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@1a6
    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@1a9
    move-result-object v1

    #@1aa
    move-object/from16 v0, p0

    #@1ac
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@1ae
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    #@1b1
    move-result-object v2

    #@1b2
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1b4
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1b7
    .line 1092
    :cond_7
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    #@1ba
    goto/16 :goto_0

    #@1bc
    .line 1077
    .end local v13    # "deepChanged":Z
    .end local v17    # "lightChanged":Z
    :cond_8
    const-string/jumbo v1, "unknown"

    #@1bf
    goto :goto_5

    #@1c0
    .line 1095
    .end local v11    # "activeReason":Ljava/lang/String;
    .end local v12    # "activeUid":I
    :pswitch_4
    move-object/from16 v0, p1

    #@1c2
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1c4
    move/from16 v19, v0

    #@1c6
    .line 1096
    .local v19, "uid":I
    move-object/from16 v0, p0

    #@1c8
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@1ca
    move/from16 v0, v19

    #@1cc
    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    #@1cf
    goto/16 :goto_0

    #@1d1
    .line 1099
    .end local v19    # "uid":I
    :pswitch_5
    move-object/from16 v0, p1

    #@1d3
    iget v1, v0, Landroid/os/Message;->arg1:I

    #@1d5
    const/4 v2, 0x1

    #@1d6
    if-ne v1, v2, :cond_9

    #@1d8
    const/4 v10, 0x1

    #@1d9
    .line 1100
    .local v10, "active":Z
    :goto_7
    move-object/from16 v0, p0

    #@1db
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@1dd
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    #@1e0
    move-result-object v1

    #@1e1
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@1e4
    move-result v18

    #@1e5
    .line 1102
    .local v18, "size":I
    const/4 v15, 0x0

    #@1e6
    .local v15, "i":I
    :goto_8
    move/from16 v0, v18

    #@1e8
    if-ge v15, v0, :cond_a

    #@1ea
    .line 1104
    :try_start_3
    move-object/from16 v0, p0

    #@1ec
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@1ee
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    #@1f1
    move-result-object v1

    #@1f2
    invoke-virtual {v1, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1f5
    move-result-object v1

    #@1f6
    check-cast v1, Landroid/os/IMaintenanceActivityListener;

    #@1f8
    invoke-interface {v1, v10}, Landroid/os/IMaintenanceActivityListener;->onMaintenanceActivityChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1fb
    .line 1102
    :goto_9
    add-int/lit8 v15, v15, 0x1

    #@1fd
    goto :goto_8

    #@1fe
    .line 1099
    .end local v10    # "active":Z
    .end local v15    # "i":I
    .end local v18    # "size":I
    :cond_9
    const/4 v10, 0x0

    #@1ff
    .restart local v10    # "active":Z
    goto :goto_7

    #@200
    .line 1110
    .restart local v15    # "i":I
    .restart local v18    # "size":I
    :cond_a
    move-object/from16 v0, p0

    #@202
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@204
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    #@207
    move-result-object v1

    #@208
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@20b
    goto/16 :goto_0

    #@20d
    .line 1109
    :catchall_0
    move-exception v1

    #@20e
    .line 1110
    move-object/from16 v0, p0

    #@210
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@212
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    #@215
    move-result-object v2

    #@216
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@219
    .line 1109
    throw v1

    #@21a
    .line 1114
    .end local v10    # "active":Z
    .end local v15    # "i":I
    .end local v18    # "size":I
    :pswitch_6
    move-object/from16 v0, p0

    #@21c
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@21e
    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    #@221
    goto/16 :goto_0

    #@223
    .line 1106
    .restart local v10    # "active":Z
    .restart local v15    # "i":I
    .restart local v18    # "size":I
    :catch_0
    move-exception v16

    #@224
    .local v16, "ignored":Landroid/os/RemoteException;
    goto :goto_9

    #@225
    .line 1084
    .end local v10    # "active":Z
    .end local v15    # "i":I
    .end local v16    # "ignored":Landroid/os/RemoteException;
    .end local v18    # "size":I
    .restart local v11    # "activeReason":Ljava/lang/String;
    .restart local v12    # "activeUid":I
    .restart local v13    # "deepChanged":Z
    .restart local v17    # "lightChanged":Z
    :catch_1
    move-exception v14

    #@226
    .local v14, "e":Landroid/os/RemoteException;
    goto/16 :goto_6

    #@228
    .line 1056
    .end local v11    # "activeReason":Ljava/lang/String;
    .end local v12    # "activeUid":I
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v14

    #@229
    .restart local v14    # "e":Landroid/os/RemoteException;
    goto/16 :goto_4

    #@22b
    .line 1038
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v14

    #@22c
    .restart local v14    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    #@22e
    .line 1017
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
