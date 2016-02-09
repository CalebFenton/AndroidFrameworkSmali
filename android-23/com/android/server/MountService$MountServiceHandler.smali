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
    .line 565
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@2
    .line 566
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 565
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 571
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v17, v0

    #@6
    packed-switch v17, :pswitch_data_0

    #@9
    .line 570
    :cond_0
    :goto_0
    return-void

    #@a
    .line 573
    :pswitch_0
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@e
    move-object/from16 v17, v0

    #@10
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->-wrap6(Lcom/android/server/MountService;)V

    #@13
    goto :goto_0

    #@14
    .line 577
    :pswitch_1
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@18
    move-object/from16 v17, v0

    #@1a
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->-wrap5(Lcom/android/server/MountService;)V

    #@1d
    goto :goto_0

    #@1e
    .line 581
    :pswitch_2
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@22
    move-object/from16 v17, v0

    #@24
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->-wrap1(Lcom/android/server/MountService;)Z

    #@27
    move-result v17

    #@28
    if-nez v17, :cond_1

    #@2a
    .line 582
    const-string/jumbo v17, "MountService"

    #@2d
    const-string/jumbo v18, "fstrim requested, but no daemon connection yet; trying again"

    #@30
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 583
    move-object/from16 v0, p1

    #@35
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37
    move-object/from16 v17, v0

    #@39
    const/16 v18, 0x4

    #@3b
    move-object/from16 v0, p0

    #@3d
    move/from16 v1, v18

    #@3f
    move-object/from16 v2, v17

    #@41
    invoke-virtual {v0, v1, v2}, Lcom/android/server/MountService$MountServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@44
    move-result-object v17

    #@45
    .line 584
    const-wide/16 v18, 0x3e8

    #@47
    .line 583
    move-object/from16 v0, p0

    #@49
    move-object/from16 v1, v17

    #@4b
    move-wide/from16 v2, v18

    #@4d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/MountService$MountServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@50
    goto :goto_0

    #@51
    .line 588
    :cond_1
    const-string/jumbo v17, "MountService"

    #@54
    const-string/jumbo v18, "Running fstrim idle maintenance"

    #@57
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 592
    :try_start_0
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@5e
    move-object/from16 v17, v0

    #@60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@63
    move-result-wide v18

    #@64
    invoke-static/range {v17 .. v19}, Lcom/android/server/MountService;->-set1(Lcom/android/server/MountService;J)J

    #@67
    .line 593
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@6b
    move-object/from16 v17, v0

    #@6d
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->-get6(Lcom/android/server/MountService;)Ljava/io/File;

    #@70
    move-result-object v17

    #@71
    move-object/from16 v0, p0

    #@73
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@75
    move-object/from16 v18, v0

    #@77
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get5(Lcom/android/server/MountService;)J

    #@7a
    move-result-wide v18

    #@7b
    invoke-virtual/range {v17 .. v19}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7e
    .line 598
    :goto_1
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@82
    move-object/from16 v17, v0

    #@84
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->-wrap3(Lcom/android/server/MountService;)Z

    #@87
    move-result v13

    #@88
    .line 602
    .local v13, "shouldBenchmark":Z
    :try_start_1
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@8c
    move-object/from16 v17, v0

    #@8e
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@91
    move-result-object v18

    #@92
    const-string/jumbo v19, "fstrim"

    #@95
    const/16 v17, 0x1

    #@97
    move/from16 v0, v17

    #@99
    new-array v0, v0, [Ljava/lang/Object;

    #@9b
    move-object/from16 v20, v0

    #@9d
    if-eqz v13, :cond_2

    #@9f
    const-string/jumbo v17, "dotrimbench"

    #@a2
    :goto_2
    const/16 v21, 0x0

    #@a4
    aput-object v17, v20, v21

    #@a6
    invoke-virtual/range {v18 .. v20}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    #@a9
    .line 609
    :goto_3
    move-object/from16 v0, p1

    #@ab
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ad
    check-cast v5, Ljava/lang/Runnable;

    #@af
    .line 610
    .local v5, "callback":Ljava/lang/Runnable;
    if-eqz v5, :cond_0

    #@b1
    .line 611
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    #@b4
    goto/16 :goto_0

    #@b6
    .line 594
    .end local v5    # "callback":Ljava/lang/Runnable;
    .end local v13    # "shouldBenchmark":Z
    :catch_0
    move-exception v6

    #@b7
    .line 595
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v17, "MountService"

    #@ba
    const-string/jumbo v18, "Unable to record last fstrim!"

    #@bd
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c0
    goto :goto_1

    #@c1
    .line 602
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v13    # "shouldBenchmark":Z
    :cond_2
    :try_start_2
    const-string/jumbo v17, "dotrim"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    #@c4
    goto :goto_2

    #@c5
    .line 603
    :catch_1
    move-exception v11

    #@c6
    .line 604
    .local v11, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v17, "MountService"

    #@c9
    const-string/jumbo v18, "Failed to run fstrim!"

    #@cc
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@cf
    goto :goto_3

    #@d0
    .line 616
    .end local v11    # "ndce":Lcom/android/server/NativeDaemonConnectorException;
    .end local v13    # "shouldBenchmark":Z
    :pswitch_3
    move-object/from16 v0, p1

    #@d2
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d4
    check-cast v12, Landroid/os/storage/IMountShutdownObserver;

    #@d6
    .line 617
    .local v12, "obs":Landroid/os/storage/IMountShutdownObserver;
    const/4 v14, 0x0

    #@d7
    .line 619
    .local v14, "success":Z
    :try_start_3
    move-object/from16 v0, p0

    #@d9
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@db
    move-object/from16 v17, v0

    #@dd
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@e0
    move-result-object v17

    #@e1
    const-string/jumbo v18, "volume"

    #@e4
    const/16 v19, 0x1

    #@e6
    move/from16 v0, v19

    #@e8
    new-array v0, v0, [Ljava/lang/Object;

    #@ea
    move-object/from16 v19, v0

    #@ec
    const-string/jumbo v20, "shutdown"

    #@ef
    const/16 v21, 0x0

    #@f1
    aput-object v20, v19, v21

    #@f3
    invoke-virtual/range {v17 .. v19}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@f6
    move-result-object v17

    #@f7
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/NativeDaemonEvent;->isClassOk()Z
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_4

    #@fa
    move-result v14

    #@fb
    .line 622
    .end local v14    # "success":Z
    :goto_4
    if-eqz v12, :cond_0

    #@fd
    .line 624
    if-eqz v14, :cond_3

    #@ff
    const/16 v17, 0x0

    #@101
    :goto_5
    :try_start_4
    move/from16 v0, v17

    #@103
    invoke-interface {v12, v0}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    #@106
    goto/16 :goto_0

    #@108
    .line 625
    :catch_2
    move-exception v8

    #@109
    .local v8, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@10b
    .line 624
    .end local v8    # "ignored":Landroid/os/RemoteException;
    :cond_3
    const/16 v17, -0x1

    #@10d
    goto :goto_5

    #@10e
    .line 631
    .end local v12    # "obs":Landroid/os/storage/IMountShutdownObserver;
    :pswitch_4
    move-object/from16 v0, p1

    #@110
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@112
    move-object/from16 v16, v0

    #@114
    check-cast v16, Landroid/os/storage/VolumeInfo;

    #@116
    .line 632
    .local v16, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    #@118
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@11a
    move-object/from16 v17, v0

    #@11c
    move-object/from16 v0, v17

    #@11e
    move-object/from16 v1, v16

    #@120
    invoke-static {v0, v1}, Lcom/android/server/MountService;->-wrap0(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z

    #@123
    move-result v17

    #@124
    if-eqz v17, :cond_4

    #@126
    .line 633
    const-string/jumbo v17, "MountService"

    #@129
    new-instance v18, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v19, "Ignoring mount "

    #@131
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v18

    #@135
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    #@138
    move-result-object v19

    #@139
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v18

    #@13d
    const-string/jumbo v19, " due to policy"

    #@140
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v18

    #@144
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v18

    #@148
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14b
    goto/16 :goto_0

    #@14d
    .line 637
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    #@14f
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@151
    move-object/from16 v17, v0

    #@153
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@156
    move-result-object v17

    #@157
    const-string/jumbo v18, "volume"

    #@15a
    const/16 v19, 0x4

    #@15c
    move/from16 v0, v19

    #@15e
    new-array v0, v0, [Ljava/lang/Object;

    #@160
    move-object/from16 v19, v0

    #@162
    const-string/jumbo v20, "mount"

    #@165
    const/16 v21, 0x0

    #@167
    aput-object v20, v19, v21

    #@169
    move-object/from16 v0, v16

    #@16b
    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@16d
    move-object/from16 v20, v0

    #@16f
    const/16 v21, 0x1

    #@171
    aput-object v20, v19, v21

    #@173
    move-object/from16 v0, v16

    #@175
    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@177
    move/from16 v20, v0

    #@179
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17c
    move-result-object v20

    #@17d
    const/16 v21, 0x2

    #@17f
    aput-object v20, v19, v21

    #@181
    .line 638
    move-object/from16 v0, v16

    #@183
    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@185
    move/from16 v20, v0

    #@187
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18a
    move-result-object v20

    #@18b
    const/16 v21, 0x3

    #@18d
    aput-object v20, v19, v21

    #@18f
    .line 637
    invoke-virtual/range {v17 .. v19}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_3

    #@192
    goto/16 :goto_0

    #@194
    .line 639
    :catch_3
    move-exception v9

    #@195
    .local v9, "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto/16 :goto_0

    #@197
    .line 644
    .end local v9    # "ignored":Lcom/android/server/NativeDaemonConnectorException;
    .end local v16    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_5
    move-object/from16 v0, p1

    #@199
    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19b
    check-cast v15, Landroid/os/storage/StorageVolume;

    #@19d
    .line 645
    .local v15, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    #@1a0
    move-result-object v7

    #@1a1
    .line 646
    .local v7, "envState":Ljava/lang/String;
    const-string/jumbo v17, "MountService"

    #@1a4
    new-instance v18, Ljava/lang/StringBuilder;

    #@1a6
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1a9
    const-string/jumbo v19, "Volume "

    #@1ac
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v18

    #@1b0
    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    #@1b3
    move-result-object v19

    #@1b4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v18

    #@1b8
    const-string/jumbo v19, " broadcasting "

    #@1bb
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v18

    #@1bf
    move-object/from16 v0, v18

    #@1c1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v18

    #@1c5
    const-string/jumbo v19, " to "

    #@1c8
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v18

    #@1cc
    .line 647
    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    #@1cf
    move-result-object v19

    #@1d0
    .line 646
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v18

    #@1d4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v18

    #@1d8
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1db
    .line 649
    invoke-static {v7}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    #@1de
    move-result-object v4

    #@1df
    .line 650
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@1e1
    .line 651
    new-instance v10, Landroid/content/Intent;

    #@1e3
    .line 652
    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    #@1e6
    move-result-object v17

    #@1e7
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@1ea
    move-result-object v17

    #@1eb
    .line 651
    move-object/from16 v0, v17

    #@1ed
    invoke-direct {v10, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@1f0
    .line 653
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v17, "storage_volume"

    #@1f3
    move-object/from16 v0, v17

    #@1f5
    invoke-virtual {v10, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1f8
    .line 654
    const/high16 v17, 0x4000000

    #@1fa
    move/from16 v0, v17

    #@1fc
    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1ff
    .line 655
    move-object/from16 v0, p0

    #@201
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@203
    move-object/from16 v17, v0

    #@205
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    #@208
    move-result-object v17

    #@209
    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    #@20c
    move-result-object v18

    #@20d
    move-object/from16 v0, v17

    #@20f
    move-object/from16 v1, v18

    #@211
    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@214
    goto/16 :goto_0

    #@216
    .line 662
    .end local v4    # "action":Ljava/lang/String;
    .end local v7    # "envState":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v15    # "userVol":Landroid/os/storage/StorageVolume;
    :pswitch_6
    move-object/from16 v0, p1

    #@218
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21a
    check-cast v10, Landroid/content/Intent;

    #@21c
    .line 663
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@21e
    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #@220
    move-object/from16 v17, v0

    #@222
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    #@225
    move-result-object v17

    #@226
    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@228
    .line 664
    const-string/jumbo v19, "android.permission.WRITE_MEDIA_STORAGE"

    #@22b
    .line 663
    move-object/from16 v0, v17

    #@22d
    move-object/from16 v1, v18

    #@22f
    move-object/from16 v2, v19

    #@231
    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@234
    goto/16 :goto_0

    #@236
    .line 620
    .end local v10    # "intent":Landroid/content/Intent;
    .restart local v12    # "obs":Landroid/os/storage/IMountShutdownObserver;
    .restart local v14    # "success":Z
    :catch_4
    move-exception v9

    #@237
    .restart local v9    # "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto/16 :goto_4

    #@239
    .line 571
    nop

    #@23a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
