.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@2
    .line 604
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 603
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 609
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v18, v0

    #@6
    packed-switch v18, :pswitch_data_0

    #@9
    .line 608
    :cond_0
    :goto_0
    return-void

    #@a
    .line 611
    :pswitch_0
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@e
    move-object/from16 v18, v0

    #@10
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap8(Lcom/android/server/MountService;)V

    #@13
    goto :goto_0

    #@14
    .line 615
    :pswitch_1
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@18
    move-object/from16 v18, v0

    #@1a
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap7(Lcom/android/server/MountService;)V

    #@1d
    goto :goto_0

    #@1e
    .line 619
    :pswitch_2
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@22
    move-object/from16 v18, v0

    #@24
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap1(Lcom/android/server/MountService;)Z

    #@27
    move-result v18

    #@28
    if-nez v18, :cond_1

    #@2a
    .line 620
    const-string/jumbo v18, "MountService"

    #@2d
    const-string/jumbo v19, "fstrim requested, but no daemon connection yet; trying again"

    #@30
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 621
    move-object/from16 v0, p1

    #@35
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37
    move-object/from16 v18, v0

    #@39
    const/16 v19, 0x4

    #@3b
    move-object/from16 v0, p0

    #@3d
    move/from16 v1, v19

    #@3f
    move-object/from16 v2, v18

    #@41
    invoke-virtual {v0, v1, v2}, Lcom/android/server/MountService$MountServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@44
    move-result-object v18

    #@45
    .line 622
    const-wide/16 v20, 0x3e8

    #@47
    .line 621
    move-object/from16 v0, p0

    #@49
    move-object/from16 v1, v18

    #@4b
    move-wide/from16 v2, v20

    #@4d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/MountService$MountServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@50
    goto :goto_0

    #@51
    .line 626
    :cond_1
    const-string/jumbo v18, "MountService"

    #@54
    const-string/jumbo v19, "Running fstrim idle maintenance"

    #@57
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 630
    :try_start_0
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@5e
    move-object/from16 v18, v0

    #@60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@63
    move-result-wide v20

    #@64
    move-object/from16 v0, v18

    #@66
    move-wide/from16 v1, v20

    #@68
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->-set2(Lcom/android/server/MountService;J)J

    #@6b
    .line 631
    move-object/from16 v0, p0

    #@6d
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@6f
    move-object/from16 v18, v0

    #@71
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get7(Lcom/android/server/MountService;)Ljava/io/File;

    #@74
    move-result-object v18

    #@75
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@79
    move-object/from16 v19, v0

    #@7b
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-get6(Lcom/android/server/MountService;)J

    #@7e
    move-result-wide v20

    #@7f
    move-object/from16 v0, v18

    #@81
    move-wide/from16 v1, v20

    #@83
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@86
    .line 636
    :goto_1
    move-object/from16 v0, p0

    #@88
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@8a
    move-object/from16 v18, v0

    #@8c
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap3(Lcom/android/server/MountService;)Z

    #@8f
    move-result v14

    #@90
    .line 640
    .local v14, "shouldBenchmark":Z
    :try_start_1
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@94
    move-object/from16 v18, v0

    #@96
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@99
    move-result-object v19

    #@9a
    const-string/jumbo v20, "fstrim"

    #@9d
    const/16 v18, 0x1

    #@9f
    move/from16 v0, v18

    #@a1
    new-array v0, v0, [Ljava/lang/Object;

    #@a3
    move-object/from16 v21, v0

    #@a5
    if-eqz v14, :cond_2

    #@a7
    const-string/jumbo v18, "dotrimbench"

    #@aa
    :goto_2
    const/16 v22, 0x0

    #@ac
    aput-object v18, v21, v22

    #@ae
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    #@b1
    .line 647
    :goto_3
    move-object/from16 v0, p1

    #@b3
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b5
    check-cast v5, Ljava/lang/Runnable;

    #@b7
    .line 648
    .local v5, "callback":Ljava/lang/Runnable;
    if-eqz v5, :cond_0

    #@b9
    .line 649
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    #@bc
    goto/16 :goto_0

    #@be
    .line 632
    .end local v5    # "callback":Ljava/lang/Runnable;
    .end local v14    # "shouldBenchmark":Z
    :catch_0
    move-exception v6

    #@bf
    .line 633
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "MountService"

    #@c2
    const-string/jumbo v19, "Unable to record last fstrim!"

    #@c5
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    goto :goto_1

    #@c9
    .line 640
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v14    # "shouldBenchmark":Z
    :cond_2
    :try_start_2
    const-string/jumbo v18, "dotrim"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    #@cc
    goto :goto_2

    #@cd
    .line 641
    :catch_1
    move-exception v11

    #@ce
    .line 642
    .local v11, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v18, "MountService"

    #@d1
    const-string/jumbo v19, "Failed to run fstrim!"

    #@d4
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    goto :goto_3

    #@d8
    .line 654
    .end local v11    # "ndce":Lcom/android/server/NativeDaemonConnectorException;
    .end local v14    # "shouldBenchmark":Z
    :pswitch_3
    move-object/from16 v0, p1

    #@da
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@dc
    check-cast v12, Landroid/os/storage/IMountShutdownObserver;

    #@de
    .line 655
    .local v12, "obs":Landroid/os/storage/IMountShutdownObserver;
    const/4 v15, 0x0

    #@df
    .line 657
    .local v15, "success":Z
    :try_start_3
    move-object/from16 v0, p0

    #@e1
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@e3
    move-object/from16 v18, v0

    #@e5
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@e8
    move-result-object v18

    #@e9
    const-string/jumbo v19, "volume"

    #@ec
    const/16 v20, 0x1

    #@ee
    move/from16 v0, v20

    #@f0
    new-array v0, v0, [Ljava/lang/Object;

    #@f2
    move-object/from16 v20, v0

    #@f4
    const-string/jumbo v21, "shutdown"

    #@f7
    const/16 v22, 0x0

    #@f9
    aput-object v21, v20, v22

    #@fb
    invoke-virtual/range {v18 .. v20}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@fe
    move-result-object v18

    #@ff
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/NativeDaemonEvent;->isClassOk()Z
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_4

    #@102
    move-result v15

    #@103
    .line 660
    .end local v15    # "success":Z
    :goto_4
    if-eqz v12, :cond_0

    #@105
    .line 662
    if-eqz v15, :cond_3

    #@107
    const/16 v18, 0x0

    #@109
    :goto_5
    :try_start_4
    move/from16 v0, v18

    #@10b
    invoke-interface {v12, v0}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    #@10e
    goto/16 :goto_0

    #@110
    .line 663
    :catch_2
    move-exception v8

    #@111
    .local v8, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@113
    .line 662
    .end local v8    # "ignored":Landroid/os/RemoteException;
    :cond_3
    const/16 v18, -0x1

    #@115
    goto :goto_5

    #@116
    .line 669
    .end local v12    # "obs":Landroid/os/storage/IMountShutdownObserver;
    :pswitch_4
    move-object/from16 v0, p1

    #@118
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11a
    move-object/from16 v17, v0

    #@11c
    check-cast v17, Landroid/os/storage/VolumeInfo;

    #@11e
    .line 670
    .local v17, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    #@120
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@122
    move-object/from16 v18, v0

    #@124
    move-object/from16 v0, v18

    #@126
    move-object/from16 v1, v17

    #@128
    invoke-static {v0, v1}, Lcom/android/server/MountService;->-wrap0(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z

    #@12b
    move-result v18

    #@12c
    if-eqz v18, :cond_4

    #@12e
    .line 671
    const-string/jumbo v18, "MountService"

    #@131
    new-instance v19, Ljava/lang/StringBuilder;

    #@133
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v20, "Ignoring mount "

    #@139
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v19

    #@13d
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    #@140
    move-result-object v20

    #@141
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v19

    #@145
    const-string/jumbo v20, " due to policy"

    #@148
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v19

    #@14c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v19

    #@150
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@153
    goto/16 :goto_0

    #@155
    .line 675
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    #@157
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@159
    move-object/from16 v18, v0

    #@15b
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@15e
    move-result-object v18

    #@15f
    const-string/jumbo v19, "volume"

    #@162
    const/16 v20, 0x4

    #@164
    move/from16 v0, v20

    #@166
    new-array v0, v0, [Ljava/lang/Object;

    #@168
    move-object/from16 v20, v0

    #@16a
    const-string/jumbo v21, "mount"

    #@16d
    const/16 v22, 0x0

    #@16f
    aput-object v21, v20, v22

    #@171
    move-object/from16 v0, v17

    #@173
    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@175
    move-object/from16 v21, v0

    #@177
    const/16 v22, 0x1

    #@179
    aput-object v21, v20, v22

    #@17b
    move-object/from16 v0, v17

    #@17d
    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@17f
    move/from16 v21, v0

    #@181
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@184
    move-result-object v21

    #@185
    const/16 v22, 0x2

    #@187
    aput-object v21, v20, v22

    #@189
    .line 676
    move-object/from16 v0, v17

    #@18b
    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@18d
    move/from16 v21, v0

    #@18f
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@192
    move-result-object v21

    #@193
    const/16 v22, 0x3

    #@195
    aput-object v21, v20, v22

    #@197
    .line 675
    invoke-virtual/range {v18 .. v20}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_3

    #@19a
    goto/16 :goto_0

    #@19c
    .line 677
    :catch_3
    move-exception v9

    #@19d
    .local v9, "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto/16 :goto_0

    #@19f
    .line 682
    .end local v9    # "ignored":Lcom/android/server/NativeDaemonConnectorException;
    .end local v17    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_5
    move-object/from16 v0, p1

    #@1a1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a3
    move-object/from16 v17, v0

    #@1a5
    check-cast v17, Landroid/os/storage/VolumeInfo;

    #@1a7
    .line 683
    .restart local v17    # "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    #@1a9
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@1ab
    move-object/from16 v18, v0

    #@1ad
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    #@1b0
    move-result-object v19

    #@1b1
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/MountService;->unmount(Ljava/lang/String;)V

    #@1b4
    goto/16 :goto_0

    #@1b6
    .line 687
    .end local v17    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_6
    move-object/from16 v0, p1

    #@1b8
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ba
    move-object/from16 v16, v0

    #@1bc
    check-cast v16, Landroid/os/storage/StorageVolume;

    #@1be
    .line 688
    .local v16, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    #@1c1
    move-result-object v7

    #@1c2
    .line 689
    .local v7, "envState":Ljava/lang/String;
    const-string/jumbo v18, "MountService"

    #@1c5
    new-instance v19, Ljava/lang/StringBuilder;

    #@1c7
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@1ca
    const-string/jumbo v20, "Volume "

    #@1cd
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v19

    #@1d1
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    #@1d4
    move-result-object v20

    #@1d5
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v19

    #@1d9
    const-string/jumbo v20, " broadcasting "

    #@1dc
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v19

    #@1e0
    move-object/from16 v0, v19

    #@1e2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v19

    #@1e6
    const-string/jumbo v20, " to "

    #@1e9
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v19

    #@1ed
    .line 690
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    #@1f0
    move-result-object v20

    #@1f1
    .line 689
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v19

    #@1f5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f8
    move-result-object v19

    #@1f9
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1fc
    .line 692
    invoke-static {v7}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    #@1ff
    move-result-object v4

    #@200
    .line 693
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@202
    .line 694
    new-instance v10, Landroid/content/Intent;

    #@204
    .line 695
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    #@207
    move-result-object v18

    #@208
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@20b
    move-result-object v18

    #@20c
    .line 694
    move-object/from16 v0, v18

    #@20e
    invoke-direct {v10, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@211
    .line 696
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "android.os.storage.extra.STORAGE_VOLUME"

    #@214
    move-object/from16 v0, v18

    #@216
    move-object/from16 v1, v16

    #@218
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@21b
    .line 697
    const/high16 v18, 0x4000000

    #@21d
    move/from16 v0, v18

    #@21f
    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@222
    .line 698
    move-object/from16 v0, p0

    #@224
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@226
    move-object/from16 v18, v0

    #@228
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    #@22b
    move-result-object v18

    #@22c
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    #@22f
    move-result-object v19

    #@230
    move-object/from16 v0, v18

    #@232
    move-object/from16 v1, v19

    #@234
    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@237
    goto/16 :goto_0

    #@239
    .line 705
    .end local v4    # "action":Ljava/lang/String;
    .end local v7    # "envState":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v16    # "userVol":Landroid/os/storage/StorageVolume;
    :pswitch_7
    move-object/from16 v0, p1

    #@23b
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23d
    check-cast v10, Landroid/content/Intent;

    #@23f
    .line 706
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@241
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@243
    move-object/from16 v18, v0

    #@245
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    #@248
    move-result-object v18

    #@249
    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@24b
    .line 707
    const-string/jumbo v20, "android.permission.WRITE_MEDIA_STORAGE"

    #@24e
    .line 706
    move-object/from16 v0, v18

    #@250
    move-object/from16 v1, v19

    #@252
    move-object/from16 v2, v20

    #@254
    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@257
    goto/16 :goto_0

    #@259
    .line 711
    .end local v10    # "intent":Landroid/content/Intent;
    :pswitch_8
    move-object/from16 v0, p1

    #@25b
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@25d
    check-cast v13, Ljava/lang/String;

    #@25f
    .line 712
    .local v13, "partGuid":Ljava/lang/String;
    move-object/from16 v0, p0

    #@261
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@263
    move-object/from16 v18, v0

    #@265
    move-object/from16 v0, v18

    #@267
    invoke-static {v0, v13}, Lcom/android/server/MountService;->-wrap6(Lcom/android/server/MountService;Ljava/lang/String;)V

    #@26a
    goto/16 :goto_0

    #@26c
    .line 716
    .end local v13    # "partGuid":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, p0

    #@26e
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@270
    move-object/from16 v18, v0

    #@272
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap13(Lcom/android/server/MountService;)V

    #@275
    goto/16 :goto_0

    #@277
    .line 658
    .restart local v12    # "obs":Landroid/os/storage/IMountShutdownObserver;
    .restart local v15    # "success":Z
    :catch_4
    move-exception v9

    #@278
    .restart local v9    # "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto/16 :goto_4

    #@27a
    .line 609
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
