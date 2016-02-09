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
    .line 1386
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    .line 1387
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
    .line 1386
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1392
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Landroid/os/Message;->what:I

    #@4
    sparse-switch v2, :sswitch_data_0

    #@7
    .line 1391
    :cond_0
    :goto_0
    return-void

    #@8
    .line 1394
    :sswitch_0
    move-object/from16 v0, p1

    #@a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    move-object/from16 v22, v0

    #@e
    check-cast v22, Ljava/util/HashMap;

    #@10
    .line 1395
    .local v22, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    #@12
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@14
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@16
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@19
    move-result-object v2

    #@1a
    .line 1396
    const-string/jumbo v3, "anr_show_background"

    #@1d
    const/4 v4, 0x0

    #@1e
    .line 1395
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    const/16 v27, 0x1

    #@26
    .line 1397
    .local v27, "showBackground":Z
    :goto_1
    move-object/from16 v0, p0

    #@28
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2a
    monitor-enter v4

    #@2b
    .line 1398
    :try_start_0
    const-string/jumbo v2, "app"

    #@2e
    move-object/from16 v0, v22

    #@30
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v25

    #@34
    check-cast v25, Lcom/android/server/am/ProcessRecord;

    #@36
    .line 1399
    .local v25, "proc":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v2, "result"

    #@39
    move-object/from16 v0, v22

    #@3b
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v26

    #@3f
    check-cast v26, Lcom/android/server/am/AppErrorResult;

    #@41
    .line 1400
    .local v26, "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v25, :cond_3

    #@43
    move-object/from16 v0, v25

    #@45
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@47
    if-eqz v2, :cond_3

    #@49
    .line 1401
    const-string/jumbo v2, "ActivityManager"

    #@4c
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v7, "App already has crash dialog: "

    #@54
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    move-object/from16 v0, v25

    #@5a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 1402
    if-eqz v26, :cond_1

    #@67
    .line 1403
    const/4 v2, 0x0

    #@68
    move-object/from16 v0, v26

    #@6a
    invoke-virtual {v0, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    :cond_1
    monitor-exit v4

    #@6e
    .line 1405
    return-void

    #@6f
    .line 1395
    .end local v25    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v26    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v27    # "showBackground":Z
    :cond_2
    const/16 v27, 0x0

    #@71
    .restart local v27    # "showBackground":Z
    goto :goto_1

    #@72
    .line 1407
    .restart local v25    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v26    # "res":Lcom/android/server/am/AppErrorResult;
    :cond_3
    :try_start_1
    move-object/from16 v0, v25

    #@74
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    #@76
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    #@79
    move-result v2

    #@7a
    .line 1408
    const/16 v3, 0x2710

    #@7c
    .line 1407
    if-lt v2, v3, :cond_5

    #@7e
    .line 1409
    move-object/from16 v0, v25

    #@80
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@82
    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@84
    if-eq v2, v3, :cond_4

    #@86
    const/16 v23, 0x1

    #@88
    .line 1410
    .local v23, "isBackground":Z
    :goto_2
    move-object/from16 v0, p0

    #@8a
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@8c
    iget-object v7, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    #@8e
    const/4 v2, 0x0

    #@8f
    array-length v8, v7

    #@90
    move v3, v2

    #@91
    .end local v23    # "isBackground":Z
    :goto_3
    if-ge v3, v8, :cond_7

    #@93
    aget v29, v7, v3

    #@95
    .line 1411
    .local v29, "userId":I
    move-object/from16 v0, v25

    #@97
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    #@99
    move/from16 v0, v29

    #@9b
    if-eq v2, v0, :cond_6

    #@9d
    const/4 v2, 0x1

    #@9e
    :goto_4
    and-int v23, v23, v2

    #@a0
    .line 1410
    .local v23, "isBackground":Z
    add-int/lit8 v2, v3, 0x1

    #@a2
    move v3, v2

    #@a3
    goto :goto_3

    #@a4
    .line 1409
    .end local v23    # "isBackground":Z
    .end local v29    # "userId":I
    :cond_4
    const/16 v23, 0x0

    #@a6
    .local v23, "isBackground":Z
    goto :goto_2

    #@a7
    .line 1407
    .end local v23    # "isBackground":Z
    :cond_5
    const/16 v23, 0x0

    #@a9
    .restart local v23    # "isBackground":Z
    goto :goto_2

    #@aa
    .line 1411
    .end local v23    # "isBackground":Z
    .restart local v29    # "userId":I
    :cond_6
    const/4 v2, 0x0

    #@ab
    goto :goto_4

    #@ac
    .line 1413
    .end local v29    # "userId":I
    :cond_7
    if-eqz v23, :cond_8

    #@ae
    if-eqz v27, :cond_b

    #@b0
    .line 1420
    :cond_8
    move-object/from16 v0, p0

    #@b2
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b4
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get0(Lcom/android/server/am/ActivityManagerService;)Z

    #@b7
    move-result v2

    #@b8
    if-eqz v2, :cond_9

    #@ba
    move-object/from16 v0, p0

    #@bc
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@be
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get1(Lcom/android/server/am/ActivityManagerService;)Z

    #@c1
    move-result v2

    #@c2
    if-eqz v2, :cond_d

    #@c4
    .line 1428
    :cond_9
    if-eqz v26, :cond_a

    #@c6
    .line 1429
    const/4 v2, 0x0

    #@c7
    move-object/from16 v0, v26

    #@c9
    invoke-virtual {v0, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@cc
    :cond_a
    :goto_5
    monitor-exit v4

    #@cd
    .line 1434
    move-object/from16 v0, p0

    #@cf
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@d1
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    #@d4
    goto/16 :goto_0

    #@d6
    .line 1414
    :cond_b
    :try_start_2
    const-string/jumbo v2, "ActivityManager"

    #@d9
    new-instance v3, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v7, "Skipping crash dialog of "

    #@e1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v3

    #@e5
    move-object/from16 v0, v25

    #@e7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v3

    #@eb
    const-string/jumbo v7, ": background"

    #@ee
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v3

    #@f2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v3

    #@f6
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f9
    .line 1415
    if-eqz v26, :cond_c

    #@fb
    .line 1416
    const/4 v2, 0x0

    #@fc
    move-object/from16 v0, v26

    #@fe
    invoke-virtual {v0, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@101
    :cond_c
    monitor-exit v4

    #@102
    .line 1418
    return-void

    #@103
    .line 1420
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    #@105
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@107
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    #@109
    if-nez v2, :cond_9

    #@10b
    .line 1421
    new-instance v6, Lcom/android/server/am/AppErrorDialog;

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@111
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@113
    .line 1422
    move-object/from16 v0, p0

    #@115
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@117
    .line 1421
    move-object/from16 v0, v26

    #@119
    move-object/from16 v1, v25

    #@11b
    invoke-direct {v6, v2, v3, v0, v1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    #@11e
    .line 1423
    .local v6, "d":Landroid/app/Dialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    #@121
    .line 1424
    move-object/from16 v0, v25

    #@123
    iput-object v6, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@125
    goto :goto_5

    #@126
    .line 1397
    .end local v6    # "d":Landroid/app/Dialog;
    .end local v25    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v26    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_0
    move-exception v2

    #@127
    monitor-exit v4

    #@128
    throw v2

    #@129
    .line 1437
    .end local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v27    # "showBackground":Z
    :sswitch_1
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@12d
    move-object/from16 v30, v0

    #@12f
    monitor-enter v30

    #@130
    .line 1438
    :try_start_4
    move-object/from16 v0, p1

    #@132
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@134
    move-object/from16 v22, v0

    #@136
    check-cast v22, Ljava/util/HashMap;

    #@138
    .line 1439
    .restart local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "app"

    #@13b
    move-object/from16 v0, v22

    #@13d
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@140
    move-result-object v25

    #@141
    check-cast v25, Lcom/android/server/am/ProcessRecord;

    #@143
    .line 1440
    .restart local v25    # "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v25, :cond_e

    #@145
    move-object/from16 v0, v25

    #@147
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@149
    if-eqz v2, :cond_e

    #@14b
    .line 1441
    const-string/jumbo v2, "ActivityManager"

    #@14e
    new-instance v3, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v4, "App already has anr dialog: "

    #@156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v3

    #@15a
    move-object/from16 v0, v25

    #@15c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v3

    #@160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@163
    move-result-object v3

    #@164
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@167
    monitor-exit v30

    #@168
    .line 1442
    return-void

    #@169
    .line 1445
    :cond_e
    :try_start_5
    new-instance v5, Landroid/content/Intent;

    #@16b
    const-string/jumbo v2, "android.intent.action.ANR"

    #@16e
    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@171
    .line 1446
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@173
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@175
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    #@177
    if-nez v2, :cond_f

    #@179
    .line 1447
    const/high16 v2, 0x50000000

    #@17b
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@17e
    .line 1450
    :cond_f
    move-object/from16 v0, p0

    #@180
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@182
    .line 1452
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@184
    .line 1450
    const/4 v3, 0x0

    #@185
    const/4 v4, 0x0

    #@186
    .line 1451
    const/4 v6, 0x0

    #@187
    const/4 v7, 0x0

    #@188
    const/4 v8, 0x0

    #@189
    const/4 v9, 0x0

    #@18a
    const/4 v10, 0x0

    #@18b
    const/4 v11, 0x0

    #@18c
    const/4 v12, -0x1

    #@18d
    .line 1452
    const/4 v13, 0x0

    #@18e
    const/4 v14, 0x0

    #@18f
    const/4 v15, 0x0

    #@190
    const/16 v17, 0x3e8

    #@192
    const/16 v18, 0x0

    #@194
    .line 1450
    invoke-static/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@197
    .line 1454
    move-object/from16 v0, p0

    #@199
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@19b
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get0(Lcom/android/server/am/ActivityManagerService;)Z

    #@19e
    move-result v2

    #@19f
    if-eqz v2, :cond_11

    #@1a1
    .line 1455
    new-instance v6, Lcom/android/server/am/AppNotRespondingDialog;

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1a7
    .line 1456
    move-object/from16 v0, p0

    #@1a9
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1ab
    iget-object v8, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@1ad
    const-string/jumbo v2, "activity"

    #@1b0
    move-object/from16 v0, v22

    #@1b2
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b5
    move-result-object v10

    #@1b6
    check-cast v10, Lcom/android/server/am/ActivityRecord;

    #@1b8
    .line 1457
    move-object/from16 v0, p1

    #@1ba
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@1bc
    if-eqz v2, :cond_10

    #@1be
    const/4 v11, 0x1

    #@1bf
    :goto_6
    move-object/from16 v9, v25

    #@1c1
    .line 1455
    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    #@1c4
    .line 1458
    .restart local v6    # "d":Landroid/app/Dialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    #@1c7
    .line 1459
    move-object/from16 v0, v25

    #@1c9
    iput-object v6, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@1cb
    .end local v6    # "d":Landroid/app/Dialog;
    :goto_7
    monitor-exit v30

    #@1cc
    .line 1466
    move-object/from16 v0, p0

    #@1ce
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1d0
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    #@1d3
    goto/16 :goto_0

    #@1d5
    .line 1457
    :cond_10
    const/4 v11, 0x0

    #@1d6
    goto :goto_6

    #@1d7
    .line 1462
    :cond_11
    :try_start_6
    move-object/from16 v0, p0

    #@1d9
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1db
    const/4 v3, 0x0

    #@1dc
    move-object/from16 v0, v25

    #@1de
    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@1e1
    goto :goto_7

    #@1e2
    .line 1437
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v25    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v2

    #@1e3
    monitor-exit v30

    #@1e4
    throw v2

    #@1e5
    .line 1469
    :sswitch_2
    move-object/from16 v0, p1

    #@1e7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e9
    move-object/from16 v22, v0

    #@1eb
    check-cast v22, Ljava/util/HashMap;

    #@1ed
    .line 1470
    .restart local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    #@1ef
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1f1
    monitor-enter v3

    #@1f2
    .line 1471
    :try_start_7
    const-string/jumbo v2, "app"

    #@1f5
    move-object/from16 v0, v22

    #@1f7
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1fa
    move-result-object v25

    #@1fb
    check-cast v25, Lcom/android/server/am/ProcessRecord;

    #@1fd
    .line 1472
    .restart local v25    # "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v25, :cond_13

    #@1ff
    .line 1473
    const-string/jumbo v2, "ActivityManager"

    #@202
    const-string/jumbo v4, "App not found when showing strict mode dialog."

    #@205
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@208
    .end local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v25    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_12
    :goto_8
    monitor-exit v3

    #@209
    goto/16 :goto_0

    #@20b
    .line 1476
    .restart local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v25    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_13
    :try_start_8
    move-object/from16 v0, v25

    #@20d
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@20f
    if-eqz v2, :cond_14

    #@211
    .line 1477
    const-string/jumbo v2, "ActivityManager"

    #@214
    new-instance v4, Ljava/lang/StringBuilder;

    #@216
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@219
    const-string/jumbo v7, "App already has strict mode dialog: "

    #@21c
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v4

    #@220
    move-object/from16 v0, v25

    #@222
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v4

    #@226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@229
    move-result-object v4

    #@22a
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@22d
    monitor-exit v3

    #@22e
    .line 1478
    return-void

    #@22f
    .line 1480
    :cond_14
    :try_start_9
    const-string/jumbo v2, "result"

    #@232
    move-object/from16 v0, v22

    #@234
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@237
    move-result-object v26

    #@238
    check-cast v26, Lcom/android/server/am/AppErrorResult;

    #@23a
    .line 1481
    .restart local v26    # "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    #@23c
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@23e
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get0(Lcom/android/server/am/ActivityManagerService;)Z

    #@241
    move-result v2

    #@242
    if-eqz v2, :cond_15

    #@244
    move-object/from16 v0, p0

    #@246
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@248
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get1(Lcom/android/server/am/ActivityManagerService;)Z

    #@24b
    move-result v2

    #@24c
    if-eqz v2, :cond_16

    #@24e
    .line 1489
    :cond_15
    const/4 v2, 0x0

    #@24f
    move-object/from16 v0, v26

    #@251
    invoke-virtual {v0, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@254
    :goto_9
    monitor-exit v3

    #@255
    .line 1492
    move-object/from16 v0, p0

    #@257
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@259
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    #@25c
    goto/16 :goto_0

    #@25e
    .line 1481
    :cond_16
    :try_start_a
    move-object/from16 v0, p0

    #@260
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@262
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    #@264
    if-nez v2, :cond_15

    #@266
    .line 1482
    new-instance v6, Lcom/android/server/am/StrictModeViolationDialog;

    #@268
    move-object/from16 v0, p0

    #@26a
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@26c
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@26e
    .line 1483
    move-object/from16 v0, p0

    #@270
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@272
    .line 1482
    move-object/from16 v0, v26

    #@274
    move-object/from16 v1, v25

    #@276
    invoke-direct {v6, v2, v4, v0, v1}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    #@279
    .line 1484
    .restart local v6    # "d":Landroid/app/Dialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    #@27c
    .line 1485
    move-object/from16 v0, v25

    #@27e
    iput-object v6, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@280
    goto :goto_9

    #@281
    .line 1470
    .end local v6    # "d":Landroid/app/Dialog;
    .end local v25    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v26    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_2
    move-exception v2

    #@282
    monitor-exit v3

    #@283
    throw v2

    #@284
    .line 1495
    .end local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_3
    new-instance v6, Lcom/android/server/am/FactoryErrorDialog;

    #@286
    .line 1496
    move-object/from16 v0, p0

    #@288
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@28a
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@28c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@28f
    move-result-object v3

    #@290
    const-string/jumbo v4, "msg"

    #@293
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@296
    move-result-object v3

    #@297
    .line 1495
    invoke-direct {v6, v2, v3}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    #@29a
    .line 1497
    .restart local v6    # "d":Landroid/app/Dialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    #@29d
    .line 1498
    move-object/from16 v0, p0

    #@29f
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2a1
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    #@2a4
    goto/16 :goto_0

    #@2a6
    .line 1501
    .end local v6    # "d":Landroid/app/Dialog;
    :sswitch_4
    move-object/from16 v0, p0

    #@2a8
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2aa
    monitor-enter v3

    #@2ab
    .line 1502
    :try_start_b
    move-object/from16 v0, p1

    #@2ad
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2af
    move-object/from16 v19, v0

    #@2b1
    check-cast v19, Lcom/android/server/am/ProcessRecord;

    #@2b3
    .line 1503
    .local v19, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    #@2b5
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@2b7
    if-eqz v2, :cond_17

    #@2b9
    .line 1504
    move-object/from16 v0, v19

    #@2bb
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    #@2bd
    if-nez v2, :cond_12

    #@2bf
    .line 1505
    new-instance v6, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    #@2c1
    .line 1506
    move-object/from16 v0, p0

    #@2c3
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2c5
    .line 1507
    move-object/from16 v0, p0

    #@2c7
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2c9
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@2cb
    .line 1505
    move-object/from16 v0, v19

    #@2cd
    invoke-direct {v6, v2, v4, v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    #@2d0
    .line 1508
    .restart local v6    # "d":Landroid/app/Dialog;
    move-object/from16 v0, v19

    #@2d2
    iput-object v6, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    #@2d4
    .line 1509
    const/4 v2, 0x1

    #@2d5
    move-object/from16 v0, v19

    #@2d7
    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    #@2d9
    .line 1510
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@2dc
    goto/16 :goto_8

    #@2de
    .line 1501
    .end local v6    # "d":Landroid/app/Dialog;
    .end local v19    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v2

    #@2df
    monitor-exit v3

    #@2e0
    throw v2

    #@2e1
    .line 1513
    .restart local v19    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_17
    :try_start_c
    move-object/from16 v0, v19

    #@2e3
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    #@2e5
    if-eqz v2, :cond_12

    #@2e7
    .line 1514
    move-object/from16 v0, v19

    #@2e9
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    #@2eb
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    #@2ee
    .line 1515
    const/4 v2, 0x0

    #@2ef
    move-object/from16 v0, v19

    #@2f1
    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@2f3
    goto/16 :goto_8

    #@2f5
    .line 1521
    .end local v19    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_5
    move-object/from16 v0, p0

    #@2f7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2f9
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get0(Lcom/android/server/am/ActivityManagerService;)Z

    #@2fc
    move-result v2

    #@2fd
    if-eqz v2, :cond_0

    #@2ff
    .line 1522
    new-instance v21, Lcom/android/server/am/BaseErrorDialog;

    #@301
    move-object/from16 v0, p0

    #@303
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@305
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@307
    move-object/from16 v0, v21

    #@309
    invoke-direct {v0, v2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    #@30c
    .line 1523
    .local v21, "d":Landroid/app/AlertDialog;
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@30f
    move-result-object v2

    #@310
    const/16 v3, 0x7da

    #@312
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    #@315
    .line 1524
    const/4 v2, 0x0

    #@316
    move-object/from16 v0, v21

    #@318
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    #@31b
    .line 1525
    move-object/from16 v0, p0

    #@31d
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@31f
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@321
    const v3, 0x1040119

    #@324
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@327
    move-result-object v2

    #@328
    move-object/from16 v0, v21

    #@32a
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@32d
    .line 1526
    move-object/from16 v0, p0

    #@32f
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@331
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@333
    const v3, 0x104057c

    #@336
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@339
    move-result-object v2

    #@33a
    move-object/from16 v0, v21

    #@33c
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@33f
    .line 1527
    move-object/from16 v0, p0

    #@341
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@343
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@345
    const v3, 0x104000a

    #@348
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@34b
    move-result-object v2

    #@34c
    .line 1528
    const/16 v3, 0x30

    #@34e
    move-object/from16 v0, p0

    #@350
    move-object/from16 v1, v21

    #@352
    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@355
    move-result-object v3

    #@356
    .line 1527
    const/4 v4, -0x1

    #@357
    move-object/from16 v0, v21

    #@359
    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    #@35c
    .line 1529
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->show()V

    #@35f
    goto/16 :goto_0

    #@361
    .line 1533
    .end local v21    # "d":Landroid/app/AlertDialog;
    :sswitch_6
    move-object/from16 v0, p0

    #@363
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@365
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get0(Lcom/android/server/am/ActivityManagerService;)Z

    #@368
    move-result v2

    #@369
    if-eqz v2, :cond_0

    #@36b
    .line 1534
    new-instance v21, Lcom/android/server/am/BaseErrorDialog;

    #@36d
    move-object/from16 v0, p0

    #@36f
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@371
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@373
    move-object/from16 v0, v21

    #@375
    invoke-direct {v0, v2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    #@378
    .line 1535
    .restart local v21    # "d":Landroid/app/AlertDialog;
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@37b
    move-result-object v2

    #@37c
    const/16 v3, 0x7da

    #@37e
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    #@381
    .line 1536
    const/4 v2, 0x0

    #@382
    move-object/from16 v0, v21

    #@384
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    #@387
    .line 1537
    move-object/from16 v0, p0

    #@389
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@38b
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@38d
    const v3, 0x1040119

    #@390
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@393
    move-result-object v2

    #@394
    move-object/from16 v0, v21

    #@396
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@399
    .line 1538
    move-object/from16 v0, p0

    #@39b
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@39d
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@39f
    const v3, 0x104057d

    #@3a2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@3a5
    move-result-object v2

    #@3a6
    move-object/from16 v0, v21

    #@3a8
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@3ab
    .line 1539
    move-object/from16 v0, p0

    #@3ad
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3af
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@3b1
    const v3, 0x104000a

    #@3b4
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@3b7
    move-result-object v2

    #@3b8
    .line 1540
    const/16 v3, 0x30

    #@3ba
    move-object/from16 v0, p0

    #@3bc
    move-object/from16 v1, v21

    #@3be
    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3c1
    move-result-object v3

    #@3c2
    .line 1539
    const/4 v4, -0x1

    #@3c3
    move-object/from16 v0, v21

    #@3c5
    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    #@3c8
    .line 1541
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->show()V

    #@3cb
    goto/16 :goto_0

    #@3cd
    .line 1545
    .end local v21    # "d":Landroid/app/AlertDialog;
    :sswitch_7
    move-object/from16 v0, p0

    #@3cf
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3d1
    monitor-enter v3

    #@3d2
    .line 1546
    :try_start_d
    move-object/from16 v0, p1

    #@3d4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3d6
    move-object/from16 v20, v0

    #@3d8
    check-cast v20, Lcom/android/server/am/ActivityRecord;

    #@3da
    .line 1547
    .local v20, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    #@3dc
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3de
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    #@3e0
    if-eqz v2, :cond_19

    #@3e2
    .line 1548
    move-object/from16 v0, p0

    #@3e4
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3e6
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    #@3e8
    iget-object v2, v2, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    #@3ea
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3ec
    .line 1549
    move-object/from16 v0, v20

    #@3ee
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@3f0
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3f2
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3f4
    .line 1548
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    #@3f7
    move-result v2

    #@3f8
    if-eqz v2, :cond_18

    #@3fa
    monitor-exit v3

    #@3fb
    .line 1550
    return-void

    #@3fc
    .line 1552
    :cond_18
    :try_start_e
    move-object/from16 v0, p0

    #@3fe
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@400
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    #@402
    invoke-virtual {v2}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    #@405
    .line 1553
    move-object/from16 v0, p0

    #@407
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@409
    const/4 v4, 0x0

    #@40a
    iput-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    #@40c
    .line 1555
    :cond_19
    if-eqz v20, :cond_12

    #@40e
    goto/16 :goto_8

    #@410
    .line 1545
    .end local v20    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_4
    move-exception v2

    #@411
    monitor-exit v3

    #@412
    throw v2

    #@413
    .line 1573
    :sswitch_8
    move-object/from16 v0, p0

    #@415
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@417
    move-object/from16 v0, p1

    #@419
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@41b
    move-object/from16 v0, p1

    #@41d
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41f
    check-cast v2, Ljava/lang/String;

    #@421
    invoke-static {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService;->-wrap8(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;)V

    #@424
    goto/16 :goto_0

    #@426
    .line 1577
    :sswitch_9
    move-object/from16 v0, p1

    #@428
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@42a
    check-cast v6, Landroid/app/Dialog;

    #@42c
    .line 1578
    .restart local v6    # "d":Landroid/app/Dialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    #@42f
    goto/16 :goto_0

    #@431
    .line 1582
    .end local v6    # "d":Landroid/app/Dialog;
    :sswitch_a
    move-object/from16 v0, p0

    #@433
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@435
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-wrap5(Lcom/android/server/am/ActivityManagerService;)V

    #@438
    goto/16 :goto_0

    #@43a
    .line 1586
    :sswitch_b
    move-object/from16 v0, p1

    #@43c
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@43e
    move/from16 v24, v0

    #@440
    .line 1587
    .local v24, "pid":I
    move-object/from16 v0, p1

    #@442
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@444
    move/from16 v28, v0

    #@446
    .line 1588
    .local v28, "uid":I
    move-object/from16 v0, p0

    #@448
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@44a
    move/from16 v0, v24

    #@44c
    move/from16 v1, v28

    #@44e
    invoke-static {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->-wrap4(Lcom/android/server/am/ActivityManagerService;II)V

    #@451
    goto/16 :goto_0

    #@453
    .line 1592
    .end local v24    # "pid":I
    .end local v28    # "uid":I
    :sswitch_c
    move-object/from16 v0, p0

    #@455
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@457
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-wrap6(Lcom/android/server/am/ActivityManagerService;)V

    #@45a
    goto/16 :goto_0

    #@45c
    .line 1392
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
        0x1f -> :sswitch_a
        0x20 -> :sswitch_b
        0x2e -> :sswitch_8
        0x30 -> :sswitch_9
        0x36 -> :sswitch_c
    .end sparse-switch
.end method
