.class Lcom/android/server/BluetoothManagerService$BluetoothHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1102
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2
    .line 1103
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1102
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1109
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v26, v0

    #@6
    sparse-switch v26, :sswitch_data_0

    #@9
    .line 1107
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1112
    :sswitch_0
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@e
    move-object/from16 v26, v0

    #@10
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@13
    move-result-object v27

    #@14
    monitor-enter v27

    #@15
    .line 1114
    :try_start_0
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@19
    move-object/from16 v26, v0

    #@1b
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@1e
    move-result-object v26

    #@1f
    if-nez v26, :cond_1

    #@21
    move-object/from16 v0, p0

    #@23
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@25
    move-object/from16 v26, v0

    #@27
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get0(Lcom/android/server/BluetoothManagerService;)Z

    #@2a
    move-result v26

    #@2b
    if-eqz v26, :cond_3

    #@2d
    .line 1130
    :cond_1
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@31
    move-object/from16 v26, v0

    #@33
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@36
    move-result-object v26

    #@37
    const/16 v28, 0xc9

    #@39
    move-object/from16 v0, v26

    #@3b
    move/from16 v1, v28

    #@3d
    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@40
    move-result-object v21

    #@41
    .line 1131
    .local v21, "saveMsg":Landroid/os/Message;
    const/16 v26, 0x0

    #@43
    move/from16 v0, v26

    #@45
    move-object/from16 v1, v21

    #@47
    iput v0, v1, Landroid/os/Message;->arg1:I

    #@49
    .line 1132
    move-object/from16 v0, p0

    #@4b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@4d
    move-object/from16 v26, v0

    #@4f
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@52
    move-result-object v26

    #@53
    if-eqz v26, :cond_5

    #@55
    .line 1133
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@59
    move-object/from16 v26, v0

    #@5b
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@5e
    move-result-object v26

    #@5f
    move-object/from16 v0, v26

    #@61
    move-object/from16 v1, v21

    #@63
    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    .end local v21    # "saveMsg":Landroid/os/Message;
    :cond_2
    :goto_1
    monitor-exit v27

    #@67
    goto :goto_0

    #@68
    .line 1116
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    #@6a
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6c
    move-object/from16 v26, v0

    #@6e
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@71
    move-result-object v26

    #@72
    const/16 v28, 0x1

    #@74
    move-object/from16 v0, v26

    #@76
    move/from16 v1, v28

    #@78
    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V

    #@7b
    .line 1118
    move-object/from16 v0, p0

    #@7d
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@7f
    move-object/from16 v26, v0

    #@81
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@84
    move-result-object v26

    #@85
    const/16 v28, 0x64

    #@87
    move-object/from16 v0, v26

    #@89
    move/from16 v1, v28

    #@8b
    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@8e
    move-result-object v23

    #@8f
    .line 1119
    .local v23, "timeoutMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@93
    move-object/from16 v26, v0

    #@95
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@98
    move-result-object v26

    #@99
    const-wide/16 v28, 0xbb8

    #@9b
    move-object/from16 v0, v26

    #@9d
    move-object/from16 v1, v23

    #@9f
    move-wide/from16 v2, v28

    #@a1
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@a4
    .line 1120
    new-instance v11, Landroid/content/Intent;

    #@a6
    const-class v26, Landroid/bluetooth/IBluetooth;

    #@a8
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@ab
    move-result-object v26

    #@ac
    move-object/from16 v0, v26

    #@ae
    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b1
    .line 1121
    .local v11, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@b3
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b5
    move-object/from16 v26, v0

    #@b7
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@bb
    move-object/from16 v28, v0

    #@bd
    invoke-static/range {v28 .. v28}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@c0
    move-result-object v28

    #@c1
    .line 1123
    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@c3
    .line 1122
    const/16 v30, 0x41

    #@c5
    .line 1121
    move-object/from16 v0, v26

    #@c7
    move-object/from16 v1, v28

    #@c9
    move/from16 v2, v30

    #@cb
    move-object/from16 v3, v29

    #@cd
    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@d0
    move-result v26

    #@d1
    if-nez v26, :cond_4

    #@d3
    .line 1124
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@d7
    move-object/from16 v26, v0

    #@d9
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@dc
    move-result-object v26

    #@dd
    const/16 v28, 0x64

    #@df
    move-object/from16 v0, v26

    #@e1
    move/from16 v1, v28

    #@e3
    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e6
    goto :goto_1

    #@e7
    .line 1112
    .end local v11    # "i":Landroid/content/Intent;
    .end local v23    # "timeoutMsg":Landroid/os/Message;
    :catchall_0
    move-exception v26

    #@e8
    monitor-exit v27

    #@e9
    throw v26

    #@ea
    .line 1126
    .restart local v11    # "i":Landroid/content/Intent;
    .restart local v23    # "timeoutMsg":Landroid/os/Message;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    #@ec
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@ee
    move-object/from16 v26, v0

    #@f0
    const/16 v28, 0x1

    #@f2
    move-object/from16 v0, v26

    #@f4
    move/from16 v1, v28

    #@f6
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z

    #@f9
    goto/16 :goto_1

    #@fb
    .line 1137
    .end local v11    # "i":Landroid/content/Intent;
    .end local v23    # "timeoutMsg":Landroid/os/Message;
    .restart local v21    # "saveMsg":Landroid/os/Message;
    :cond_5
    move-object/from16 v0, p0

    #@fd
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@ff
    move-object/from16 v26, v0

    #@101
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@104
    move-result-object v26

    #@105
    const-wide/16 v28, 0x1f4

    #@107
    move-object/from16 v0, v26

    #@109
    move-object/from16 v1, v21

    #@10b
    move-wide/from16 v2, v28

    #@10d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@110
    goto/16 :goto_1

    #@112
    .line 1144
    .end local v21    # "saveMsg":Landroid/os/Message;
    :sswitch_1
    const/16 v24, 0x0

    #@114
    .line 1146
    .local v24, "unbind":Z
    move-object/from16 v0, p0

    #@116
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@118
    move-object/from16 v26, v0

    #@11a
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@11d
    move-result-object v27

    #@11e
    monitor-enter v27

    #@11f
    .line 1147
    :try_start_3
    move-object/from16 v0, p0

    #@121
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@123
    move-object/from16 v26, v0

    #@125
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    #@128
    move-result v26

    #@129
    if-nez v26, :cond_6

    #@12b
    move-object/from16 v0, p0

    #@12d
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@12f
    move-object/from16 v26, v0

    #@131
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@134
    move-result-object v26

    #@135
    if-eqz v26, :cond_6

    #@137
    move-object/from16 v0, p0

    #@139
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@13b
    move-object/from16 v26, v0

    #@13d
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@140
    move-result-object v26

    #@141
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@144
    move-result v26

    #@145
    if-eqz v26, :cond_b

    #@147
    :cond_6
    :goto_2
    monitor-exit v27

    #@148
    .line 1155
    move-object/from16 v0, p0

    #@14a
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@14c
    move-object/from16 v26, v0

    #@14e
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@151
    move-result-object v26

    #@152
    if-eqz v26, :cond_7

    #@154
    move-object/from16 v0, p0

    #@156
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@158
    move-object/from16 v26, v0

    #@15a
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@15d
    move-result-object v26

    #@15e
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    #@161
    move-result v26

    #@162
    if-eqz v26, :cond_c

    #@164
    .line 1156
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    #@166
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@168
    move-object/from16 v26, v0

    #@16a
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@16d
    move-result-object v27

    #@16e
    monitor-enter v27

    #@16f
    .line 1157
    :try_start_4
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@173
    move-object/from16 v26, v0

    #@175
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@178
    move-result-object v26

    #@179
    if-eqz v26, :cond_10

    #@17b
    .line 1158
    const/4 v12, 0x0

    #@17c
    .line 1159
    .local v12, "name":Ljava/lang/String;
    const/4 v5, 0x0

    #@17d
    .line 1161
    .local v5, "address":Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    #@17f
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@181
    move-object/from16 v26, v0

    #@183
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@186
    move-result-object v26

    #@187
    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    #@18a
    move-result-object v12

    #@18b
    .line 1162
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@18d
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@18f
    move-object/from16 v26, v0

    #@191
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@194
    move-result-object v26

    #@195
    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@198
    move-result-object v5

    #@199
    .line 1167
    .end local v5    # "address":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    :goto_4
    if-eqz v12, :cond_d

    #@19b
    if-eqz v5, :cond_d

    #@19d
    .line 1168
    :try_start_6
    move-object/from16 v0, p0

    #@19f
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1a1
    move-object/from16 v26, v0

    #@1a3
    move-object/from16 v0, v26

    #@1a5
    invoke-static {v0, v12, v5}, Lcom/android/server/BluetoothManagerService;->-wrap15(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    #@1a8
    .line 1169
    move-object/from16 v0, p0

    #@1aa
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1ac
    move-object/from16 v26, v0

    #@1ae
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@1b1
    move-result-object v26

    #@1b2
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    #@1b5
    move-result v26

    #@1b6
    if-eqz v26, :cond_8

    #@1b8
    .line 1170
    const/16 v24, 0x1

    #@1ba
    .line 1185
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    #@1bc
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1be
    move-object/from16 v26, v0

    #@1c0
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    #@1c3
    move-result v26

    #@1c4
    if-nez v26, :cond_9

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1ca
    move-object/from16 v26, v0

    #@1cc
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@1cf
    move-result-object v26

    #@1d0
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@1d3
    move-result v26

    #@1d4
    if-eqz v26, :cond_f

    #@1d6
    :cond_9
    :goto_6
    monitor-exit v27

    #@1d7
    .line 1200
    move-object/from16 v0, p0

    #@1d9
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1db
    move-object/from16 v26, v0

    #@1dd
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    #@1e0
    move-result v26

    #@1e1
    if-nez v26, :cond_a

    #@1e3
    move-object/from16 v0, p0

    #@1e5
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1e7
    move-object/from16 v26, v0

    #@1e9
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@1ec
    move-result-object v26

    #@1ed
    if-eqz v26, :cond_a

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1f3
    move-object/from16 v26, v0

    #@1f5
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@1f8
    move-result-object v26

    #@1f9
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    #@1fc
    move-result v26

    #@1fd
    if-eqz v26, :cond_11

    #@1ff
    .line 1203
    :cond_a
    :goto_7
    if-eqz v24, :cond_0

    #@201
    .line 1204
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@205
    move-object/from16 v26, v0

    #@207
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    #@20a
    goto/16 :goto_0

    #@20c
    .line 1149
    :cond_b
    :try_start_7
    move-object/from16 v0, p0

    #@20e
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@210
    move-object/from16 v26, v0

    #@212
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@215
    move-result-object v26

    #@216
    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@219
    goto/16 :goto_2

    #@21b
    .line 1150
    :catch_0
    move-exception v8

    #@21c
    .line 1151
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string/jumbo v26, "BluetoothManagerService"

    #@21f
    const-string/jumbo v28, "Unable to call enable()"

    #@222
    move-object/from16 v0, v26

    #@224
    move-object/from16 v1, v28

    #@226
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@229
    goto/16 :goto_2

    #@22b
    .line 1146
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v26

    #@22c
    monitor-exit v27

    #@22d
    throw v26

    #@22e
    .line 1155
    :cond_c
    move-object/from16 v0, p0

    #@230
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@232
    move-object/from16 v26, v0

    #@234
    const/16 v27, 0x1

    #@236
    const/16 v28, 0x0

    #@238
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@23b
    goto/16 :goto_3

    #@23d
    .line 1163
    .restart local v5    # "address":Ljava/lang/String;
    :catch_1
    move-exception v17

    #@23e
    .line 1164
    .local v17, "re":Landroid/os/RemoteException;
    :try_start_9
    const-string/jumbo v26, "BluetoothManagerService"

    #@241
    const-string/jumbo v28, ""

    #@244
    move-object/from16 v0, v26

    #@246
    move-object/from16 v1, v28

    #@248
    move-object/from16 v2, v17

    #@24a
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@24d
    goto/16 :goto_4

    #@24f
    .line 1156
    .end local v5    # "address":Ljava/lang/String;
    .end local v17    # "re":Landroid/os/RemoteException;
    :catchall_2
    move-exception v26

    #@250
    monitor-exit v27

    #@251
    throw v26

    #@252
    .line 1173
    :cond_d
    :try_start_a
    move-object/from16 v0, p1

    #@254
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@256
    move/from16 v26, v0

    #@258
    const/16 v28, 0x3

    #@25a
    move/from16 v0, v26

    #@25c
    move/from16 v1, v28

    #@25e
    if-ge v0, v1, :cond_e

    #@260
    .line 1174
    move-object/from16 v0, p0

    #@262
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@264
    move-object/from16 v26, v0

    #@266
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@269
    move-result-object v26

    #@26a
    const/16 v28, 0xc9

    #@26c
    move-object/from16 v0, v26

    #@26e
    move/from16 v1, v28

    #@270
    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@273
    move-result-object v20

    #@274
    .line 1175
    .local v20, "retryMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    #@276
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@278
    move/from16 v26, v0

    #@27a
    add-int/lit8 v26, v26, 0x1

    #@27c
    move/from16 v0, v26

    #@27e
    move-object/from16 v1, v20

    #@280
    iput v0, v1, Landroid/os/Message;->arg1:I

    #@282
    .line 1177
    move-object/from16 v0, p0

    #@284
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@286
    move-object/from16 v26, v0

    #@288
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@28b
    move-result-object v26

    #@28c
    const-wide/16 v28, 0x1f4

    #@28e
    move-object/from16 v0, v26

    #@290
    move-object/from16 v1, v20

    #@292
    move-wide/from16 v2, v28

    #@294
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@297
    goto/16 :goto_5

    #@299
    .line 1179
    .end local v20    # "retryMsg":Landroid/os/Message;
    :cond_e
    const-string/jumbo v26, "BluetoothManagerService"

    #@29c
    const-string/jumbo v28, "Maximum name/address remote retrieval retry exceeded"

    #@29f
    move-object/from16 v0, v26

    #@2a1
    move-object/from16 v1, v28

    #@2a3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a6
    .line 1180
    move-object/from16 v0, p0

    #@2a8
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2aa
    move-object/from16 v26, v0

    #@2ac
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@2af
    move-result-object v26

    #@2b0
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@2b3
    move-result v26

    #@2b4
    if-eqz v26, :cond_8

    #@2b6
    .line 1181
    const/16 v24, 0x1

    #@2b8
    goto/16 :goto_5

    #@2ba
    .line 1187
    :cond_f
    :try_start_b
    move-object/from16 v0, p0

    #@2bc
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2be
    move-object/from16 v26, v0

    #@2c0
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@2c3
    move-result-object v26

    #@2c4
    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->disable()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@2c7
    goto/16 :goto_6

    #@2c9
    .line 1188
    :catch_2
    move-exception v8

    #@2ca
    .line 1189
    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_c
    const-string/jumbo v26, "BluetoothManagerService"

    #@2cd
    const-string/jumbo v28, "Unable to call disable()"

    #@2d0
    move-object/from16 v0, v26

    #@2d2
    move-object/from16 v1, v28

    #@2d4
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d7
    goto/16 :goto_6

    #@2d9
    .line 1196
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_10
    move-object/from16 v0, p0

    #@2db
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2dd
    move-object/from16 v26, v0

    #@2df
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@2e2
    move-result-object v26

    #@2e3
    const/16 v28, 0xc8

    #@2e5
    move-object/from16 v0, v26

    #@2e7
    move/from16 v1, v28

    #@2e9
    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@2ec
    move-result-object v10

    #@2ed
    .line 1197
    .local v10, "getMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@2ef
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2f1
    move-object/from16 v26, v0

    #@2f3
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@2f6
    move-result-object v26

    #@2f7
    move-object/from16 v0, v26

    #@2f9
    invoke-virtual {v0, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@2fc
    goto/16 :goto_6

    #@2fe
    .line 1201
    .end local v10    # "getMsg":Landroid/os/Message;
    :cond_11
    move-object/from16 v0, p0

    #@300
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@302
    move-object/from16 v26, v0

    #@304
    const/16 v27, 0x0

    #@306
    const/16 v28, 0x1

    #@308
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@30b
    goto/16 :goto_7

    #@30d
    .line 1212
    .end local v24    # "unbind":Z
    :sswitch_2
    move-object/from16 v0, p0

    #@30f
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@311
    move-object/from16 v26, v0

    #@313
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@316
    move-result-object v26

    #@317
    const/16 v27, 0x2a

    #@319
    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@31c
    .line 1213
    move-object/from16 v0, p0

    #@31e
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@320
    move-object/from16 v26, v0

    #@322
    const/16 v27, 0x1

    #@324
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    #@327
    .line 1214
    move-object/from16 v0, p0

    #@329
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@32b
    move-object/from16 v27, v0

    #@32d
    move-object/from16 v0, p1

    #@32f
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@331
    move/from16 v26, v0

    #@333
    const/16 v28, 0x1

    #@335
    move/from16 v0, v26

    #@337
    move/from16 v1, v28

    #@339
    if-ne v0, v1, :cond_12

    #@33b
    const/16 v26, 0x1

    #@33d
    :goto_8
    move-object/from16 v0, v27

    #@33f
    move/from16 v1, v26

    #@341
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;Z)V

    #@344
    goto/16 :goto_0

    #@346
    :cond_12
    const/16 v26, 0x0

    #@348
    goto :goto_8

    #@349
    .line 1218
    :sswitch_3
    move-object/from16 v0, p0

    #@34b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@34d
    move-object/from16 v26, v0

    #@34f
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@352
    move-result-object v26

    #@353
    const/16 v27, 0x2a

    #@355
    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@358
    .line 1219
    move-object/from16 v0, p0

    #@35a
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@35c
    move-object/from16 v26, v0

    #@35e
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    #@361
    move-result v26

    #@362
    if-eqz v26, :cond_13

    #@364
    move-object/from16 v0, p0

    #@366
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@368
    move-object/from16 v26, v0

    #@36a
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@36d
    move-result-object v26

    #@36e
    if-eqz v26, :cond_13

    #@370
    .line 1220
    move-object/from16 v0, p0

    #@372
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@374
    move-object/from16 v26, v0

    #@376
    const/16 v27, 0x1

    #@378
    const/16 v28, 0x0

    #@37a
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@37d
    .line 1221
    move-object/from16 v0, p0

    #@37f
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@381
    move-object/from16 v26, v0

    #@383
    const/16 v27, 0x0

    #@385
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    #@388
    .line 1222
    move-object/from16 v0, p0

    #@38a
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@38c
    move-object/from16 v26, v0

    #@38e
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap6(Lcom/android/server/BluetoothManagerService;)V

    #@391
    .line 1223
    move-object/from16 v0, p0

    #@393
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@395
    move-object/from16 v26, v0

    #@397
    const/16 v27, 0x0

    #@399
    const/16 v28, 0x0

    #@39b
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@39e
    goto/16 :goto_0

    #@3a0
    .line 1225
    :cond_13
    move-object/from16 v0, p0

    #@3a2
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@3a4
    move-object/from16 v26, v0

    #@3a6
    const/16 v27, 0x0

    #@3a8
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    #@3ab
    .line 1226
    move-object/from16 v0, p0

    #@3ad
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@3af
    move-object/from16 v26, v0

    #@3b1
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap6(Lcom/android/server/BluetoothManagerService;)V

    #@3b4
    goto/16 :goto_0

    #@3b6
    .line 1232
    :sswitch_4
    move-object/from16 v0, p1

    #@3b8
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3ba
    check-cast v6, Landroid/bluetooth/IBluetoothManagerCallback;

    #@3bc
    .line 1233
    .local v6, "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    #@3be
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@3c0
    move-object/from16 v26, v0

    #@3c2
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    #@3c5
    move-result-object v26

    #@3c6
    move-object/from16 v0, v26

    #@3c8
    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@3cb
    move-result v4

    #@3cc
    .line 1234
    .local v4, "added":Z
    const-string/jumbo v26, "BluetoothManagerService"

    #@3cf
    new-instance v27, Ljava/lang/StringBuilder;

    #@3d1
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@3d4
    const-string/jumbo v28, "Added callback: "

    #@3d7
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3da
    move-result-object v27

    #@3db
    if-nez v6, :cond_14

    #@3dd
    const-string/jumbo v6, "null"

    #@3e0
    .end local v6    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_14
    move-object/from16 v0, v27

    #@3e2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e5
    move-result-object v27

    #@3e6
    const-string/jumbo v28, ":"

    #@3e9
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ec
    move-result-object v27

    #@3ed
    move-object/from16 v0, v27

    #@3ef
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3f2
    move-result-object v27

    #@3f3
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f6
    move-result-object v27

    #@3f7
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3fa
    goto/16 :goto_0

    #@3fc
    .line 1239
    .end local v4    # "added":Z
    :sswitch_5
    move-object/from16 v0, p1

    #@3fe
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@400
    check-cast v6, Landroid/bluetooth/IBluetoothManagerCallback;

    #@402
    .line 1240
    .restart local v6    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    #@404
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@406
    move-object/from16 v26, v0

    #@408
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    #@40b
    move-result-object v26

    #@40c
    move-object/from16 v0, v26

    #@40e
    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@411
    move-result v18

    #@412
    .line 1241
    .local v18, "removed":Z
    const-string/jumbo v26, "BluetoothManagerService"

    #@415
    new-instance v27, Ljava/lang/StringBuilder;

    #@417
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@41a
    const-string/jumbo v28, "Removed callback: "

    #@41d
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@420
    move-result-object v27

    #@421
    if-nez v6, :cond_15

    #@423
    const-string/jumbo v6, "null"

    #@426
    .end local v6    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_15
    move-object/from16 v0, v27

    #@428
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42b
    move-result-object v27

    #@42c
    const-string/jumbo v28, ":"

    #@42f
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@432
    move-result-object v27

    #@433
    move-object/from16 v0, v27

    #@435
    move/from16 v1, v18

    #@437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@43a
    move-result-object v27

    #@43b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43e
    move-result-object v27

    #@43f
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@442
    goto/16 :goto_0

    #@444
    .line 1246
    .end local v18    # "removed":Z
    :sswitch_6
    move-object/from16 v0, p1

    #@446
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@448
    check-cast v7, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@44a
    .line 1247
    .local v7, "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    if-eqz v7, :cond_0

    #@44c
    .line 1248
    move-object/from16 v0, p0

    #@44e
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@450
    move-object/from16 v26, v0

    #@452
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    #@455
    move-result-object v26

    #@456
    move-object/from16 v0, v26

    #@458
    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@45b
    goto/16 :goto_0

    #@45d
    .line 1254
    .end local v7    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_7
    move-object/from16 v0, p1

    #@45f
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@461
    check-cast v7, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@463
    .line 1255
    .restart local v7    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    if-eqz v7, :cond_0

    #@465
    .line 1256
    move-object/from16 v0, p0

    #@467
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@469
    move-object/from16 v26, v0

    #@46b
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    #@46e
    move-result-object v26

    #@46f
    move-object/from16 v0, v26

    #@471
    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@474
    goto/16 :goto_0

    #@476
    .line 1262
    .end local v7    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_8
    move-object/from16 v0, p0

    #@478
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@47a
    move-object/from16 v26, v0

    #@47c
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    #@47f
    move-result-object v26

    #@480
    .line 1263
    new-instance v27, Ljava/lang/Integer;

    #@482
    move-object/from16 v0, p1

    #@484
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@486
    move/from16 v28, v0

    #@488
    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    #@48b
    .line 1262
    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48e
    move-result-object v16

    #@48f
    check-cast v16, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    #@491
    .line 1264
    .local v16, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-eqz v16, :cond_0

    #@493
    .line 1268
    move-object/from16 v0, p1

    #@495
    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@497
    check-cast v15, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@499
    .line 1269
    .local v15, "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    move-object/from16 v0, v16

    #@49b
    invoke-static {v0, v15}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap1(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    #@49e
    goto/16 :goto_0

    #@4a0
    .line 1274
    .end local v15    # "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    .end local v16    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :sswitch_9
    move-object/from16 v0, p1

    #@4a2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4a4
    move-object/from16 v16, v0

    #@4a6
    check-cast v16, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    #@4a8
    .line 1275
    .restart local v16    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    move-object/from16 v0, p1

    #@4aa
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4ac
    move-object/from16 v26, v0

    #@4ae
    const/16 v27, 0x191

    #@4b0
    move-object/from16 v0, p0

    #@4b2
    move/from16 v1, v27

    #@4b4
    move-object/from16 v2, v26

    #@4b6
    invoke-virtual {v0, v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    #@4b9
    .line 1276
    if-eqz v16, :cond_0

    #@4bb
    .line 1279
    invoke-static/range {v16 .. v16}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap0(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    #@4be
    goto/16 :goto_0

    #@4c0
    .line 1286
    .end local v16    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :sswitch_a
    move-object/from16 v0, p1

    #@4c2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4c4
    move-object/from16 v22, v0

    #@4c6
    check-cast v22, Landroid/os/IBinder;

    #@4c8
    .line 1287
    .local v22, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@4ca
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@4cc
    move-object/from16 v26, v0

    #@4ce
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@4d1
    move-result-object v27

    #@4d2
    monitor-enter v27

    #@4d3
    .line 1288
    :try_start_d
    move-object/from16 v0, p1

    #@4d5
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@4d7
    move/from16 v26, v0

    #@4d9
    const/16 v28, 0x2

    #@4db
    move/from16 v0, v26

    #@4dd
    move/from16 v1, v28

    #@4df
    if-ne v0, v1, :cond_16

    #@4e1
    .line 1289
    move-object/from16 v0, p0

    #@4e3
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@4e5
    move-object/from16 v26, v0

    #@4e7
    invoke-static/range {v22 .. v22}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    #@4ea
    move-result-object v28

    #@4eb
    move-object/from16 v0, v26

    #@4ed
    move-object/from16 v1, v28

    #@4ef
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    #@4f2
    .line 1290
    move-object/from16 v0, p0

    #@4f4
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@4f6
    move-object/from16 v26, v0

    #@4f8
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    #@4fb
    goto/16 :goto_1

    #@4fd
    .line 1287
    :catchall_3
    move-exception v26

    #@4fe
    monitor-exit v27

    #@4ff
    throw v26

    #@500
    .line 1295
    :cond_16
    :try_start_e
    move-object/from16 v0, p0

    #@502
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@504
    move-object/from16 v26, v0

    #@506
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@509
    move-result-object v26

    #@50a
    const/16 v28, 0x64

    #@50c
    move-object/from16 v0, v26

    #@50e
    move/from16 v1, v28

    #@510
    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@513
    .line 1297
    move-object/from16 v0, p0

    #@515
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@517
    move-object/from16 v26, v0

    #@519
    const/16 v28, 0x0

    #@51b
    move-object/from16 v0, v26

    #@51d
    move/from16 v1, v28

    #@51f
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z

    #@522
    .line 1298
    move-object/from16 v0, p0

    #@524
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@526
    move-object/from16 v26, v0

    #@528
    invoke-static/range {v22 .. v22}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    #@52b
    move-result-object v28

    #@52c
    move-object/from16 v0, v26

    #@52e
    move-object/from16 v1, v28

    #@530
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set2(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    #@533
    .line 1301
    :try_start_f
    move-object/from16 v0, p0

    #@535
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@537
    move-object/from16 v26, v0

    #@539
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get6(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;

    #@53c
    move-result-object v26

    #@53d
    .line 1302
    const-string/jumbo v28, "bluetooth_hci_log"

    #@540
    const/16 v29, 0x0

    #@542
    .line 1301
    move-object/from16 v0, v26

    #@544
    move-object/from16 v1, v28

    #@546
    move/from16 v2, v29

    #@548
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@54b
    move-result v26

    #@54c
    .line 1302
    const/16 v28, 0x1

    #@54e
    .line 1301
    move/from16 v0, v26

    #@550
    move/from16 v1, v28

    #@552
    if-ne v0, v1, :cond_18

    #@554
    const/4 v9, 0x1

    #@555
    .line 1303
    .local v9, "enableHciSnoopLog":Z
    :goto_9
    move-object/from16 v0, p0

    #@557
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@559
    move-object/from16 v26, v0

    #@55b
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@55e
    move-result-object v26

    #@55f
    move-object/from16 v0, v26

    #@561
    invoke-interface {v0, v9}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z

    #@564
    move-result v26

    #@565
    if-nez v26, :cond_17

    #@567
    .line 1304
    const-string/jumbo v26, "BluetoothManagerService"

    #@56a
    const-string/jumbo v28, "IBluetooth.configHciSnoopLog return false"

    #@56d
    move-object/from16 v0, v26

    #@56f
    move-object/from16 v1, v28

    #@571
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    #@574
    .line 1310
    .end local v9    # "enableHciSnoopLog":Z
    :cond_17
    :goto_a
    :try_start_10
    move-object/from16 v0, p0

    #@576
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@578
    move-object/from16 v26, v0

    #@57a
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@57d
    move-result-object v26

    #@57e
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    #@581
    move-result v26

    #@582
    if-eqz v26, :cond_19

    #@584
    .line 1312
    move-object/from16 v0, p0

    #@586
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@588
    move-object/from16 v26, v0

    #@58a
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@58d
    move-result-object v26

    #@58e
    const/16 v28, 0xc8

    #@590
    move-object/from16 v0, v26

    #@592
    move/from16 v1, v28

    #@594
    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@597
    move-result-object v10

    #@598
    .line 1313
    .restart local v10    # "getMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@59a
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@59c
    move-object/from16 v26, v0

    #@59e
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@5a1
    move-result-object v26

    #@5a2
    move-object/from16 v0, v26

    #@5a4
    invoke-virtual {v0, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@5a7
    .line 1314
    move-object/from16 v0, p0

    #@5a9
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@5ab
    move-object/from16 v26, v0

    #@5ad
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    #@5b0
    move-result v26

    #@5b1
    if-nez v26, :cond_19

    #@5b3
    monitor-exit v27

    #@5b4
    return-void

    #@5b5
    .line 1301
    .end local v10    # "getMsg":Landroid/os/Message;
    :cond_18
    const/4 v9, 0x0

    #@5b6
    .restart local v9    # "enableHciSnoopLog":Z
    goto :goto_9

    #@5b7
    .line 1306
    .end local v9    # "enableHciSnoopLog":Z
    :catch_3
    move-exception v8

    #@5b8
    .line 1307
    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_11
    const-string/jumbo v26, "BluetoothManagerService"

    #@5bb
    const-string/jumbo v28, "Unable to call configHciSnoopLog"

    #@5be
    move-object/from16 v0, v26

    #@5c0
    move-object/from16 v1, v28

    #@5c2
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5c5
    goto :goto_a

    #@5c6
    .line 1317
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_19
    move-object/from16 v0, p0

    #@5c8
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@5ca
    move-object/from16 v26, v0

    #@5cc
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@5cf
    move-result-object v26

    #@5d0
    const/16 v28, 0x0

    #@5d2
    move-object/from16 v0, v26

    #@5d4
    move/from16 v1, v28

    #@5d6
    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    #@5d9
    .line 1320
    :try_start_12
    move-object/from16 v0, p0

    #@5db
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@5dd
    move-object/from16 v26, v0

    #@5df
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@5e2
    move-result-object v26

    #@5e3
    move-object/from16 v0, p0

    #@5e5
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@5e7
    move-object/from16 v28, v0

    #@5e9
    invoke-static/range {v28 .. v28}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    #@5ec
    move-result-object v28

    #@5ed
    move-object/from16 v0, v26

    #@5ef
    move-object/from16 v1, v28

    #@5f1
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    #@5f4
    .line 1325
    :goto_b
    :try_start_13
    move-object/from16 v0, p0

    #@5f6
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@5f8
    move-object/from16 v26, v0

    #@5fa
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap12(Lcom/android/server/BluetoothManagerService;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    #@5fd
    .line 1329
    :try_start_14
    move-object/from16 v0, p0

    #@5ff
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@601
    move-object/from16 v26, v0

    #@603
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    #@606
    move-result v26

    #@607
    if-nez v26, :cond_1b

    #@609
    .line 1330
    move-object/from16 v0, p0

    #@60b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@60d
    move-object/from16 v26, v0

    #@60f
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@612
    move-result-object v26

    #@613
    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->enable()Z

    #@616
    move-result v26

    #@617
    if-nez v26, :cond_1a

    #@619
    .line 1331
    const-string/jumbo v26, "BluetoothManagerService"

    #@61c
    const-string/jumbo v28, "IBluetooth.enable() returned false"

    #@61f
    move-object/from16 v0, v26

    #@621
    move-object/from16 v1, v28

    #@623
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    #@626
    :cond_1a
    :goto_c
    monitor-exit v27

    #@627
    .line 1345
    move-object/from16 v0, p0

    #@629
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@62b
    move-object/from16 v26, v0

    #@62d
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    #@630
    move-result v26

    #@631
    if-nez v26, :cond_0

    #@633
    .line 1346
    move-object/from16 v0, p0

    #@635
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@637
    move-object/from16 v26, v0

    #@639
    const/16 v27, 0x1

    #@63b
    const/16 v28, 0x0

    #@63d
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@640
    .line 1347
    move-object/from16 v0, p0

    #@642
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@644
    move-object/from16 v26, v0

    #@646
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap6(Lcom/android/server/BluetoothManagerService;)V

    #@649
    .line 1348
    move-object/from16 v0, p0

    #@64b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@64d
    move-object/from16 v26, v0

    #@64f
    const/16 v27, 0x0

    #@651
    const/16 v28, 0x0

    #@653
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@656
    goto/16 :goto_0

    #@658
    .line 1321
    :catch_4
    move-exception v17

    #@659
    .line 1322
    .restart local v17    # "re":Landroid/os/RemoteException;
    :try_start_15
    const-string/jumbo v26, "BluetoothManagerService"

    #@65c
    const-string/jumbo v28, "Unable to register BluetoothCallback"

    #@65f
    move-object/from16 v0, v26

    #@661
    move-object/from16 v1, v28

    #@663
    move-object/from16 v2, v17

    #@665
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    #@668
    goto :goto_b

    #@669
    .line 1336
    .end local v17    # "re":Landroid/os/RemoteException;
    :cond_1b
    :try_start_16
    move-object/from16 v0, p0

    #@66b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@66d
    move-object/from16 v26, v0

    #@66f
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@672
    move-result-object v26

    #@673
    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    #@676
    move-result v26

    #@677
    if-nez v26, :cond_1a

    #@679
    .line 1337
    const-string/jumbo v26, "BluetoothManagerService"

    #@67c
    const-string/jumbo v28, "IBluetooth.enableNoAutoConnect() returned false"

    #@67f
    move-object/from16 v0, v26

    #@681
    move-object/from16 v1, v28

    #@683
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    #@686
    goto :goto_c

    #@687
    .line 1340
    :catch_5
    move-exception v8

    #@688
    .line 1341
    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_17
    const-string/jumbo v26, "BluetoothManagerService"

    #@68b
    const-string/jumbo v28, "Unable to call enable()"

    #@68e
    move-object/from16 v0, v26

    #@690
    move-object/from16 v1, v28

    #@692
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    #@695
    goto :goto_c

    #@696
    .line 1353
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v22    # "service":Landroid/os/IBinder;
    :sswitch_b
    const-string/jumbo v26, "BluetoothManagerService"

    #@699
    const-string/jumbo v27, "MESSAGE_TIMEOUT_BIND"

    #@69c
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@69f
    .line 1354
    move-object/from16 v0, p0

    #@6a1
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6a3
    move-object/from16 v26, v0

    #@6a5
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@6a8
    move-result-object v27

    #@6a9
    monitor-enter v27

    #@6aa
    .line 1355
    :try_start_18
    move-object/from16 v0, p0

    #@6ac
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6ae
    move-object/from16 v26, v0

    #@6b0
    const/16 v28, 0x0

    #@6b2
    move-object/from16 v0, v26

    #@6b4
    move/from16 v1, v28

    #@6b6
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    #@6b9
    goto/16 :goto_1

    #@6bb
    .line 1354
    :catchall_4
    move-exception v26

    #@6bc
    monitor-exit v27

    #@6bd
    throw v26

    #@6be
    .line 1361
    :sswitch_c
    move-object/from16 v0, p1

    #@6c0
    iget v14, v0, Landroid/os/Message;->arg1:I

    #@6c2
    .line 1362
    .local v14, "prevState":I
    move-object/from16 v0, p1

    #@6c4
    iget v13, v0, Landroid/os/Message;->arg2:I

    #@6c6
    .line 1364
    .local v13, "newState":I
    move-object/from16 v0, p0

    #@6c8
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6ca
    move-object/from16 v26, v0

    #@6cc
    move-object/from16 v0, v26

    #@6ce
    invoke-static {v0, v13}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    #@6d1
    .line 1365
    move-object/from16 v0, p0

    #@6d3
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6d5
    move-object/from16 v26, v0

    #@6d7
    move-object/from16 v0, v26

    #@6d9
    invoke-static {v0, v14, v13}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;II)V

    #@6dc
    .line 1368
    const/16 v26, 0xe

    #@6de
    move/from16 v0, v26

    #@6e0
    if-ne v14, v0, :cond_1c

    #@6e2
    .line 1369
    const/16 v26, 0xa

    #@6e4
    move/from16 v0, v26

    #@6e6
    if-ne v13, v0, :cond_1c

    #@6e8
    .line 1370
    move-object/from16 v0, p0

    #@6ea
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6ec
    move-object/from16 v26, v0

    #@6ee
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@6f1
    move-result-object v26

    #@6f2
    if-eqz v26, :cond_1c

    #@6f4
    move-object/from16 v0, p0

    #@6f6
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6f8
    move-object/from16 v26, v0

    #@6fa
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    #@6fd
    move-result v26

    #@6fe
    .line 1368
    if-eqz v26, :cond_1c

    #@700
    .line 1371
    move-object/from16 v0, p0

    #@702
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@704
    move-object/from16 v26, v0

    #@706
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap10(Lcom/android/server/BluetoothManagerService;)V

    #@709
    .line 1373
    :cond_1c
    const/16 v26, 0xb

    #@70b
    move/from16 v0, v26

    #@70d
    if-ne v14, v0, :cond_1d

    #@70f
    .line 1374
    const/16 v26, 0xf

    #@711
    move/from16 v0, v26

    #@713
    if-ne v13, v0, :cond_1d

    #@715
    .line 1375
    move-object/from16 v0, p0

    #@717
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@719
    move-object/from16 v26, v0

    #@71b
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@71e
    move-result-object v26

    #@71f
    if-eqz v26, :cond_1d

    #@721
    move-object/from16 v0, p0

    #@723
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@725
    move-object/from16 v26, v0

    #@727
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    #@72a
    move-result v26

    #@72b
    .line 1373
    if-eqz v26, :cond_1d

    #@72d
    .line 1376
    move-object/from16 v0, p0

    #@72f
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@731
    move-object/from16 v26, v0

    #@733
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap10(Lcom/android/server/BluetoothManagerService;)V

    #@736
    .line 1378
    :cond_1d
    const/16 v26, 0xc

    #@738
    move/from16 v0, v26

    #@73a
    if-eq v13, v0, :cond_1e

    #@73c
    .line 1379
    const/16 v26, 0xf

    #@73e
    move/from16 v0, v26

    #@740
    if-ne v13, v0, :cond_0

    #@742
    .line 1381
    :cond_1e
    move-object/from16 v0, p0

    #@744
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@746
    move-object/from16 v26, v0

    #@748
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)I

    #@74b
    move-result v26

    #@74c
    if-eqz v26, :cond_0

    #@74e
    .line 1382
    const-string/jumbo v26, "BluetoothManagerService"

    #@751
    const-string/jumbo v27, "bluetooth is recovered from error"

    #@754
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@757
    .line 1383
    move-object/from16 v0, p0

    #@759
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@75b
    move-object/from16 v26, v0

    #@75d
    const/16 v27, 0x0

    #@75f
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set6(Lcom/android/server/BluetoothManagerService;I)I

    #@762
    goto/16 :goto_0

    #@764
    .line 1390
    .end local v13    # "newState":I
    .end local v14    # "prevState":I
    :sswitch_d
    const-string/jumbo v26, "BluetoothManagerService"

    #@767
    new-instance v27, Ljava/lang/StringBuilder;

    #@769
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@76c
    const-string/jumbo v28, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED: "

    #@76f
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@772
    move-result-object v27

    #@773
    move-object/from16 v0, p1

    #@775
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@777
    move/from16 v28, v0

    #@779
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77c
    move-result-object v27

    #@77d
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@780
    move-result-object v27

    #@781
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@784
    .line 1391
    move-object/from16 v0, p0

    #@786
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@788
    move-object/from16 v26, v0

    #@78a
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@78d
    move-result-object v27

    #@78e
    monitor-enter v27

    #@78f
    .line 1392
    :try_start_19
    move-object/from16 v0, p1

    #@791
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@793
    move/from16 v26, v0

    #@795
    const/16 v28, 0x1

    #@797
    move/from16 v0, v26

    #@799
    move/from16 v1, v28

    #@79b
    if-ne v0, v1, :cond_23

    #@79d
    .line 1394
    move-object/from16 v0, p0

    #@79f
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@7a1
    move-object/from16 v26, v0

    #@7a3
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@7a6
    move-result-object v26

    #@7a7
    if-eqz v26, :cond_2

    #@7a9
    .line 1395
    move-object/from16 v0, p0

    #@7ab
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@7ad
    move-object/from16 v26, v0

    #@7af
    const/16 v28, 0x0

    #@7b1
    move-object/from16 v0, v26

    #@7b3
    move-object/from16 v1, v28

    #@7b5
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set2(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    #@7b8
    monitor-exit v27

    #@7b9
    .line 1405
    move-object/from16 v0, p0

    #@7bb
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@7bd
    move-object/from16 v26, v0

    #@7bf
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    #@7c2
    move-result v26

    #@7c3
    if-eqz v26, :cond_1f

    #@7c5
    .line 1406
    move-object/from16 v0, p0

    #@7c7
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@7c9
    move-object/from16 v26, v0

    #@7cb
    const/16 v27, 0x0

    #@7cd
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    #@7d0
    .line 1408
    move-object/from16 v0, p0

    #@7d2
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@7d4
    move-object/from16 v26, v0

    #@7d6
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@7d9
    move-result-object v26

    #@7da
    .line 1409
    const/16 v27, 0x2a

    #@7dc
    .line 1408
    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@7df
    move-result-object v19

    #@7e0
    .line 1410
    .local v19, "restartMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@7e2
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@7e4
    move-object/from16 v26, v0

    #@7e6
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@7e9
    move-result-object v26

    #@7ea
    .line 1411
    const-wide/16 v28, 0xc8

    #@7ec
    .line 1410
    move-object/from16 v0, v26

    #@7ee
    move-object/from16 v1, v19

    #@7f0
    move-wide/from16 v2, v28

    #@7f2
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@7f5
    .line 1414
    .end local v19    # "restartMsg":Landroid/os/Message;
    :cond_1f
    move-object/from16 v0, p0

    #@7f7
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@7f9
    move-object/from16 v26, v0

    #@7fb
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@7fe
    move-result-object v26

    #@7ff
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    #@802
    move-result v26

    #@803
    if-nez v26, :cond_0

    #@805
    .line 1415
    move-object/from16 v0, p0

    #@807
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@809
    move-object/from16 v26, v0

    #@80b
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;)V

    #@80e
    .line 1419
    move-object/from16 v0, p0

    #@810
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@812
    move-object/from16 v26, v0

    #@814
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get16(Lcom/android/server/BluetoothManagerService;)I

    #@817
    move-result v26

    #@818
    const/16 v27, 0xb

    #@81a
    move/from16 v0, v26

    #@81c
    move/from16 v1, v27

    #@81e
    if-eq v0, v1, :cond_20

    #@820
    .line 1420
    move-object/from16 v0, p0

    #@822
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@824
    move-object/from16 v26, v0

    #@826
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get16(Lcom/android/server/BluetoothManagerService;)I

    #@829
    move-result v26

    #@82a
    const/16 v27, 0xc

    #@82c
    move/from16 v0, v26

    #@82e
    move/from16 v1, v27

    #@830
    if-ne v0, v1, :cond_21

    #@832
    .line 1421
    :cond_20
    move-object/from16 v0, p0

    #@834
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@836
    move-object/from16 v26, v0

    #@838
    const/16 v27, 0xc

    #@83a
    .line 1422
    const/16 v28, 0xd

    #@83c
    .line 1421
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;II)V

    #@83f
    .line 1423
    move-object/from16 v0, p0

    #@841
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@843
    move-object/from16 v26, v0

    #@845
    const/16 v27, 0xd

    #@847
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    #@84a
    .line 1425
    :cond_21
    move-object/from16 v0, p0

    #@84c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@84e
    move-object/from16 v26, v0

    #@850
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get16(Lcom/android/server/BluetoothManagerService;)I

    #@853
    move-result v26

    #@854
    const/16 v27, 0xd

    #@856
    move/from16 v0, v26

    #@858
    move/from16 v1, v27

    #@85a
    if-ne v0, v1, :cond_22

    #@85c
    .line 1426
    move-object/from16 v0, p0

    #@85e
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@860
    move-object/from16 v26, v0

    #@862
    const/16 v27, 0xd

    #@864
    .line 1427
    const/16 v28, 0xa

    #@866
    .line 1426
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;II)V

    #@869
    .line 1430
    :cond_22
    move-object/from16 v0, p0

    #@86b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@86d
    move-object/from16 v26, v0

    #@86f
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@872
    move-result-object v26

    #@873
    const/16 v27, 0x3c

    #@875
    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@878
    .line 1431
    move-object/from16 v0, p0

    #@87a
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@87c
    move-object/from16 v26, v0

    #@87e
    const/16 v27, 0xa

    #@880
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    #@883
    goto/16 :goto_0

    #@885
    .line 1396
    :cond_23
    :try_start_1a
    move-object/from16 v0, p1

    #@887
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@889
    move/from16 v26, v0

    #@88b
    const/16 v28, 0x2

    #@88d
    move/from16 v0, v26

    #@88f
    move/from16 v1, v28

    #@891
    if-ne v0, v1, :cond_24

    #@893
    .line 1397
    move-object/from16 v0, p0

    #@895
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@897
    move-object/from16 v26, v0

    #@899
    const/16 v28, 0x0

    #@89b
    move-object/from16 v0, v26

    #@89d
    move-object/from16 v1, v28

    #@89f
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    #@8a2
    goto/16 :goto_1

    #@8a4
    .line 1391
    :catchall_5
    move-exception v26

    #@8a5
    monitor-exit v27

    #@8a6
    throw v26

    #@8a7
    .line 1400
    :cond_24
    :try_start_1b
    const-string/jumbo v26, "BluetoothManagerService"

    #@8aa
    new-instance v28, Ljava/lang/StringBuilder;

    #@8ac
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@8af
    const-string/jumbo v29, "Bad msg.arg1: "

    #@8b2
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b5
    move-result-object v28

    #@8b6
    move-object/from16 v0, p1

    #@8b8
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@8ba
    move/from16 v29, v0

    #@8bc
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8bf
    move-result-object v28

    #@8c0
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c3
    move-result-object v28

    #@8c4
    move-object/from16 v0, v26

    #@8c6
    move-object/from16 v1, v28

    #@8c8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    #@8cb
    goto/16 :goto_1

    #@8cd
    .line 1437
    :sswitch_e
    const-string/jumbo v26, "BluetoothManagerService"

    #@8d0
    const-string/jumbo v27, "MESSAGE_RESTART_BLUETOOTH_SERVICE: Restart IBluetooth service"

    #@8d3
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8d6
    .line 1442
    move-object/from16 v0, p0

    #@8d8
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@8da
    move-object/from16 v26, v0

    #@8dc
    const/16 v27, 0x1

    #@8de
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    #@8e1
    .line 1443
    move-object/from16 v0, p0

    #@8e3
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@8e5
    move-object/from16 v26, v0

    #@8e7
    move-object/from16 v0, p0

    #@8e9
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@8eb
    move-object/from16 v27, v0

    #@8ed
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    #@8f0
    move-result v27

    #@8f1
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;Z)V

    #@8f4
    goto/16 :goto_0

    #@8f6
    .line 1449
    :sswitch_f
    const-string/jumbo v26, "BluetoothManagerService"

    #@8f9
    const-string/jumbo v27, "MESSAGE_TIMEOUT_UNBIND"

    #@8fc
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8ff
    .line 1450
    move-object/from16 v0, p0

    #@901
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@903
    move-object/from16 v26, v0

    #@905
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@908
    move-result-object v27

    #@909
    monitor-enter v27

    #@90a
    .line 1451
    :try_start_1c
    move-object/from16 v0, p0

    #@90c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@90e
    move-object/from16 v26, v0

    #@910
    const/16 v28, 0x0

    #@912
    move-object/from16 v0, v26

    #@914
    move/from16 v1, v28

    #@916
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set8(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    #@919
    goto/16 :goto_1

    #@91b
    .line 1450
    :catchall_6
    move-exception v26

    #@91c
    monitor-exit v27

    #@91d
    throw v26

    #@91e
    .line 1461
    :sswitch_10
    move-object/from16 v0, p0

    #@920
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@922
    move-object/from16 v26, v0

    #@924
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@927
    move-result-object v26

    #@928
    const/16 v27, 0x12c

    #@92a
    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@92d
    .line 1463
    move-object/from16 v0, p0

    #@92f
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@931
    move-object/from16 v26, v0

    #@933
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    #@936
    move-result v26

    #@937
    if-eqz v26, :cond_2a

    #@939
    move-object/from16 v0, p0

    #@93b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@93d
    move-object/from16 v26, v0

    #@93f
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@942
    move-result-object v26

    #@943
    if-eqz v26, :cond_2a

    #@945
    .line 1464
    move-object/from16 v0, p0

    #@947
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@949
    move-object/from16 v26, v0

    #@94b
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@94e
    move-result-object v27

    #@94f
    monitor-enter v27

    #@950
    .line 1465
    :try_start_1d
    move-object/from16 v0, p0

    #@952
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@954
    move-object/from16 v26, v0

    #@956
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    #@959
    move-result-object v26

    #@95a
    if-eqz v26, :cond_25

    #@95c
    .line 1468
    :try_start_1e
    move-object/from16 v0, p0

    #@95e
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@960
    move-object/from16 v26, v0

    #@962
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@965
    move-result-object v26

    #@966
    move-object/from16 v0, p0

    #@968
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@96a
    move-object/from16 v28, v0

    #@96c
    invoke-static/range {v28 .. v28}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    #@96f
    move-result-object v28

    #@970
    move-object/from16 v0, v26

    #@972
    move-object/from16 v1, v28

    #@974
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    #@977
    :cond_25
    :goto_d
    monitor-exit v27

    #@978
    .line 1475
    move-object/from16 v0, p0

    #@97a
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@97c
    move-object/from16 v26, v0

    #@97e
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get16(Lcom/android/server/BluetoothManagerService;)I

    #@981
    move-result v26

    #@982
    const/16 v27, 0xd

    #@984
    move/from16 v0, v26

    #@986
    move/from16 v1, v27

    #@988
    if-ne v0, v1, :cond_26

    #@98a
    .line 1477
    move-object/from16 v0, p0

    #@98c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@98e
    move-object/from16 v26, v0

    #@990
    move-object/from16 v0, p0

    #@992
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@994
    move-object/from16 v27, v0

    #@996
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get16(Lcom/android/server/BluetoothManagerService;)I

    #@999
    move-result v27

    #@99a
    const/16 v28, 0xa

    #@99c
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;II)V

    #@99f
    .line 1478
    move-object/from16 v0, p0

    #@9a1
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9a3
    move-object/from16 v26, v0

    #@9a5
    const/16 v27, 0xa

    #@9a7
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    #@9aa
    .line 1480
    :cond_26
    move-object/from16 v0, p0

    #@9ac
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9ae
    move-object/from16 v26, v0

    #@9b0
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get16(Lcom/android/server/BluetoothManagerService;)I

    #@9b3
    move-result v26

    #@9b4
    const/16 v27, 0xa

    #@9b6
    move/from16 v0, v26

    #@9b8
    move/from16 v1, v27

    #@9ba
    if-ne v0, v1, :cond_27

    #@9bc
    .line 1481
    move-object/from16 v0, p0

    #@9be
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9c0
    move-object/from16 v26, v0

    #@9c2
    move-object/from16 v0, p0

    #@9c4
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9c6
    move-object/from16 v27, v0

    #@9c8
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get16(Lcom/android/server/BluetoothManagerService;)I

    #@9cb
    move-result v27

    #@9cc
    const/16 v28, 0xb

    #@9ce
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;II)V

    #@9d1
    .line 1482
    move-object/from16 v0, p0

    #@9d3
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9d5
    move-object/from16 v26, v0

    #@9d7
    const/16 v27, 0xb

    #@9d9
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    #@9dc
    .line 1485
    :cond_27
    move-object/from16 v0, p0

    #@9de
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9e0
    move-object/from16 v26, v0

    #@9e2
    const/16 v27, 0x1

    #@9e4
    const/16 v28, 0x0

    #@9e6
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@9e9
    .line 1487
    move-object/from16 v0, p0

    #@9eb
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9ed
    move-object/from16 v26, v0

    #@9ef
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get16(Lcom/android/server/BluetoothManagerService;)I

    #@9f2
    move-result v26

    #@9f3
    const/16 v27, 0xb

    #@9f5
    move/from16 v0, v26

    #@9f7
    move/from16 v1, v27

    #@9f9
    if-ne v0, v1, :cond_28

    #@9fb
    .line 1488
    move-object/from16 v0, p0

    #@9fd
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9ff
    move-object/from16 v26, v0

    #@a01
    move-object/from16 v0, p0

    #@a03
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a05
    move-object/from16 v27, v0

    #@a07
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get16(Lcom/android/server/BluetoothManagerService;)I

    #@a0a
    move-result v27

    #@a0b
    const/16 v28, 0xc

    #@a0d
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;II)V

    #@a10
    .line 1491
    :cond_28
    move-object/from16 v0, p0

    #@a12
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a14
    move-object/from16 v26, v0

    #@a16
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap16(Lcom/android/server/BluetoothManagerService;)V

    #@a19
    .line 1493
    move-object/from16 v0, p0

    #@a1b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a1d
    move-object/from16 v26, v0

    #@a1f
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap6(Lcom/android/server/BluetoothManagerService;)V

    #@a22
    .line 1495
    move-object/from16 v0, p0

    #@a24
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a26
    move-object/from16 v26, v0

    #@a28
    const/16 v27, 0xc

    #@a2a
    .line 1496
    const/16 v28, 0xd

    #@a2c
    .line 1495
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;II)V

    #@a2f
    .line 1498
    move-object/from16 v0, p0

    #@a31
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a33
    move-object/from16 v26, v0

    #@a35
    const/16 v27, 0x0

    #@a37
    const/16 v28, 0x1

    #@a39
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@a3c
    .line 1500
    move-object/from16 v0, p0

    #@a3e
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a40
    move-object/from16 v26, v0

    #@a42
    const/16 v27, 0xd

    #@a44
    .line 1501
    const/16 v28, 0xa

    #@a46
    .line 1500
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;II)V

    #@a49
    .line 1502
    move-object/from16 v0, p0

    #@a4b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a4d
    move-object/from16 v26, v0

    #@a4f
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;)V

    #@a52
    .line 1503
    move-object/from16 v0, p0

    #@a54
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a56
    move-object/from16 v26, v0

    #@a58
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@a5b
    move-result-object v27

    #@a5c
    monitor-enter v27

    #@a5d
    .line 1504
    :try_start_1f
    move-object/from16 v0, p0

    #@a5f
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a61
    move-object/from16 v26, v0

    #@a63
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@a66
    move-result-object v26

    #@a67
    if-eqz v26, :cond_29

    #@a69
    .line 1505
    move-object/from16 v0, p0

    #@a6b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a6d
    move-object/from16 v26, v0

    #@a6f
    const/16 v28, 0x0

    #@a71
    move-object/from16 v0, v26

    #@a73
    move-object/from16 v1, v28

    #@a75
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set2(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    #@a78
    .line 1507
    move-object/from16 v0, p0

    #@a7a
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a7c
    move-object/from16 v26, v0

    #@a7e
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    #@a81
    move-result-object v26

    #@a82
    move-object/from16 v0, p0

    #@a84
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a86
    move-object/from16 v28, v0

    #@a88
    invoke-static/range {v28 .. v28}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@a8b
    move-result-object v28

    #@a8c
    move-object/from16 v0, v26

    #@a8e
    move-object/from16 v1, v28

    #@a90
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@a93
    .line 1509
    :cond_29
    move-object/from16 v0, p0

    #@a95
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a97
    move-object/from16 v26, v0

    #@a99
    const/16 v28, 0x0

    #@a9b
    move-object/from16 v0, v26

    #@a9d
    move-object/from16 v1, v28

    #@a9f
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    #@aa2
    monitor-exit v27

    #@aa3
    .line 1511
    const-wide/16 v26, 0x64

    #@aa5
    invoke-static/range {v26 .. v27}, Landroid/os/SystemClock;->sleep(J)V

    #@aa8
    .line 1513
    move-object/from16 v0, p0

    #@aaa
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@aac
    move-object/from16 v26, v0

    #@aae
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@ab1
    move-result-object v26

    #@ab2
    const/16 v27, 0x3c

    #@ab4
    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@ab7
    .line 1514
    move-object/from16 v0, p0

    #@ab9
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@abb
    move-object/from16 v26, v0

    #@abd
    const/16 v27, 0xa

    #@abf
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    #@ac2
    .line 1516
    move-object/from16 v0, p0

    #@ac4
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@ac6
    move-object/from16 v26, v0

    #@ac8
    move-object/from16 v0, p0

    #@aca
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@acc
    move-object/from16 v27, v0

    #@ace
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    #@ad1
    move-result v27

    #@ad2
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;Z)V

    #@ad5
    goto/16 :goto_0

    #@ad7
    .line 1469
    :catch_6
    move-exception v17

    #@ad8
    .line 1470
    .restart local v17    # "re":Landroid/os/RemoteException;
    :try_start_20
    const-string/jumbo v26, "BluetoothManagerService"

    #@adb
    const-string/jumbo v28, "Unable to unregister"

    #@ade
    move-object/from16 v0, v26

    #@ae0
    move-object/from16 v1, v28

    #@ae2
    move-object/from16 v2, v17

    #@ae4
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    #@ae7
    goto/16 :goto_d

    #@ae9
    .line 1464
    .end local v17    # "re":Landroid/os/RemoteException;
    :catchall_7
    move-exception v26

    #@aea
    monitor-exit v27

    #@aeb
    throw v26

    #@aec
    .line 1503
    :catchall_8
    move-exception v26

    #@aed
    monitor-exit v27

    #@aee
    throw v26

    #@aef
    .line 1517
    :cond_2a
    move-object/from16 v0, p0

    #@af1
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@af3
    move-object/from16 v26, v0

    #@af5
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get0(Lcom/android/server/BluetoothManagerService;)Z

    #@af8
    move-result v26

    #@af9
    if-nez v26, :cond_2b

    #@afb
    move-object/from16 v0, p0

    #@afd
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@aff
    move-object/from16 v26, v0

    #@b01
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@b04
    move-result-object v26

    #@b05
    if-eqz v26, :cond_0

    #@b07
    .line 1518
    :cond_2b
    move-object/from16 v0, p0

    #@b09
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b0b
    move-object/from16 v26, v0

    #@b0d
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@b10
    move-result-object v26

    #@b11
    const/16 v27, 0x12c

    #@b13
    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@b16
    move-result-object v25

    #@b17
    .line 1519
    .local v25, "userMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    #@b19
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@b1b
    move/from16 v26, v0

    #@b1d
    add-int/lit8 v26, v26, 0x1

    #@b1f
    move/from16 v0, v26

    #@b21
    move-object/from16 v1, v25

    #@b23
    iput v0, v1, Landroid/os/Message;->arg2:I

    #@b25
    .line 1522
    move-object/from16 v0, p0

    #@b27
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b29
    move-object/from16 v26, v0

    #@b2b
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@b2e
    move-result-object v26

    #@b2f
    const-wide/16 v28, 0xc8

    #@b31
    move-object/from16 v0, v26

    #@b33
    move-object/from16 v1, v25

    #@b35
    move-wide/from16 v2, v28

    #@b37
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@b3a
    goto/16 :goto_0

    #@b3c
    .line 1109
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_5
        0x1e -> :sswitch_6
        0x1f -> :sswitch_7
        0x28 -> :sswitch_a
        0x29 -> :sswitch_d
        0x2a -> :sswitch_e
        0x3c -> :sswitch_c
        0x64 -> :sswitch_b
        0x65 -> :sswitch_f
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_10
        0x190 -> :sswitch_8
        0x191 -> :sswitch_9
    .end sparse-switch
.end method
