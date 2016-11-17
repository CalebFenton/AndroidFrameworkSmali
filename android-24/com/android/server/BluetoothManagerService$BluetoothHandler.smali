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
.field mGetNameAddressOnly:Z

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1108
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2
    .line 1109
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1106
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    #@8
    .line 1108
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1114
    const-string/jumbo v23, "BluetoothManagerService"

    #@3
    new-instance v24, Ljava/lang/StringBuilder;

    #@5
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v25, "Message: "

    #@b
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v24

    #@f
    move-object/from16 v0, p1

    #@11
    iget v0, v0, Landroid/os/Message;->what:I

    #@13
    move/from16 v25, v0

    #@15
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v24

    #@19
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v24

    #@1d
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1115
    move-object/from16 v0, p1

    #@22
    iget v0, v0, Landroid/os/Message;->what:I

    #@24
    move/from16 v23, v0

    #@26
    sparse-switch v23, :sswitch_data_0

    #@29
    .line 1113
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 1117
    :sswitch_0
    const-string/jumbo v23, "BluetoothManagerService"

    #@2d
    const-string/jumbo v24, "MESSAGE_GET_NAME_AND_ADDRESS"

    #@30
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 1119
    :try_start_0
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@37
    move-object/from16 v23, v0

    #@39
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@3c
    move-result-object v23

    #@3d
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@40
    move-result-object v23

    #@41
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@44
    .line 1120
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@48
    move-object/from16 v23, v0

    #@4a
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@4d
    move-result-object v23

    #@4e
    if-nez v23, :cond_1

    #@50
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@54
    move-object/from16 v23, v0

    #@56
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get0(Lcom/android/server/BluetoothManagerService;)Z

    #@59
    move-result v23

    #@5a
    if-eqz v23, :cond_4

    #@5c
    .line 1133
    :cond_1
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@60
    move-object/from16 v23, v0

    #@62
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    move-result-object v23

    #@66
    if-eqz v23, :cond_3

    #@68
    .line 1135
    :try_start_1
    move-object/from16 v0, p0

    #@6a
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6c
    move-object/from16 v23, v0

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@72
    move-object/from16 v24, v0

    #@74
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@77
    move-result-object v24

    #@78
    invoke-interface/range {v24 .. v24}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    #@7b
    move-result-object v24

    #@7c
    .line 1136
    move-object/from16 v0, p0

    #@7e
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@80
    move-object/from16 v25, v0

    #@82
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@85
    move-result-object v25

    #@86
    invoke-interface/range {v25 .. v25}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;

    #@89
    move-result-object v25

    #@8a
    .line 1135
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap16(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8d
    .line 1140
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    #@8f
    iget-boolean v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    #@91
    move/from16 v23, v0

    #@93
    if-eqz v23, :cond_2

    #@95
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@99
    move-object/from16 v23, v0

    #@9b
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    #@9e
    move-result v23

    #@9f
    if-eqz v23, :cond_6

    #@a1
    .line 1143
    :cond_2
    :goto_2
    const/16 v23, 0x0

    #@a3
    move/from16 v0, v23

    #@a5
    move-object/from16 v1, p0

    #@a7
    iput-boolean v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a9
    .line 1146
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    #@ab
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@ad
    move-object/from16 v23, v0

    #@af
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@b2
    move-result-object v23

    #@b3
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@b6
    move-result-object v23

    #@b7
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@ba
    goto/16 :goto_0

    #@bc
    .line 1121
    :cond_4
    :try_start_3
    const-string/jumbo v23, "BluetoothManagerService"

    #@bf
    const-string/jumbo v24, "Binding to service to get name and address"

    #@c2
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c5
    .line 1122
    const/16 v23, 0x1

    #@c7
    move/from16 v0, v23

    #@c9
    move-object/from16 v1, p0

    #@cb
    iput-boolean v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    #@cd
    .line 1123
    move-object/from16 v0, p0

    #@cf
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@d1
    move-object/from16 v23, v0

    #@d3
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@d6
    move-result-object v23

    #@d7
    const/16 v24, 0x64

    #@d9
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@dc
    move-result-object v21

    #@dd
    .line 1124
    .local v21, "timeoutMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@df
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@e1
    move-object/from16 v23, v0

    #@e3
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@e6
    move-result-object v23

    #@e7
    const-wide/16 v24, 0xbb8

    #@e9
    move-object/from16 v0, v23

    #@eb
    move-object/from16 v1, v21

    #@ed
    move-wide/from16 v2, v24

    #@ef
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@f2
    .line 1125
    new-instance v11, Landroid/content/Intent;

    #@f4
    const-class v23, Landroid/bluetooth/IBluetooth;

    #@f6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@f9
    move-result-object v23

    #@fa
    move-object/from16 v0, v23

    #@fc
    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@ff
    .line 1126
    .local v11, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@103
    move-object/from16 v23, v0

    #@105
    move-object/from16 v0, p0

    #@107
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@109
    move-object/from16 v24, v0

    #@10b
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get6(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@10e
    move-result-object v24

    #@10f
    .line 1128
    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@111
    .line 1127
    const/16 v26, 0x41

    #@113
    .line 1126
    move-object/from16 v0, v23

    #@115
    move-object/from16 v1, v24

    #@117
    move/from16 v2, v26

    #@119
    move-object/from16 v3, v25

    #@11b
    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@11e
    move-result v23

    #@11f
    if-nez v23, :cond_5

    #@121
    .line 1129
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@125
    move-object/from16 v23, v0

    #@127
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@12a
    move-result-object v23

    #@12b
    const/16 v24, 0x64

    #@12d
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@130
    goto/16 :goto_3

    #@132
    .line 1145
    .end local v11    # "i":Landroid/content/Intent;
    .end local v21    # "timeoutMsg":Landroid/os/Message;
    :catchall_0
    move-exception v23

    #@133
    .line 1146
    move-object/from16 v0, p0

    #@135
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@137
    move-object/from16 v24, v0

    #@139
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@13c
    move-result-object v24

    #@13d
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@140
    move-result-object v24

    #@141
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@144
    .line 1145
    throw v23

    #@145
    .line 1131
    .restart local v11    # "i":Landroid/content/Intent;
    .restart local v21    # "timeoutMsg":Landroid/os/Message;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    #@147
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@149
    move-object/from16 v23, v0

    #@14b
    const/16 v24, 0x1

    #@14d
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z

    #@150
    goto/16 :goto_3

    #@152
    .line 1137
    .end local v11    # "i":Landroid/content/Intent;
    .end local v21    # "timeoutMsg":Landroid/os/Message;
    :catch_0
    move-exception v16

    #@153
    .line 1138
    .local v16, "re":Landroid/os/RemoteException;
    const-string/jumbo v23, "BluetoothManagerService"

    #@156
    const-string/jumbo v24, "Unable to grab names"

    #@159
    move-object/from16 v0, v23

    #@15b
    move-object/from16 v1, v24

    #@15d
    move-object/from16 v2, v16

    #@15f
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@162
    goto/16 :goto_1

    #@164
    .line 1141
    .end local v16    # "re":Landroid/os/RemoteException;
    :cond_6
    move-object/from16 v0, p0

    #@166
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@168
    move-object/from16 v23, v0

    #@16a
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@16d
    goto/16 :goto_2

    #@16f
    .line 1152
    :sswitch_1
    const-string/jumbo v23, "BluetoothManagerService"

    #@172
    new-instance v24, Ljava/lang/StringBuilder;

    #@174
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@177
    const-string/jumbo v25, "MESSAGE_ENABLE: mBluetooth = "

    #@17a
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v24

    #@17e
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@182
    move-object/from16 v25, v0

    #@184
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@187
    move-result-object v25

    #@188
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v24

    #@18c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18f
    move-result-object v24

    #@190
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@193
    .line 1154
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@197
    move-object/from16 v23, v0

    #@199
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@19c
    move-result-object v23

    #@19d
    const/16 v24, 0x2a

    #@19f
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@1a2
    .line 1155
    move-object/from16 v0, p0

    #@1a4
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1a6
    move-object/from16 v23, v0

    #@1a8
    const/16 v24, 0x1

    #@1aa
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Z)Z

    #@1ad
    .line 1159
    :try_start_5
    move-object/from16 v0, p0

    #@1af
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1b1
    move-object/from16 v23, v0

    #@1b3
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@1b6
    move-result-object v23

    #@1b7
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@1ba
    move-result-object v23

    #@1bb
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@1be
    .line 1160
    move-object/from16 v0, p0

    #@1c0
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1c2
    move-object/from16 v23, v0

    #@1c4
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@1c7
    move-result-object v23

    #@1c8
    if-eqz v23, :cond_7

    #@1ca
    .line 1161
    move-object/from16 v0, p0

    #@1cc
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1ce
    move-object/from16 v23, v0

    #@1d0
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@1d3
    move-result-object v23

    #@1d4
    invoke-interface/range {v23 .. v23}, Landroid/bluetooth/IBluetooth;->getState()I

    #@1d7
    move-result v20

    #@1d8
    .line 1162
    .local v20, "state":I
    const/16 v23, 0xf

    #@1da
    move/from16 v0, v20

    #@1dc
    move/from16 v1, v23

    #@1de
    if-ne v0, v1, :cond_7

    #@1e0
    .line 1163
    const-string/jumbo v23, "BluetoothManagerService"

    #@1e3
    const-string/jumbo v24, "BT is in BLE_ON State"

    #@1e6
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e9
    .line 1164
    move-object/from16 v0, p0

    #@1eb
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1ed
    move-object/from16 v23, v0

    #@1ef
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@1f2
    move-result-object v23

    #@1f3
    invoke-interface/range {v23 .. v23}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@1f6
    .line 1171
    move-object/from16 v0, p0

    #@1f8
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1fa
    move-object/from16 v23, v0

    #@1fc
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@1ff
    move-result-object v23

    #@200
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@203
    move-result-object v23

    #@204
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@207
    goto/16 :goto_0

    #@209
    .end local v20    # "state":I
    :cond_7
    move-object/from16 v0, p0

    #@20b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@20d
    move-object/from16 v23, v0

    #@20f
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@212
    move-result-object v23

    #@213
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@216
    move-result-object v23

    #@217
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@21a
    .line 1174
    :goto_4
    move-object/from16 v0, p0

    #@21c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@21e
    move-object/from16 v24, v0

    #@220
    move-object/from16 v0, p1

    #@222
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@224
    move/from16 v23, v0

    #@226
    const/16 v25, 0x1

    #@228
    move/from16 v0, v23

    #@22a
    move/from16 v1, v25

    #@22c
    if-ne v0, v1, :cond_8

    #@22e
    const/16 v23, 0x1

    #@230
    :goto_5
    move-object/from16 v0, v24

    #@232
    move/from16 v1, v23

    #@234
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set8(Lcom/android/server/BluetoothManagerService;Z)Z

    #@237
    .line 1175
    move-object/from16 v0, p0

    #@239
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@23b
    move-object/from16 v23, v0

    #@23d
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@240
    move-result-object v23

    #@241
    if-nez v23, :cond_9

    #@243
    .line 1176
    move-object/from16 v0, p0

    #@245
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@247
    move-object/from16 v23, v0

    #@249
    move-object/from16 v0, p0

    #@24b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@24d
    move-object/from16 v24, v0

    #@24f
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    #@252
    move-result v24

    #@253
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;Z)V

    #@256
    goto/16 :goto_0

    #@258
    .line 1168
    :catch_1
    move-exception v8

    #@259
    .line 1169
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v23, "BluetoothManagerService"

    #@25c
    const-string/jumbo v24, ""

    #@25f
    move-object/from16 v0, v23

    #@261
    move-object/from16 v1, v24

    #@263
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@266
    .line 1171
    move-object/from16 v0, p0

    #@268
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@26a
    move-object/from16 v23, v0

    #@26c
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@26f
    move-result-object v23

    #@270
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@273
    move-result-object v23

    #@274
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@277
    goto :goto_4

    #@278
    .line 1170
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v23

    #@279
    .line 1171
    move-object/from16 v0, p0

    #@27b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@27d
    move-object/from16 v24, v0

    #@27f
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@282
    move-result-object v24

    #@283
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@286
    move-result-object v24

    #@287
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@28a
    .line 1170
    throw v23

    #@28b
    .line 1174
    :cond_8
    const/16 v23, 0x0

    #@28d
    goto :goto_5

    #@28e
    .line 1193
    :cond_9
    move-object/from16 v0, p0

    #@290
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@292
    move-object/from16 v23, v0

    #@294
    const/16 v24, 0x0

    #@296
    const/16 v25, 0x1

    #@298
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@29b
    .line 1194
    move-object/from16 v0, p0

    #@29d
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@29f
    move-object/from16 v23, v0

    #@2a1
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@2a4
    move-result-object v23

    #@2a5
    .line 1195
    const/16 v24, 0x2a

    #@2a7
    .line 1194
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@2aa
    move-result-object v18

    #@2ab
    .line 1196
    .local v18, "restartMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@2ad
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2af
    move-object/from16 v23, v0

    #@2b1
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@2b4
    move-result-object v23

    #@2b5
    .line 1197
    const-wide/16 v24, 0x190

    #@2b7
    .line 1196
    move-object/from16 v0, v23

    #@2b9
    move-object/from16 v1, v18

    #@2bb
    move-wide/from16 v2, v24

    #@2bd
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2c0
    goto/16 :goto_0

    #@2c2
    .line 1202
    .end local v18    # "restartMsg":Landroid/os/Message;
    :sswitch_2
    move-object/from16 v0, p0

    #@2c4
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2c6
    move-object/from16 v23, v0

    #@2c8
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@2cb
    move-result-object v23

    #@2cc
    const/16 v24, 0x2a

    #@2ce
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@2d1
    .line 1203
    move-object/from16 v0, p0

    #@2d3
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2d5
    move-object/from16 v23, v0

    #@2d7
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    #@2da
    move-result v23

    #@2db
    if-eqz v23, :cond_a

    #@2dd
    move-object/from16 v0, p0

    #@2df
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2e1
    move-object/from16 v23, v0

    #@2e3
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@2e6
    move-result-object v23

    #@2e7
    if-eqz v23, :cond_a

    #@2e9
    .line 1204
    move-object/from16 v0, p0

    #@2eb
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2ed
    move-object/from16 v23, v0

    #@2ef
    const/16 v24, 0x1

    #@2f1
    const/16 v25, 0x0

    #@2f3
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@2f6
    .line 1205
    move-object/from16 v0, p0

    #@2f8
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2fa
    move-object/from16 v23, v0

    #@2fc
    const/16 v24, 0x0

    #@2fe
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Z)Z

    #@301
    .line 1206
    move-object/from16 v0, p0

    #@303
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@305
    move-object/from16 v23, v0

    #@307
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;)V

    #@30a
    .line 1207
    move-object/from16 v0, p0

    #@30c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@30e
    move-object/from16 v23, v0

    #@310
    const/16 v24, 0x0

    #@312
    const/16 v25, 0x0

    #@314
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@317
    goto/16 :goto_0

    #@319
    .line 1209
    :cond_a
    move-object/from16 v0, p0

    #@31b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@31d
    move-object/from16 v23, v0

    #@31f
    const/16 v24, 0x0

    #@321
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Z)Z

    #@324
    .line 1210
    move-object/from16 v0, p0

    #@326
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@328
    move-object/from16 v23, v0

    #@32a
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;)V

    #@32d
    goto/16 :goto_0

    #@32f
    .line 1216
    :sswitch_3
    move-object/from16 v0, p1

    #@331
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@333
    check-cast v5, Landroid/bluetooth/IBluetoothManagerCallback;

    #@335
    .line 1217
    .local v5, "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    #@337
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@339
    move-object/from16 v23, v0

    #@33b
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    #@33e
    move-result-object v23

    #@33f
    move-object/from16 v0, v23

    #@341
    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@344
    move-result v4

    #@345
    .line 1218
    .local v4, "added":Z
    const-string/jumbo v23, "BluetoothManagerService"

    #@348
    new-instance v24, Ljava/lang/StringBuilder;

    #@34a
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@34d
    const-string/jumbo v25, "Added callback: "

    #@350
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@353
    move-result-object v24

    #@354
    if-nez v5, :cond_b

    #@356
    const-string/jumbo v5, "null"

    #@359
    .end local v5    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_b
    move-object/from16 v0, v24

    #@35b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35e
    move-result-object v24

    #@35f
    const-string/jumbo v25, ":"

    #@362
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@365
    move-result-object v24

    #@366
    move-object/from16 v0, v24

    #@368
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@36b
    move-result-object v24

    #@36c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36f
    move-result-object v24

    #@370
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@373
    goto/16 :goto_0

    #@375
    .line 1223
    .end local v4    # "added":Z
    :sswitch_4
    move-object/from16 v0, p1

    #@377
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@379
    check-cast v5, Landroid/bluetooth/IBluetoothManagerCallback;

    #@37b
    .line 1224
    .restart local v5    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    #@37d
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@37f
    move-object/from16 v23, v0

    #@381
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    #@384
    move-result-object v23

    #@385
    move-object/from16 v0, v23

    #@387
    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@38a
    move-result v17

    #@38b
    .line 1225
    .local v17, "removed":Z
    const-string/jumbo v23, "BluetoothManagerService"

    #@38e
    new-instance v24, Ljava/lang/StringBuilder;

    #@390
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@393
    const-string/jumbo v25, "Removed callback: "

    #@396
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@399
    move-result-object v24

    #@39a
    if-nez v5, :cond_c

    #@39c
    const-string/jumbo v5, "null"

    #@39f
    .end local v5    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_c
    move-object/from16 v0, v24

    #@3a1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a4
    move-result-object v24

    #@3a5
    const-string/jumbo v25, ":"

    #@3a8
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ab
    move-result-object v24

    #@3ac
    move-object/from16 v0, v24

    #@3ae
    move/from16 v1, v17

    #@3b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b3
    move-result-object v24

    #@3b4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b7
    move-result-object v24

    #@3b8
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3bb
    goto/16 :goto_0

    #@3bd
    .line 1230
    .end local v17    # "removed":Z
    :sswitch_5
    move-object/from16 v0, p1

    #@3bf
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3c1
    check-cast v6, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@3c3
    .line 1231
    .local v6, "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    if-eqz v6, :cond_0

    #@3c5
    .line 1232
    move-object/from16 v0, p0

    #@3c7
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@3c9
    move-object/from16 v23, v0

    #@3cb
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get18(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    #@3ce
    move-result-object v23

    #@3cf
    move-object/from16 v0, v23

    #@3d1
    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@3d4
    goto/16 :goto_0

    #@3d6
    .line 1238
    .end local v6    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_6
    move-object/from16 v0, p1

    #@3d8
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3da
    check-cast v6, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@3dc
    .line 1239
    .restart local v6    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    if-eqz v6, :cond_0

    #@3de
    .line 1240
    move-object/from16 v0, p0

    #@3e0
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@3e2
    move-object/from16 v23, v0

    #@3e4
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get18(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    #@3e7
    move-result-object v23

    #@3e8
    move-object/from16 v0, v23

    #@3ea
    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@3ed
    goto/16 :goto_0

    #@3ef
    .line 1246
    .end local v6    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_7
    move-object/from16 v0, p0

    #@3f1
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@3f3
    move-object/from16 v23, v0

    #@3f5
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    #@3f8
    move-result-object v23

    #@3f9
    .line 1247
    new-instance v24, Ljava/lang/Integer;

    #@3fb
    move-object/from16 v0, p1

    #@3fd
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@3ff
    move/from16 v25, v0

    #@401
    invoke-direct/range {v24 .. v25}, Ljava/lang/Integer;-><init>(I)V

    #@404
    .line 1246
    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@407
    move-result-object v15

    #@408
    check-cast v15, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    #@40a
    .line 1248
    .local v15, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-eqz v15, :cond_0

    #@40c
    .line 1252
    move-object/from16 v0, p1

    #@40e
    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@410
    check-cast v14, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@412
    .line 1253
    .local v14, "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    invoke-static {v15, v14}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap1(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    #@415
    goto/16 :goto_0

    #@417
    .line 1258
    .end local v14    # "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    .end local v15    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :sswitch_8
    move-object/from16 v0, p1

    #@419
    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41b
    check-cast v15, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    #@41d
    .line 1259
    .restart local v15    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    move-object/from16 v0, p1

    #@41f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@421
    move-object/from16 v23, v0

    #@423
    const/16 v24, 0x191

    #@425
    move-object/from16 v0, p0

    #@427
    move/from16 v1, v24

    #@429
    move-object/from16 v2, v23

    #@42b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    #@42e
    .line 1260
    if-eqz v15, :cond_0

    #@430
    .line 1263
    invoke-static {v15}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap0(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    #@433
    goto/16 :goto_0

    #@435
    .line 1268
    .end local v15    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :sswitch_9
    const-string/jumbo v23, "BluetoothManagerService"

    #@438
    new-instance v24, Ljava/lang/StringBuilder;

    #@43a
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@43d
    const-string/jumbo v25, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: "

    #@440
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@443
    move-result-object v24

    #@444
    move-object/from16 v0, p1

    #@446
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@448
    move/from16 v25, v0

    #@44a
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44d
    move-result-object v24

    #@44e
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@451
    move-result-object v24

    #@452
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@455
    .line 1270
    move-object/from16 v0, p1

    #@457
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@459
    move-object/from16 v19, v0

    #@45b
    check-cast v19, Landroid/os/IBinder;

    #@45d
    .line 1272
    .local v19, "service":Landroid/os/IBinder;
    :try_start_7
    move-object/from16 v0, p0

    #@45f
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@461
    move-object/from16 v23, v0

    #@463
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@466
    move-result-object v23

    #@467
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@46a
    move-result-object v23

    #@46b
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@46e
    .line 1273
    move-object/from16 v0, p1

    #@470
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@472
    move/from16 v23, v0

    #@474
    const/16 v24, 0x2

    #@476
    move/from16 v0, v23

    #@478
    move/from16 v1, v24

    #@47a
    if-ne v0, v1, :cond_d

    #@47c
    .line 1274
    move-object/from16 v0, p0

    #@47e
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@480
    move-object/from16 v23, v0

    #@482
    invoke-static/range {v19 .. v19}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    #@485
    move-result-object v24

    #@486
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    #@489
    .line 1275
    move-object/from16 v0, p0

    #@48b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@48d
    move-object/from16 v23, v0

    #@48f
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap9(Lcom/android/server/BluetoothManagerService;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@492
    .line 1328
    move-object/from16 v0, p0

    #@494
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@496
    move-object/from16 v23, v0

    #@498
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@49b
    move-result-object v23

    #@49c
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@49f
    move-result-object v23

    #@4a0
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@4a3
    goto/16 :goto_0

    #@4a5
    .line 1280
    :cond_d
    :try_start_8
    move-object/from16 v0, p0

    #@4a7
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@4a9
    move-object/from16 v23, v0

    #@4ab
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@4ae
    move-result-object v23

    #@4af
    const/16 v24, 0x64

    #@4b1
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@4b4
    .line 1282
    move-object/from16 v0, p0

    #@4b6
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@4b8
    move-object/from16 v23, v0

    #@4ba
    const/16 v24, 0x0

    #@4bc
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z

    #@4bf
    .line 1283
    move-object/from16 v0, p0

    #@4c1
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@4c3
    move-object/from16 v23, v0

    #@4c5
    move-object/from16 v0, v23

    #@4c7
    move-object/from16 v1, v19

    #@4c9
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@4cc
    .line 1284
    move-object/from16 v0, p0

    #@4ce
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@4d0
    move-object/from16 v23, v0

    #@4d2
    invoke-static/range {v19 .. v19}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    #@4d5
    move-result-object v24

    #@4d6
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set2(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    #@4d9
    .line 1286
    move-object/from16 v0, p0

    #@4db
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@4dd
    move-object/from16 v23, v0

    #@4df
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;)Z

    #@4e2
    move-result v23

    #@4e3
    if-nez v23, :cond_e

    #@4e5
    .line 1287
    move-object/from16 v0, p0

    #@4e7
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@4e9
    move-object/from16 v23, v0

    #@4eb
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@4ee
    move-result-object v23

    #@4ef
    const/16 v24, 0xc8

    #@4f1
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@4f4
    move-result-object v10

    #@4f5
    .line 1288
    .local v10, "getMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@4f7
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@4f9
    move-object/from16 v23, v0

    #@4fb
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@4fe
    move-result-object v23

    #@4ff
    move-object/from16 v0, v23

    #@501
    invoke-virtual {v0, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@504
    .line 1289
    move-object/from16 v0, p0

    #@506
    iget-boolean v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    #@508
    move/from16 v23, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@50a
    if-eqz v23, :cond_e

    #@50c
    .line 1328
    move-object/from16 v0, p0

    #@50e
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@510
    move-object/from16 v23, v0

    #@512
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@515
    move-result-object v23

    #@516
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@519
    move-result-object v23

    #@51a
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@51d
    .line 1289
    return-void

    #@51e
    .line 1293
    .end local v10    # "getMsg":Landroid/os/Message;
    :cond_e
    :try_start_9
    move-object/from16 v0, p0

    #@520
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@522
    move-object/from16 v23, v0

    #@524
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;

    #@527
    move-result-object v23

    #@528
    .line 1294
    const-string/jumbo v24, "bluetooth_hci_log"

    #@52b
    const/16 v25, 0x0

    #@52d
    .line 1293
    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@530
    move-result v23

    #@531
    .line 1294
    const/16 v24, 0x1

    #@533
    .line 1293
    move/from16 v0, v23

    #@535
    move/from16 v1, v24

    #@537
    if-ne v0, v1, :cond_11

    #@539
    const/4 v9, 0x1

    #@53a
    .line 1295
    .local v9, "enableHciSnoopLog":Z
    :goto_6
    move-object/from16 v0, p0

    #@53c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@53e
    move-object/from16 v23, v0

    #@540
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@543
    move-result-object v23

    #@544
    move-object/from16 v0, v23

    #@546
    invoke-interface {v0, v9}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z

    #@549
    move-result v23

    #@54a
    if-nez v23, :cond_f

    #@54c
    .line 1296
    const-string/jumbo v23, "BluetoothManagerService"

    #@54f
    const-string/jumbo v24, "IBluetooth.configHciSnoopLog return false"

    #@552
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@555
    .line 1304
    .end local v9    # "enableHciSnoopLog":Z
    :cond_f
    :goto_7
    :try_start_a
    move-object/from16 v0, p0

    #@557
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@559
    move-object/from16 v23, v0

    #@55b
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@55e
    move-result-object v23

    #@55f
    move-object/from16 v0, p0

    #@561
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@563
    move-object/from16 v24, v0

    #@565
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    #@568
    move-result-object v24

    #@569
    invoke-interface/range {v23 .. v24}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@56c
    .line 1309
    :goto_8
    :try_start_b
    move-object/from16 v0, p0

    #@56e
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@570
    move-object/from16 v23, v0

    #@572
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap13(Lcom/android/server/BluetoothManagerService;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@575
    .line 1313
    :try_start_c
    move-object/from16 v0, p0

    #@577
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@579
    move-object/from16 v23, v0

    #@57b
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    #@57e
    move-result v23

    #@57f
    if-nez v23, :cond_12

    #@581
    .line 1314
    move-object/from16 v0, p0

    #@583
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@585
    move-object/from16 v23, v0

    #@587
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@58a
    move-result-object v23

    #@58b
    invoke-interface/range {v23 .. v23}, Landroid/bluetooth/IBluetooth;->enable()Z

    #@58e
    move-result v23

    #@58f
    if-nez v23, :cond_10

    #@591
    .line 1315
    const-string/jumbo v23, "BluetoothManagerService"

    #@594
    const-string/jumbo v24, "IBluetooth.enable() returned false"

    #@597
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@59a
    .line 1328
    :cond_10
    :goto_9
    move-object/from16 v0, p0

    #@59c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@59e
    move-object/from16 v23, v0

    #@5a0
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@5a3
    move-result-object v23

    #@5a4
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@5a7
    move-result-object v23

    #@5a8
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@5ab
    .line 1331
    move-object/from16 v0, p0

    #@5ad
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@5af
    move-object/from16 v23, v0

    #@5b1
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    #@5b4
    move-result v23

    #@5b5
    if-nez v23, :cond_0

    #@5b7
    .line 1332
    move-object/from16 v0, p0

    #@5b9
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@5bb
    move-object/from16 v23, v0

    #@5bd
    const/16 v24, 0x1

    #@5bf
    const/16 v25, 0x0

    #@5c1
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@5c4
    .line 1333
    move-object/from16 v0, p0

    #@5c6
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@5c8
    move-object/from16 v23, v0

    #@5ca
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;)V

    #@5cd
    .line 1334
    move-object/from16 v0, p0

    #@5cf
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@5d1
    move-object/from16 v23, v0

    #@5d3
    const/16 v24, 0x0

    #@5d5
    const/16 v25, 0x0

    #@5d7
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@5da
    goto/16 :goto_0

    #@5dc
    .line 1293
    :cond_11
    const/4 v9, 0x0

    #@5dd
    .restart local v9    # "enableHciSnoopLog":Z
    goto/16 :goto_6

    #@5df
    .line 1298
    .end local v9    # "enableHciSnoopLog":Z
    :catch_2
    move-exception v8

    #@5e0
    .line 1299
    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_d
    const-string/jumbo v23, "BluetoothManagerService"

    #@5e3
    const-string/jumbo v24, "Unable to call configHciSnoopLog"

    #@5e6
    move-object/from16 v0, v23

    #@5e8
    move-object/from16 v1, v24

    #@5ea
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    #@5ed
    goto/16 :goto_7

    #@5ef
    .line 1327
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v23

    #@5f0
    .line 1328
    move-object/from16 v0, p0

    #@5f2
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@5f4
    move-object/from16 v24, v0

    #@5f6
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@5f9
    move-result-object v24

    #@5fa
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@5fd
    move-result-object v24

    #@5fe
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@601
    .line 1327
    throw v23

    #@602
    .line 1305
    :catch_3
    move-exception v16

    #@603
    .line 1306
    .restart local v16    # "re":Landroid/os/RemoteException;
    :try_start_e
    const-string/jumbo v23, "BluetoothManagerService"

    #@606
    const-string/jumbo v24, "Unable to register BluetoothCallback"

    #@609
    move-object/from16 v0, v23

    #@60b
    move-object/from16 v1, v24

    #@60d
    move-object/from16 v2, v16

    #@60f
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@612
    goto/16 :goto_8

    #@614
    .line 1320
    .end local v16    # "re":Landroid/os/RemoteException;
    :cond_12
    :try_start_f
    move-object/from16 v0, p0

    #@616
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@618
    move-object/from16 v23, v0

    #@61a
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@61d
    move-result-object v23

    #@61e
    invoke-interface/range {v23 .. v23}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    #@621
    move-result v23

    #@622
    if-nez v23, :cond_10

    #@624
    .line 1321
    const-string/jumbo v23, "BluetoothManagerService"

    #@627
    const-string/jumbo v24, "IBluetooth.enableNoAutoConnect() returned false"

    #@62a
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    #@62d
    goto/16 :goto_9

    #@62f
    .line 1324
    :catch_4
    move-exception v8

    #@630
    .line 1325
    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_10
    const-string/jumbo v23, "BluetoothManagerService"

    #@633
    const-string/jumbo v24, "Unable to call enable()"

    #@636
    move-object/from16 v0, v23

    #@638
    move-object/from16 v1, v24

    #@63a
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    #@63d
    goto/16 :goto_9

    #@63f
    .line 1339
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v19    # "service":Landroid/os/IBinder;
    :sswitch_a
    const-string/jumbo v23, "BluetoothManagerService"

    #@642
    const-string/jumbo v24, "MESSAGE_TIMEOUT_BIND"

    #@645
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@648
    .line 1340
    move-object/from16 v0, p0

    #@64a
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@64c
    move-object/from16 v23, v0

    #@64e
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@651
    move-result-object v23

    #@652
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@655
    move-result-object v23

    #@656
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@659
    .line 1341
    move-object/from16 v0, p0

    #@65b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@65d
    move-object/from16 v23, v0

    #@65f
    const/16 v24, 0x0

    #@661
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z

    #@664
    .line 1342
    move-object/from16 v0, p0

    #@666
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@668
    move-object/from16 v23, v0

    #@66a
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@66d
    move-result-object v23

    #@66e
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@671
    move-result-object v23

    #@672
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@675
    goto/16 :goto_0

    #@677
    .line 1348
    :sswitch_b
    move-object/from16 v0, p1

    #@679
    iget v13, v0, Landroid/os/Message;->arg1:I

    #@67b
    .line 1349
    .local v13, "prevState":I
    move-object/from16 v0, p1

    #@67d
    iget v12, v0, Landroid/os/Message;->arg2:I

    #@67f
    .line 1350
    .local v12, "newState":I
    const-string/jumbo v23, "BluetoothManagerService"

    #@682
    new-instance v24, Ljava/lang/StringBuilder;

    #@684
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@687
    const-string/jumbo v25, "MESSAGE_BLUETOOTH_STATE_CHANGE: prevState = "

    #@68a
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68d
    move-result-object v24

    #@68e
    move-object/from16 v0, v24

    #@690
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@693
    move-result-object v24

    #@694
    const-string/jumbo v25, ", newState="

    #@697
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69a
    move-result-object v24

    #@69b
    move-object/from16 v0, v24

    #@69d
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a0
    move-result-object v24

    #@6a1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a4
    move-result-object v24

    #@6a5
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6a8
    .line 1351
    move-object/from16 v0, p0

    #@6aa
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6ac
    move-object/from16 v23, v0

    #@6ae
    move-object/from16 v0, v23

    #@6b0
    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    #@6b3
    .line 1352
    move-object/from16 v0, p0

    #@6b5
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6b7
    move-object/from16 v23, v0

    #@6b9
    move-object/from16 v0, v23

    #@6bb
    invoke-static {v0, v13, v12}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    #@6be
    .line 1355
    const/16 v23, 0xe

    #@6c0
    move/from16 v0, v23

    #@6c2
    if-ne v13, v0, :cond_13

    #@6c4
    .line 1356
    const/16 v23, 0xa

    #@6c6
    move/from16 v0, v23

    #@6c8
    if-ne v12, v0, :cond_13

    #@6ca
    .line 1357
    move-object/from16 v0, p0

    #@6cc
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6ce
    move-object/from16 v23, v0

    #@6d0
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@6d3
    move-result-object v23

    #@6d4
    if-eqz v23, :cond_13

    #@6d6
    move-object/from16 v0, p0

    #@6d8
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6da
    move-object/from16 v23, v0

    #@6dc
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    #@6df
    move-result v23

    #@6e0
    .line 1355
    if-eqz v23, :cond_13

    #@6e2
    .line 1358
    move-object/from16 v0, p0

    #@6e4
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6e6
    move-object/from16 v23, v0

    #@6e8
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;)V

    #@6eb
    .line 1360
    :cond_13
    const/16 v23, 0xb

    #@6ed
    move/from16 v0, v23

    #@6ef
    if-ne v13, v0, :cond_14

    #@6f1
    .line 1361
    const/16 v23, 0xf

    #@6f3
    move/from16 v0, v23

    #@6f5
    if-ne v12, v0, :cond_14

    #@6f7
    .line 1362
    move-object/from16 v0, p0

    #@6f9
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@6fb
    move-object/from16 v23, v0

    #@6fd
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@700
    move-result-object v23

    #@701
    if-eqz v23, :cond_14

    #@703
    move-object/from16 v0, p0

    #@705
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@707
    move-object/from16 v23, v0

    #@709
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    #@70c
    move-result v23

    #@70d
    .line 1360
    if-eqz v23, :cond_14

    #@70f
    .line 1363
    move-object/from16 v0, p0

    #@711
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@713
    move-object/from16 v23, v0

    #@715
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;)V

    #@718
    .line 1368
    :cond_14
    const/16 v23, 0x10

    #@71a
    move/from16 v0, v23

    #@71c
    if-ne v13, v0, :cond_15

    #@71e
    .line 1369
    const/16 v23, 0xa

    #@720
    move/from16 v0, v23

    #@722
    if-ne v12, v0, :cond_15

    #@724
    .line 1370
    move-object/from16 v0, p0

    #@726
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@728
    move-object/from16 v23, v0

    #@72a
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    #@72d
    move-result v23

    #@72e
    if-eqz v23, :cond_15

    #@730
    .line 1371
    const-string/jumbo v23, "BluetoothManagerService"

    #@733
    const-string/jumbo v24, "Entering STATE_OFF but mEnabled is true; restarting."

    #@736
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@739
    .line 1372
    move-object/from16 v0, p0

    #@73b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@73d
    move-object/from16 v23, v0

    #@73f
    const/16 v24, 0x0

    #@741
    const/16 v25, 0x1

    #@743
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@746
    .line 1373
    move-object/from16 v0, p0

    #@748
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@74a
    move-object/from16 v23, v0

    #@74c
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@74f
    move-result-object v23

    #@750
    .line 1374
    const/16 v24, 0x2a

    #@752
    .line 1373
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@755
    move-result-object v18

    #@756
    .line 1375
    .restart local v18    # "restartMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@758
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@75a
    move-object/from16 v23, v0

    #@75c
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@75f
    move-result-object v23

    #@760
    const-wide/16 v24, 0x190

    #@762
    move-object/from16 v0, v23

    #@764
    move-object/from16 v1, v18

    #@766
    move-wide/from16 v2, v24

    #@768
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@76b
    .line 1378
    .end local v18    # "restartMsg":Landroid/os/Message;
    :cond_15
    const/16 v23, 0xc

    #@76d
    move/from16 v0, v23

    #@76f
    if-eq v12, v0, :cond_16

    #@771
    .line 1379
    const/16 v23, 0xf

    #@773
    move/from16 v0, v23

    #@775
    if-ne v12, v0, :cond_0

    #@777
    .line 1381
    :cond_16
    move-object/from16 v0, p0

    #@779
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@77b
    move-object/from16 v23, v0

    #@77d
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)I

    #@780
    move-result v23

    #@781
    if-eqz v23, :cond_0

    #@783
    .line 1382
    const-string/jumbo v23, "BluetoothManagerService"

    #@786
    const-string/jumbo v24, "bluetooth is recovered from error"

    #@789
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@78c
    .line 1383
    move-object/from16 v0, p0

    #@78e
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@790
    move-object/from16 v23, v0

    #@792
    const/16 v24, 0x0

    #@794
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    #@797
    goto/16 :goto_0

    #@799
    .line 1390
    .end local v12    # "newState":I
    .end local v13    # "prevState":I
    :sswitch_c
    const-string/jumbo v23, "BluetoothManagerService"

    #@79c
    new-instance v24, Ljava/lang/StringBuilder;

    #@79e
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@7a1
    const-string/jumbo v25, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED: "

    #@7a4
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a7
    move-result-object v24

    #@7a8
    move-object/from16 v0, p1

    #@7aa
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@7ac
    move/from16 v25, v0

    #@7ae
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b1
    move-result-object v24

    #@7b2
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b5
    move-result-object v24

    #@7b6
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7b9
    .line 1392
    :try_start_11
    move-object/from16 v0, p0

    #@7bb
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@7bd
    move-object/from16 v23, v0

    #@7bf
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@7c2
    move-result-object v23

    #@7c3
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@7c6
    move-result-object v23

    #@7c7
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@7ca
    .line 1393
    move-object/from16 v0, p1

    #@7cc
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@7ce
    move/from16 v23, v0

    #@7d0
    const/16 v24, 0x1

    #@7d2
    move/from16 v0, v23

    #@7d4
    move/from16 v1, v24

    #@7d6
    if-ne v0, v1, :cond_1c

    #@7d8
    .line 1395
    move-object/from16 v0, p0

    #@7da
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@7dc
    move-object/from16 v23, v0

    #@7de
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    #@7e1
    move-result-object v23

    #@7e2
    if-nez v23, :cond_17

    #@7e4
    .line 1405
    move-object/from16 v0, p0

    #@7e6
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@7e8
    move-object/from16 v23, v0

    #@7ea
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@7ed
    move-result-object v23

    #@7ee
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@7f1
    move-result-object v23

    #@7f2
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@7f5
    goto/16 :goto_0

    #@7f7
    .line 1396
    :cond_17
    :try_start_12
    move-object/from16 v0, p0

    #@7f9
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@7fb
    move-object/from16 v23, v0

    #@7fd
    const/16 v24, 0x0

    #@7ff
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set2(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    #@802
    .line 1405
    move-object/from16 v0, p0

    #@804
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@806
    move-object/from16 v23, v0

    #@808
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@80b
    move-result-object v23

    #@80c
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@80f
    move-result-object v23

    #@810
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@813
    .line 1408
    move-object/from16 v0, p0

    #@815
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@817
    move-object/from16 v23, v0

    #@819
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    #@81c
    move-result v23

    #@81d
    if-eqz v23, :cond_18

    #@81f
    .line 1409
    move-object/from16 v0, p0

    #@821
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@823
    move-object/from16 v23, v0

    #@825
    const/16 v24, 0x0

    #@827
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Z)Z

    #@82a
    .line 1411
    move-object/from16 v0, p0

    #@82c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@82e
    move-object/from16 v23, v0

    #@830
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@833
    move-result-object v23

    #@834
    .line 1412
    const/16 v24, 0x2a

    #@836
    .line 1411
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@839
    move-result-object v18

    #@83a
    .line 1413
    .restart local v18    # "restartMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@83c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@83e
    move-object/from16 v23, v0

    #@840
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@843
    move-result-object v23

    #@844
    .line 1414
    const-wide/16 v24, 0xc8

    #@846
    .line 1413
    move-object/from16 v0, v23

    #@848
    move-object/from16 v1, v18

    #@84a
    move-wide/from16 v2, v24

    #@84c
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@84f
    .line 1417
    .end local v18    # "restartMsg":Landroid/os/Message;
    :cond_18
    move-object/from16 v0, p0

    #@851
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@853
    move-object/from16 v23, v0

    #@855
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap12(Lcom/android/server/BluetoothManagerService;)V

    #@858
    .line 1421
    move-object/from16 v0, p0

    #@85a
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@85c
    move-object/from16 v23, v0

    #@85e
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    #@861
    move-result v23

    #@862
    const/16 v24, 0xb

    #@864
    move/from16 v0, v23

    #@866
    move/from16 v1, v24

    #@868
    if-eq v0, v1, :cond_19

    #@86a
    .line 1422
    move-object/from16 v0, p0

    #@86c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@86e
    move-object/from16 v23, v0

    #@870
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    #@873
    move-result v23

    #@874
    const/16 v24, 0xc

    #@876
    move/from16 v0, v23

    #@878
    move/from16 v1, v24

    #@87a
    if-ne v0, v1, :cond_1a

    #@87c
    .line 1423
    :cond_19
    move-object/from16 v0, p0

    #@87e
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@880
    move-object/from16 v23, v0

    #@882
    const/16 v24, 0xc

    #@884
    .line 1424
    const/16 v25, 0xd

    #@886
    .line 1423
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    #@889
    .line 1425
    move-object/from16 v0, p0

    #@88b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@88d
    move-object/from16 v23, v0

    #@88f
    const/16 v24, 0xd

    #@891
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    #@894
    .line 1427
    :cond_1a
    move-object/from16 v0, p0

    #@896
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@898
    move-object/from16 v23, v0

    #@89a
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    #@89d
    move-result v23

    #@89e
    const/16 v24, 0xd

    #@8a0
    move/from16 v0, v23

    #@8a2
    move/from16 v1, v24

    #@8a4
    if-ne v0, v1, :cond_1b

    #@8a6
    .line 1428
    move-object/from16 v0, p0

    #@8a8
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@8aa
    move-object/from16 v23, v0

    #@8ac
    const/16 v24, 0xd

    #@8ae
    .line 1429
    const/16 v25, 0xa

    #@8b0
    .line 1428
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    #@8b3
    .line 1432
    :cond_1b
    move-object/from16 v0, p0

    #@8b5
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@8b7
    move-object/from16 v23, v0

    #@8b9
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@8bc
    move-result-object v23

    #@8bd
    const/16 v24, 0x3c

    #@8bf
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@8c2
    .line 1433
    move-object/from16 v0, p0

    #@8c4
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@8c6
    move-object/from16 v23, v0

    #@8c8
    const/16 v24, 0xa

    #@8ca
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    #@8cd
    goto/16 :goto_0

    #@8cf
    .line 1397
    :cond_1c
    :try_start_13
    move-object/from16 v0, p1

    #@8d1
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@8d3
    move/from16 v23, v0

    #@8d5
    const/16 v24, 0x2

    #@8d7
    move/from16 v0, v23

    #@8d9
    move/from16 v1, v24

    #@8db
    if-ne v0, v1, :cond_1d

    #@8dd
    .line 1398
    move-object/from16 v0, p0

    #@8df
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@8e1
    move-object/from16 v23, v0

    #@8e3
    const/16 v24, 0x0

    #@8e5
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    #@8e8
    .line 1405
    move-object/from16 v0, p0

    #@8ea
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@8ec
    move-object/from16 v23, v0

    #@8ee
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@8f1
    move-result-object v23

    #@8f2
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@8f5
    move-result-object v23

    #@8f6
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@8f9
    goto/16 :goto_0

    #@8fb
    .line 1401
    :cond_1d
    :try_start_14
    const-string/jumbo v23, "BluetoothManagerService"

    #@8fe
    new-instance v24, Ljava/lang/StringBuilder;

    #@900
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@903
    const-string/jumbo v25, "Bad msg.arg1: "

    #@906
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@909
    move-result-object v24

    #@90a
    move-object/from16 v0, p1

    #@90c
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@90e
    move/from16 v25, v0

    #@910
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@913
    move-result-object v24

    #@914
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@917
    move-result-object v24

    #@918
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    #@91b
    .line 1405
    move-object/from16 v0, p0

    #@91d
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@91f
    move-object/from16 v23, v0

    #@921
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@924
    move-result-object v23

    #@925
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@928
    move-result-object v23

    #@929
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@92c
    goto/16 :goto_0

    #@92e
    .line 1404
    :catchall_3
    move-exception v23

    #@92f
    .line 1405
    move-object/from16 v0, p0

    #@931
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@933
    move-object/from16 v24, v0

    #@935
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@938
    move-result-object v24

    #@939
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@93c
    move-result-object v24

    #@93d
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@940
    .line 1404
    throw v23

    #@941
    .line 1438
    :sswitch_d
    const-string/jumbo v23, "BluetoothManagerService"

    #@944
    const-string/jumbo v24, "MESSAGE_RESTART_BLUETOOTH_SERVICE: Restart IBluetooth service"

    #@947
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@94a
    .line 1443
    move-object/from16 v0, p0

    #@94c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@94e
    move-object/from16 v23, v0

    #@950
    const/16 v24, 0x1

    #@952
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Z)Z

    #@955
    .line 1444
    move-object/from16 v0, p0

    #@957
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@959
    move-object/from16 v23, v0

    #@95b
    move-object/from16 v0, p0

    #@95d
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@95f
    move-object/from16 v24, v0

    #@961
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    #@964
    move-result v24

    #@965
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;Z)V

    #@968
    goto/16 :goto_0

    #@96a
    .line 1450
    :sswitch_e
    const-string/jumbo v23, "BluetoothManagerService"

    #@96d
    const-string/jumbo v24, "MESSAGE_TIMEOUT_UNBIND"

    #@970
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@973
    .line 1451
    move-object/from16 v0, p0

    #@975
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@977
    move-object/from16 v23, v0

    #@979
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@97c
    move-result-object v23

    #@97d
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@980
    move-result-object v23

    #@981
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@984
    .line 1452
    move-object/from16 v0, p0

    #@986
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@988
    move-object/from16 v23, v0

    #@98a
    const/16 v24, 0x0

    #@98c
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set10(Lcom/android/server/BluetoothManagerService;Z)Z

    #@98f
    .line 1453
    move-object/from16 v0, p0

    #@991
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@993
    move-object/from16 v23, v0

    #@995
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@998
    move-result-object v23

    #@999
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@99c
    move-result-object v23

    #@99d
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@9a0
    goto/16 :goto_0

    #@9a2
    .line 1458
    :sswitch_f
    const-string/jumbo v23, "BluetoothManagerService"

    #@9a5
    const-string/jumbo v24, "MESSAGE_USER_SWITCHED"

    #@9a8
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9ab
    .line 1459
    move-object/from16 v0, p0

    #@9ad
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9af
    move-object/from16 v23, v0

    #@9b1
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@9b4
    move-result-object v23

    #@9b5
    const/16 v24, 0x12c

    #@9b7
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@9ba
    .line 1462
    move-object/from16 v0, p0

    #@9bc
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9be
    move-object/from16 v23, v0

    #@9c0
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    #@9c3
    move-result v23

    #@9c4
    if-eqz v23, :cond_25

    #@9c6
    move-object/from16 v0, p0

    #@9c8
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9ca
    move-object/from16 v23, v0

    #@9cc
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@9cf
    move-result-object v23

    #@9d0
    if-eqz v23, :cond_25

    #@9d2
    .line 1464
    :try_start_15
    move-object/from16 v0, p0

    #@9d4
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9d6
    move-object/from16 v23, v0

    #@9d8
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@9db
    move-result-object v23

    #@9dc
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@9df
    move-result-object v23

    #@9e0
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@9e3
    .line 1465
    move-object/from16 v0, p0

    #@9e5
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9e7
    move-object/from16 v23, v0

    #@9e9
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@9ec
    move-result-object v23

    #@9ed
    if-eqz v23, :cond_1e

    #@9ef
    .line 1466
    move-object/from16 v0, p0

    #@9f1
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9f3
    move-object/from16 v23, v0

    #@9f5
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@9f8
    move-result-object v23

    #@9f9
    move-object/from16 v0, p0

    #@9fb
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9fd
    move-object/from16 v24, v0

    #@9ff
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    #@a02
    move-result-object v24

    #@a03
    invoke-interface/range {v23 .. v24}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    #@a06
    .line 1471
    :cond_1e
    move-object/from16 v0, p0

    #@a08
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a0a
    move-object/from16 v23, v0

    #@a0c
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@a0f
    move-result-object v23

    #@a10
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@a13
    move-result-object v23

    #@a14
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@a17
    .line 1474
    :goto_a
    move-object/from16 v0, p0

    #@a19
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a1b
    move-object/from16 v23, v0

    #@a1d
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    #@a20
    move-result v23

    #@a21
    const/16 v24, 0xd

    #@a23
    move/from16 v0, v23

    #@a25
    move/from16 v1, v24

    #@a27
    if-ne v0, v1, :cond_1f

    #@a29
    .line 1476
    move-object/from16 v0, p0

    #@a2b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a2d
    move-object/from16 v23, v0

    #@a2f
    move-object/from16 v0, p0

    #@a31
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a33
    move-object/from16 v24, v0

    #@a35
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    #@a38
    move-result v24

    #@a39
    const/16 v25, 0xa

    #@a3b
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    #@a3e
    .line 1477
    move-object/from16 v0, p0

    #@a40
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a42
    move-object/from16 v23, v0

    #@a44
    const/16 v24, 0xa

    #@a46
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    #@a49
    .line 1479
    :cond_1f
    move-object/from16 v0, p0

    #@a4b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a4d
    move-object/from16 v23, v0

    #@a4f
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    #@a52
    move-result v23

    #@a53
    const/16 v24, 0xa

    #@a55
    move/from16 v0, v23

    #@a57
    move/from16 v1, v24

    #@a59
    if-ne v0, v1, :cond_20

    #@a5b
    .line 1480
    move-object/from16 v0, p0

    #@a5d
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a5f
    move-object/from16 v23, v0

    #@a61
    move-object/from16 v0, p0

    #@a63
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a65
    move-object/from16 v24, v0

    #@a67
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    #@a6a
    move-result v24

    #@a6b
    const/16 v25, 0xb

    #@a6d
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    #@a70
    .line 1481
    move-object/from16 v0, p0

    #@a72
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a74
    move-object/from16 v23, v0

    #@a76
    const/16 v24, 0xb

    #@a78
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    #@a7b
    .line 1484
    :cond_20
    move-object/from16 v0, p0

    #@a7d
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a7f
    move-object/from16 v23, v0

    #@a81
    const/16 v24, 0x1

    #@a83
    const/16 v25, 0x0

    #@a85
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@a88
    .line 1486
    move-object/from16 v0, p0

    #@a8a
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a8c
    move-object/from16 v23, v0

    #@a8e
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    #@a91
    move-result v23

    #@a92
    const/16 v24, 0xb

    #@a94
    move/from16 v0, v23

    #@a96
    move/from16 v1, v24

    #@a98
    if-ne v0, v1, :cond_21

    #@a9a
    .line 1487
    move-object/from16 v0, p0

    #@a9c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a9e
    move-object/from16 v23, v0

    #@aa0
    move-object/from16 v0, p0

    #@aa2
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@aa4
    move-object/from16 v24, v0

    #@aa6
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    #@aa9
    move-result v24

    #@aaa
    const/16 v25, 0xc

    #@aac
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    #@aaf
    .line 1490
    :cond_21
    move-object/from16 v0, p0

    #@ab1
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@ab3
    move-object/from16 v23, v0

    #@ab5
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap17(Lcom/android/server/BluetoothManagerService;)V

    #@ab8
    .line 1492
    move-object/from16 v0, p0

    #@aba
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@abc
    move-object/from16 v23, v0

    #@abe
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;)V

    #@ac1
    .line 1494
    move-object/from16 v0, p0

    #@ac3
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@ac5
    move-object/from16 v23, v0

    #@ac7
    const/16 v24, 0xc

    #@ac9
    .line 1495
    const/16 v25, 0xd

    #@acb
    .line 1494
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    #@ace
    .line 1497
    move-object/from16 v0, p0

    #@ad0
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@ad2
    move-object/from16 v23, v0

    #@ad4
    const/16 v24, 0x0

    #@ad6
    const/16 v25, 0x1

    #@ad8
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    #@adb
    move-result v23

    #@adc
    if-eqz v23, :cond_23

    #@ade
    const/4 v7, 0x0

    #@adf
    .line 1499
    .local v7, "didDisableTimeout":Z
    :goto_b
    move-object/from16 v0, p0

    #@ae1
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@ae3
    move-object/from16 v23, v0

    #@ae5
    const/16 v24, 0xd

    #@ae7
    .line 1500
    const/16 v25, 0xa

    #@ae9
    .line 1499
    invoke-static/range {v23 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    #@aec
    .line 1501
    move-object/from16 v0, p0

    #@aee
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@af0
    move-object/from16 v23, v0

    #@af2
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap12(Lcom/android/server/BluetoothManagerService;)V

    #@af5
    .line 1504
    :try_start_16
    move-object/from16 v0, p0

    #@af7
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@af9
    move-object/from16 v23, v0

    #@afb
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@afe
    move-result-object v23

    #@aff
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@b02
    move-result-object v23

    #@b03
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@b06
    .line 1505
    move-object/from16 v0, p0

    #@b08
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b0a
    move-object/from16 v23, v0

    #@b0c
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@b0f
    move-result-object v23

    #@b10
    if-eqz v23, :cond_22

    #@b12
    .line 1506
    move-object/from16 v0, p0

    #@b14
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b16
    move-object/from16 v23, v0

    #@b18
    const/16 v24, 0x0

    #@b1a
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set2(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    #@b1d
    .line 1508
    move-object/from16 v0, p0

    #@b1f
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b21
    move-object/from16 v23, v0

    #@b23
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    #@b26
    move-result-object v23

    #@b27
    move-object/from16 v0, p0

    #@b29
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b2b
    move-object/from16 v24, v0

    #@b2d
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get6(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    #@b30
    move-result-object v24

    #@b31
    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@b34
    .line 1510
    :cond_22
    move-object/from16 v0, p0

    #@b36
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b38
    move-object/from16 v23, v0

    #@b3a
    const/16 v24, 0x0

    #@b3c
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    #@b3f
    .line 1512
    move-object/from16 v0, p0

    #@b41
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b43
    move-object/from16 v23, v0

    #@b45
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@b48
    move-result-object v23

    #@b49
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@b4c
    move-result-object v23

    #@b4d
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@b50
    .line 1520
    if-eqz v7, :cond_24

    #@b52
    .line 1521
    const-wide/16 v24, 0xbb8

    #@b54
    invoke-static/range {v24 .. v25}, Landroid/os/SystemClock;->sleep(J)V

    #@b57
    .line 1526
    :goto_c
    move-object/from16 v0, p0

    #@b59
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b5b
    move-object/from16 v23, v0

    #@b5d
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@b60
    move-result-object v23

    #@b61
    const/16 v24, 0x3c

    #@b63
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@b66
    .line 1527
    move-object/from16 v0, p0

    #@b68
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b6a
    move-object/from16 v23, v0

    #@b6c
    const/16 v24, 0xa

    #@b6e
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    #@b71
    .line 1529
    move-object/from16 v0, p0

    #@b73
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b75
    move-object/from16 v23, v0

    #@b77
    move-object/from16 v0, p0

    #@b79
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b7b
    move-object/from16 v24, v0

    #@b7d
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    #@b80
    move-result v24

    #@b81
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;Z)V

    #@b84
    goto/16 :goto_0

    #@b86
    .line 1468
    .end local v7    # "didDisableTimeout":Z
    :catch_5
    move-exception v16

    #@b87
    .line 1469
    .restart local v16    # "re":Landroid/os/RemoteException;
    :try_start_17
    const-string/jumbo v23, "BluetoothManagerService"

    #@b8a
    const-string/jumbo v24, "Unable to unregister"

    #@b8d
    move-object/from16 v0, v23

    #@b8f
    move-object/from16 v1, v24

    #@b91
    move-object/from16 v2, v16

    #@b93
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    #@b96
    .line 1471
    move-object/from16 v0, p0

    #@b98
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b9a
    move-object/from16 v23, v0

    #@b9c
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@b9f
    move-result-object v23

    #@ba0
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@ba3
    move-result-object v23

    #@ba4
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@ba7
    goto/16 :goto_a

    #@ba9
    .line 1470
    .end local v16    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v23

    #@baa
    .line 1471
    move-object/from16 v0, p0

    #@bac
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@bae
    move-object/from16 v24, v0

    #@bb0
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@bb3
    move-result-object v24

    #@bb4
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@bb7
    move-result-object v24

    #@bb8
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@bbb
    .line 1470
    throw v23

    #@bbc
    .line 1497
    :cond_23
    const/4 v7, 0x1

    #@bbd
    .restart local v7    # "didDisableTimeout":Z
    goto/16 :goto_b

    #@bbf
    .line 1511
    :catchall_5
    move-exception v23

    #@bc0
    .line 1512
    move-object/from16 v0, p0

    #@bc2
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@bc4
    move-object/from16 v24, v0

    #@bc6
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@bc9
    move-result-object v24

    #@bca
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@bcd
    move-result-object v24

    #@bce
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@bd1
    .line 1511
    throw v23

    #@bd2
    .line 1523
    :cond_24
    const-wide/16 v24, 0x64

    #@bd4
    invoke-static/range {v24 .. v25}, Landroid/os/SystemClock;->sleep(J)V

    #@bd7
    goto :goto_c

    #@bd8
    .line 1530
    .end local v7    # "didDisableTimeout":Z
    :cond_25
    move-object/from16 v0, p0

    #@bda
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@bdc
    move-object/from16 v23, v0

    #@bde
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get0(Lcom/android/server/BluetoothManagerService;)Z

    #@be1
    move-result v23

    #@be2
    if-nez v23, :cond_26

    #@be4
    move-object/from16 v0, p0

    #@be6
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@be8
    move-object/from16 v23, v0

    #@bea
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@bed
    move-result-object v23

    #@bee
    if-eqz v23, :cond_0

    #@bf0
    .line 1531
    :cond_26
    move-object/from16 v0, p0

    #@bf2
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@bf4
    move-object/from16 v23, v0

    #@bf6
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@bf9
    move-result-object v23

    #@bfa
    const/16 v24, 0x12c

    #@bfc
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@bff
    move-result-object v22

    #@c00
    .line 1532
    .local v22, "userMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    #@c02
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@c04
    move/from16 v23, v0

    #@c06
    add-int/lit8 v23, v23, 0x1

    #@c08
    move/from16 v0, v23

    #@c0a
    move-object/from16 v1, v22

    #@c0c
    iput v0, v1, Landroid/os/Message;->arg2:I

    #@c0e
    .line 1535
    move-object/from16 v0, p0

    #@c10
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@c12
    move-object/from16 v23, v0

    #@c14
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@c17
    move-result-object v23

    #@c18
    const-wide/16 v24, 0xc8

    #@c1a
    move-object/from16 v0, v23

    #@c1c
    move-object/from16 v1, v22

    #@c1e
    move-wide/from16 v2, v24

    #@c20
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c23
    .line 1537
    const-string/jumbo v23, "BluetoothManagerService"

    #@c26
    new-instance v24, Ljava/lang/StringBuilder;

    #@c28
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@c2b
    const-string/jumbo v25, "delay MESSAGE_USER_SWITCHED "

    #@c2e
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c31
    move-result-object v24

    #@c32
    move-object/from16 v0, v22

    #@c34
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@c36
    move/from16 v25, v0

    #@c38
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3b
    move-result-object v24

    #@c3c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3f
    move-result-object v24

    #@c40
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c43
    goto/16 :goto_0

    #@c45
    .line 1543
    .end local v22    # "userMsg":Landroid/os/Message;
    :sswitch_10
    const-string/jumbo v23, "BluetoothManagerService"

    #@c48
    const-string/jumbo v24, "MESSAGE_USER_UNLOCKED"

    #@c4b
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c4e
    .line 1544
    move-object/from16 v0, p0

    #@c50
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@c52
    move-object/from16 v23, v0

    #@c54
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@c57
    move-result-object v23

    #@c58
    const/16 v24, 0x12c

    #@c5a
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    #@c5d
    .line 1546
    move-object/from16 v0, p0

    #@c5f
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@c61
    move-object/from16 v23, v0

    #@c63
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    #@c66
    move-result v23

    #@c67
    if-eqz v23, :cond_0

    #@c69
    move-object/from16 v0, p0

    #@c6b
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@c6d
    move-object/from16 v23, v0

    #@c6f
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get0(Lcom/android/server/BluetoothManagerService;)Z

    #@c72
    move-result v23

    #@c73
    if-nez v23, :cond_0

    #@c75
    move-object/from16 v0, p0

    #@c77
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@c79
    move-object/from16 v23, v0

    #@c7b
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@c7e
    move-result-object v23

    #@c7f
    if-nez v23, :cond_0

    #@c81
    .line 1550
    const-string/jumbo v23, "BluetoothManagerService"

    #@c84
    const-string/jumbo v24, "Enabled but not bound; retrying after unlock"

    #@c87
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c8a
    .line 1551
    move-object/from16 v0, p0

    #@c8c
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@c8e
    move-object/from16 v23, v0

    #@c90
    move-object/from16 v0, p0

    #@c92
    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    #@c94
    move-object/from16 v24, v0

    #@c96
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    #@c99
    move-result v24

    #@c9a
    invoke-static/range {v23 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;Z)V

    #@c9d
    goto/16 :goto_0

    #@c9f
    .line 1115
    nop

    #@ca0
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x1e -> :sswitch_5
        0x1f -> :sswitch_6
        0x28 -> :sswitch_9
        0x29 -> :sswitch_c
        0x2a -> :sswitch_d
        0x3c -> :sswitch_b
        0x64 -> :sswitch_a
        0x65 -> :sswitch_e
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_f
        0x12d -> :sswitch_10
        0x190 -> :sswitch_7
        0x191 -> :sswitch_8
    .end sparse-switch
.end method
