.class final Lcom/android/server/am/ActivityManagerService$UiHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 1603
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    .line 1604
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x0

    #@b
    const/4 v2, 0x1

    #@c
    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@f
    .line 1603
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1609
    move-object/from16 v0, p1

    #@2
    iget v10, v0, Landroid/os/Message;->what:I

    #@4
    sparse-switch v10, :sswitch_data_0

    #@7
    .line 1608
    :cond_0
    :goto_0
    return-void

    #@8
    .line 1611
    :sswitch_0
    move-object/from16 v0, p0

    #@a
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@c
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    #@e
    move-object/from16 v0, p1

    #@10
    invoke-virtual {v10, v0}, Lcom/android/server/am/AppErrors;->handleShowAppErrorUi(Landroid/os/Message;)V

    #@13
    .line 1612
    move-object/from16 v0, p0

    #@15
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@17
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    #@1a
    goto :goto_0

    #@1b
    .line 1615
    :sswitch_1
    move-object/from16 v0, p0

    #@1d
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1f
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    #@21
    move-object/from16 v0, p1

    #@23
    invoke-virtual {v10, v0}, Lcom/android/server/am/AppErrors;->handleShowAnrUi(Landroid/os/Message;)V

    #@26
    .line 1616
    move-object/from16 v0, p0

    #@28
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2a
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    #@2d
    goto :goto_0

    #@2e
    .line 1619
    :sswitch_2
    move-object/from16 v0, p1

    #@30
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@32
    check-cast v5, Ljava/util/HashMap;

    #@34
    .line 1620
    .local v5, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    #@36
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@38
    monitor-enter v11

    #@39
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@3c
    .line 1621
    const-string/jumbo v10, "app"

    #@3f
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v7

    #@43
    check-cast v7, Lcom/android/server/am/ProcessRecord;

    #@45
    .line 1622
    .local v7, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v7, :cond_1

    #@47
    .line 1623
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@4a
    move-result-object v10

    #@4b
    const-string/jumbo v12, "App not found when showing strict mode dialog."

    #@4e
    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    monitor-exit v11

    #@52
    .line 1620
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@55
    goto :goto_0

    #@56
    .line 1626
    :cond_1
    :try_start_1
    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@58
    if-eqz v10, :cond_2

    #@5a
    .line 1627
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    new-instance v12, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v13, "App already has strict mode dialog: "

    #@66
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v12

    #@6a
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v12

    #@6e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v12

    #@72
    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    monitor-exit v11

    #@76
    .line 1620
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@79
    .line 1628
    return-void

    #@7a
    .line 1630
    :cond_2
    :try_start_2
    const-string/jumbo v10, "result"

    #@7d
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    move-result-object v8

    #@81
    check-cast v8, Lcom/android/server/am/AppErrorResult;

    #@83
    .line 1631
    .local v8, "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    #@85
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@87
    invoke-static {v10}, Lcom/android/server/am/ActivityManagerService;->-get5(Lcom/android/server/am/ActivityManagerService;)Z

    #@8a
    move-result v10

    #@8b
    if-eqz v10, :cond_3

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@91
    invoke-static {v10}, Lcom/android/server/am/ActivityManagerService;->-get6(Lcom/android/server/am/ActivityManagerService;)Z

    #@94
    move-result v10

    #@95
    if-eqz v10, :cond_4

    #@97
    .line 1639
    :cond_3
    const/4 v10, 0x0

    #@98
    invoke-virtual {v8, v10}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9b
    :goto_1
    monitor-exit v11

    #@9c
    .line 1620
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@9f
    .line 1642
    move-object/from16 v0, p0

    #@a1
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a3
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    #@a6
    goto/16 :goto_0

    #@a8
    .line 1631
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    #@aa
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@ac
    iget-boolean v10, v10, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    #@ae
    if-nez v10, :cond_3

    #@b0
    .line 1632
    new-instance v4, Lcom/android/server/am/StrictModeViolationDialog;

    #@b2
    move-object/from16 v0, p0

    #@b4
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b6
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@b8
    .line 1633
    move-object/from16 v0, p0

    #@ba
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@bc
    .line 1632
    invoke-direct {v4, v10, v12, v8, v7}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    #@bf
    .line 1634
    .local v4, "d":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    #@c2
    .line 1635
    iput-object v4, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c4
    goto :goto_1

    #@c5
    .line 1620
    .end local v4    # "d":Landroid/app/Dialog;
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_0
    move-exception v10

    #@c6
    monitor-exit v11

    #@c7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@ca
    throw v10

    #@cb
    .line 1645
    .end local v5    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_3
    new-instance v4, Lcom/android/server/am/FactoryErrorDialog;

    #@cd
    .line 1646
    move-object/from16 v0, p0

    #@cf
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@d1
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@d3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@d6
    move-result-object v11

    #@d7
    const-string/jumbo v12, "msg"

    #@da
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@dd
    move-result-object v11

    #@de
    .line 1645
    invoke-direct {v4, v10, v11}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    #@e1
    .line 1647
    .restart local v4    # "d":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    #@e4
    .line 1648
    move-object/from16 v0, p0

    #@e6
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@e8
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    #@eb
    goto/16 :goto_0

    #@ed
    .line 1651
    .end local v4    # "d":Landroid/app/Dialog;
    :sswitch_4
    move-object/from16 v0, p0

    #@ef
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@f1
    monitor-enter v11

    #@f2
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@f5
    .line 1652
    move-object/from16 v0, p1

    #@f7
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f9
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    #@fb
    .line 1653
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    #@fd
    iget v10, v0, Landroid/os/Message;->arg1:I

    #@ff
    if-eqz v10, :cond_6

    #@101
    .line 1654
    iget-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    #@103
    if-nez v10, :cond_5

    #@105
    .line 1655
    new-instance v4, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    #@107
    .line 1656
    move-object/from16 v0, p0

    #@109
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@10b
    .line 1657
    move-object/from16 v0, p0

    #@10d
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@10f
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@111
    .line 1655
    invoke-direct {v4, v10, v12, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    #@114
    .line 1658
    .restart local v4    # "d":Landroid/app/Dialog;
    iput-object v4, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    #@116
    .line 1659
    const/4 v10, 0x1

    #@117
    iput-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    #@119
    .line 1660
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@11c
    .end local v4    # "d":Landroid/app/Dialog;
    :cond_5
    :goto_2
    monitor-exit v11

    #@11d
    .line 1651
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@120
    goto/16 :goto_0

    #@122
    .line 1663
    :cond_6
    :try_start_5
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    #@124
    if-eqz v10, :cond_5

    #@126
    .line 1664
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    #@128
    invoke-virtual {v10}, Landroid/app/Dialog;->dismiss()V

    #@12b
    .line 1665
    const/4 v10, 0x0

    #@12c
    iput-object v10, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@12e
    goto :goto_2

    #@12f
    .line 1651
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v10

    #@130
    monitor-exit v11

    #@131
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@134
    throw v10

    #@135
    .line 1671
    :sswitch_5
    move-object/from16 v0, p0

    #@137
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@139
    invoke-static {v10}, Lcom/android/server/am/ActivityManagerService;->-get5(Lcom/android/server/am/ActivityManagerService;)Z

    #@13c
    move-result v10

    #@13d
    if-eqz v10, :cond_0

    #@13f
    .line 1672
    new-instance v3, Lcom/android/server/am/BaseErrorDialog;

    #@141
    move-object/from16 v0, p0

    #@143
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@145
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@147
    invoke-direct {v3, v10}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    #@14a
    .line 1673
    .local v3, "d":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@14d
    move-result-object v10

    #@14e
    const/16 v11, 0x7da

    #@150
    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    #@153
    .line 1674
    const/4 v10, 0x0

    #@154
    invoke-virtual {v3, v10}, Landroid/app/AlertDialog;->setCancelable(Z)V

    #@157
    .line 1675
    move-object/from16 v0, p0

    #@159
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@15b
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@15d
    const v11, 0x1040145

    #@160
    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@163
    move-result-object v10

    #@164
    invoke-virtual {v3, v10}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@167
    .line 1676
    move-object/from16 v0, p0

    #@169
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@16b
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@16d
    const v11, 0x10405c9

    #@170
    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@173
    move-result-object v10

    #@174
    invoke-virtual {v3, v10}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@177
    .line 1677
    move-object/from16 v0, p0

    #@179
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@17b
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@17d
    const v11, 0x104000a

    #@180
    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@183
    move-result-object v10

    #@184
    .line 1678
    const/16 v11, 0x30

    #@186
    move-object/from16 v0, p0

    #@188
    invoke-virtual {v0, v11, v3}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@18b
    move-result-object v11

    #@18c
    .line 1677
    const/4 v12, -0x1

    #@18d
    invoke-virtual {v3, v12, v10, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    #@190
    .line 1679
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    #@193
    goto/16 :goto_0

    #@195
    .line 1683
    .end local v3    # "d":Landroid/app/AlertDialog;
    :sswitch_6
    move-object/from16 v0, p0

    #@197
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@199
    invoke-static {v10}, Lcom/android/server/am/ActivityManagerService;->-get5(Lcom/android/server/am/ActivityManagerService;)Z

    #@19c
    move-result v10

    #@19d
    if-eqz v10, :cond_0

    #@19f
    .line 1684
    new-instance v3, Lcom/android/server/am/BaseErrorDialog;

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1a5
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@1a7
    invoke-direct {v3, v10}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    #@1aa
    .line 1685
    .restart local v3    # "d":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@1ad
    move-result-object v10

    #@1ae
    const/16 v11, 0x7da

    #@1b0
    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    #@1b3
    .line 1686
    const/4 v10, 0x0

    #@1b4
    invoke-virtual {v3, v10}, Landroid/app/AlertDialog;->setCancelable(Z)V

    #@1b7
    .line 1687
    move-object/from16 v0, p0

    #@1b9
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1bb
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@1bd
    const v11, 0x1040145

    #@1c0
    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@1c3
    move-result-object v10

    #@1c4
    invoke-virtual {v3, v10}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@1c7
    .line 1688
    move-object/from16 v0, p0

    #@1c9
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1cb
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@1cd
    const v11, 0x10405ca

    #@1d0
    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@1d3
    move-result-object v10

    #@1d4
    invoke-virtual {v3, v10}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@1d7
    .line 1689
    move-object/from16 v0, p0

    #@1d9
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1db
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@1dd
    const v11, 0x104000a

    #@1e0
    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@1e3
    move-result-object v10

    #@1e4
    .line 1690
    const/16 v11, 0x30

    #@1e6
    move-object/from16 v0, p0

    #@1e8
    invoke-virtual {v0, v11, v3}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1eb
    move-result-object v11

    #@1ec
    .line 1689
    const/4 v12, -0x1

    #@1ed
    invoke-virtual {v3, v12, v10, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    #@1f0
    .line 1691
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    #@1f3
    goto/16 :goto_0

    #@1f5
    .line 1695
    .end local v3    # "d":Landroid/app/AlertDialog;
    :sswitch_7
    move-object/from16 v0, p0

    #@1f7
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1f9
    monitor-enter v11

    #@1fa
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@1fd
    .line 1696
    move-object/from16 v0, p1

    #@1ff
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@201
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@203
    .line 1697
    .local v2, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    #@205
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@207
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    #@209
    if-eqz v10, :cond_8

    #@20b
    .line 1698
    move-object/from16 v0, p0

    #@20d
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@20f
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    #@211
    iget-object v10, v10, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    #@213
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@215
    .line 1699
    iget-object v12, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@217
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@219
    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@21b
    .line 1698
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@21e
    move-result v10

    #@21f
    if-eqz v10, :cond_7

    #@221
    monitor-exit v11

    #@222
    .line 1695
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@225
    .line 1700
    return-void

    #@226
    .line 1702
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    #@228
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@22a
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    #@22c
    invoke-virtual {v10}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    #@22f
    .line 1703
    move-object/from16 v0, p0

    #@231
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@233
    const/4 v12, 0x0

    #@234
    iput-object v12, v10, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@236
    .line 1705
    :cond_8
    if-eqz v2, :cond_9

    #@238
    :cond_9
    monitor-exit v11

    #@239
    .line 1695
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@23c
    goto/16 :goto_0

    #@23e
    .end local v2    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_2
    move-exception v10

    #@23f
    monitor-exit v11

    #@240
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@243
    throw v10

    #@244
    .line 1723
    :sswitch_8
    move-object/from16 v0, p0

    #@246
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@248
    monitor-enter v11

    #@249
    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@24c
    .line 1724
    move-object/from16 v0, p1

    #@24e
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@250
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@252
    .line 1725
    .restart local v2    # "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    #@254
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@256
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    #@258
    if-eqz v10, :cond_a

    #@25a
    .line 1726
    move-object/from16 v0, p0

    #@25c
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@25e
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    #@260
    invoke-virtual {v10}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->dismiss()V

    #@263
    .line 1727
    move-object/from16 v0, p0

    #@265
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@267
    const/4 v12, 0x0

    #@268
    iput-object v12, v10, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    #@26a
    .line 1729
    :cond_a
    if-eqz v2, :cond_b

    #@26c
    move-object/from16 v0, p0

    #@26e
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@270
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    #@272
    .line 1730
    iget-object v12, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@274
    .line 1729
    invoke-virtual {v10, v12}, Lcom/android/server/am/CompatModePackages;->getPackageNotifyUnsupportedZoomLocked(Ljava/lang/String;)Z

    #@277
    move-result v10

    #@278
    if-eqz v10, :cond_b

    #@27a
    .line 1731
    move-object/from16 v0, p0

    #@27c
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@27e
    new-instance v12, Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    #@280
    .line 1732
    move-object/from16 v0, p0

    #@282
    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@284
    move-object/from16 v0, p0

    #@286
    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@288
    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@28a
    iget-object v15, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@28c
    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@28e
    .line 1731
    invoke-direct {v12, v13, v14, v15}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    #@291
    iput-object v12, v10, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    #@293
    .line 1733
    move-object/from16 v0, p0

    #@295
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@297
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    #@299
    invoke-virtual {v10}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->show()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@29c
    :cond_b
    monitor-exit v11

    #@29d
    .line 1723
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2a0
    goto/16 :goto_0

    #@2a2
    .end local v2    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_3
    move-exception v10

    #@2a3
    monitor-exit v11

    #@2a4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2a7
    throw v10

    #@2a8
    .line 1739
    :sswitch_9
    move-object/from16 v0, p0

    #@2aa
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2ac
    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@2ae
    move-object/from16 v0, p1

    #@2b0
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b2
    check-cast v10, Landroid/util/Pair;

    #@2b4
    invoke-virtual {v11, v10}, Lcom/android/server/am/UserController;->showUserSwitchDialog(Landroid/util/Pair;)V

    #@2b7
    goto/16 :goto_0

    #@2b9
    .line 1743
    :sswitch_a
    move-object/from16 v0, p1

    #@2bb
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2bd
    check-cast v4, Landroid/app/Dialog;

    #@2bf
    .line 1744
    .restart local v4    # "d":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    #@2c2
    goto/16 :goto_0

    #@2c4
    .line 1748
    .end local v4    # "d":Landroid/app/Dialog;
    :sswitch_b
    move-object/from16 v0, p0

    #@2c6
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2c8
    invoke-static {v10}, Lcom/android/server/am/ActivityManagerService;->-wrap7(Lcom/android/server/am/ActivityManagerService;)V

    #@2cb
    goto/16 :goto_0

    #@2cd
    .line 1752
    :sswitch_c
    move-object/from16 v0, p1

    #@2cf
    iget v6, v0, Landroid/os/Message;->arg1:I

    #@2d1
    .line 1753
    .local v6, "pid":I
    move-object/from16 v0, p1

    #@2d3
    iget v9, v0, Landroid/os/Message;->arg2:I

    #@2d5
    .line 1754
    .local v9, "uid":I
    move-object/from16 v0, p0

    #@2d7
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2d9
    invoke-static {v10, v6, v9}, Lcom/android/server/am/ActivityManagerService;->-wrap6(Lcom/android/server/am/ActivityManagerService;II)V

    #@2dc
    goto/16 :goto_0

    #@2de
    .line 1758
    .end local v6    # "pid":I
    .end local v9    # "uid":I
    :sswitch_d
    move-object/from16 v0, p0

    #@2e0
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2e2
    invoke-static {v10}, Lcom/android/server/am/ActivityManagerService;->-wrap8(Lcom/android/server/am/ActivityManagerService;)V

    #@2e5
    goto/16 :goto_0

    #@2e7
    .line 1609
    nop

    #@2e8
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x6 -> :sswitch_4
        0xe -> :sswitch_5
        0xf -> :sswitch_6
        0x1a -> :sswitch_2
        0x1e -> :sswitch_7
        0x1f -> :sswitch_b
        0x20 -> :sswitch_c
        0x2e -> :sswitch_9
        0x30 -> :sswitch_a
        0x36 -> :sswitch_d
        0x46 -> :sswitch_8
    .end sparse-switch
.end method
