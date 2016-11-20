.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 401
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@2
    .line 402
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 401
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 407
    iget v0, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 406
    :goto_0
    :pswitch_0
    return-void

    #@9
    .line 409
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@d
    .line 411
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@f
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@11
    check-cast v0, Ljava/io/FileDescriptor;

    #@13
    .line 412
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@15
    check-cast v2, Ljava/io/PrintWriter;

    #@17
    iget-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@19
    check-cast v3, [Ljava/lang/String;

    #@1b
    .line 411
    invoke-virtual {v4, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 416
    :goto_1
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@20
    monitor-enter v2

    #@21
    .line 417
    :try_start_1
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@23
    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    #@25
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit v2

    #@29
    .line 419
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@2c
    .line 420
    return-void

    #@2d
    .line 413
    :catch_0
    move-exception v9

    #@2e
    .line 414
    .local v9, "e":Ljava/lang/RuntimeException;
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@30
    check-cast v0, Ljava/io/PrintWriter;

    #@32
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "Exception: "

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    goto :goto_1

    #@4a
    .line 416
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    #@4b
    monitor-exit v2

    #@4c
    throw v0

    #@4d
    .line 423
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4f
    check-cast v10, Lcom/android/internal/view/InputBindResult;

    #@51
    .line 427
    .local v10, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@53
    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@55
    monitor-enter v4

    #@56
    .line 428
    :try_start_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@58
    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    #@5a
    if-ltz v0, :cond_0

    #@5c
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@5e
    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    #@60
    iget v5, v10, Lcom/android/internal/view/InputBindResult;->sequence:I

    #@62
    if-eq v0, v5, :cond_2

    #@64
    .line 429
    :cond_0
    const-string/jumbo v0, "InputMethodManager"

    #@67
    new-instance v2, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v3, "Ignoring onBind: cur seq="

    #@6f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@75
    iget v3, v3, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    #@77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v2

    #@7b
    .line 430
    const-string/jumbo v3, ", given seq="

    #@7e
    .line 429
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    .line 430
    iget v3, v10, Lcom/android/internal/view/InputBindResult;->sequence:I

    #@84
    .line 429
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v2

    #@8c
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 431
    iget-object v0, v10, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@91
    if-eqz v0, :cond_1

    #@93
    iget-object v0, v10, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@95
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@97
    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    #@99
    if-eq v0, v2, :cond_1

    #@9b
    .line 432
    iget-object v0, v10, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@9d
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@a0
    :cond_1
    monitor-exit v4

    #@a1
    .line 434
    return-void

    #@a2
    .line 437
    :cond_2
    :try_start_3
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@a4
    .line 438
    const/4 v5, 0x0

    #@a5
    .line 437
    invoke-static {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->-set1(Landroid/view/inputmethod/InputMethodManager;I)I

    #@a8
    .line 440
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@aa
    iget-object v5, v10, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@ac
    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    #@af
    .line 441
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@b1
    iget-object v5, v10, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    #@b3
    iput-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@b5
    .line 442
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@b7
    iget-object v5, v10, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    #@b9
    iput-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@bb
    .line 443
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@bd
    iget v5, v10, Lcom/android/internal/view/InputBindResult;->sequence:I

    #@bf
    iput v5, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@c1
    monitor-exit v4

    #@c2
    .line 445
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@c4
    const/4 v1, 0x5

    #@c5
    move v4, v3

    #@c6
    move v5, v3

    #@c7
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    #@ca
    .line 447
    return-void

    #@cb
    .line 427
    :catchall_1
    move-exception v0

    #@cc
    monitor-exit v4

    #@cd
    throw v0

    #@ce
    .line 450
    .end local v10    # "res":Lcom/android/internal/view/InputBindResult;
    :pswitch_3
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@d0
    .line 452
    .local v11, "sequence":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@d2
    .line 458
    .local v1, "reason":I
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@d4
    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@d6
    monitor-enter v4

    #@d7
    .line 459
    :try_start_4
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@d9
    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@db
    if-eq v0, v11, :cond_3

    #@dd
    monitor-exit v4

    #@de
    .line 460
    return-void

    #@df
    .line 462
    :cond_3
    :try_start_5
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@e1
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    #@e4
    .line 465
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@e6
    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@e8
    if-eqz v0, :cond_4

    #@ea
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@ec
    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@ee
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    #@f1
    move-result v0

    #@f2
    if-eqz v0, :cond_4

    #@f4
    .line 466
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@f6
    const/4 v5, 0x1

    #@f7
    iput-boolean v5, v0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    #@f9
    .line 468
    :cond_4
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@fb
    iget-boolean v12, v0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@fd
    .local v12, "startInput":Z
    monitor-exit v4

    #@fe
    .line 470
    if-eqz v12, :cond_5

    #@100
    .line 471
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@102
    .line 472
    const/4 v1, 0x6

    #@103
    move v4, v3

    #@104
    move v5, v3

    #@105
    .line 471
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    #@108
    .line 475
    .end local v1    # "reason":I
    :cond_5
    return-void

    #@109
    .line 458
    .end local v12    # "startInput":Z
    .restart local v1    # "reason":I
    :catchall_2
    move-exception v0

    #@10a
    monitor-exit v4

    #@10b
    throw v0

    #@10c
    .line 478
    .end local v1    # "reason":I
    .end local v11    # "sequence":I
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@10e
    if-eqz v0, :cond_8

    #@110
    const/4 v6, 0x1

    #@111
    .line 482
    .local v6, "active":Z
    :goto_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@113
    iget-object v13, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@115
    monitor-enter v13

    #@116
    .line 483
    :try_start_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@118
    iput-boolean v6, v0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    #@11a
    .line 484
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@11c
    const/4 v2, 0x0

    #@11d
    iput-boolean v2, v0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    #@11f
    .line 485
    if-nez v6, :cond_6

    #@121
    .line 489
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@123
    const/4 v2, 0x1

    #@124
    iput-boolean v2, v0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@126
    .line 493
    :try_start_7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@128
    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@12a
    invoke-interface {v0}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@12d
    .line 499
    :cond_6
    :goto_3
    :try_start_8
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@12f
    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@131
    if-eqz v0, :cond_7

    #@133
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@135
    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@137
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    #@13a
    move-result v0

    #@13b
    if-eqz v0, :cond_7

    #@13d
    .line 500
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@13f
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@141
    iget-boolean v2, v2, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    #@143
    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->-wrap0(Landroid/view/inputmethod/InputMethodManager;Z)Z

    #@146
    move-result v0

    #@147
    if-eqz v0, :cond_7

    #@149
    .line 501
    if-eqz v6, :cond_9

    #@14b
    .line 502
    const/4 v1, 0x7

    #@14c
    .line 504
    .restart local v1    # "reason":I
    :goto_4
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@14e
    const/4 v2, 0x0

    #@14f
    const/4 v3, 0x0

    #@150
    const/4 v4, 0x0

    #@151
    const/4 v5, 0x0

    #@152
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@155
    .end local v1    # "reason":I
    :cond_7
    monitor-exit v13

    #@156
    .line 508
    return-void

    #@157
    .line 478
    .end local v6    # "active":Z
    :cond_8
    const/4 v6, 0x0

    #@158
    .restart local v6    # "active":Z
    goto :goto_2

    #@159
    .line 503
    :cond_9
    const/16 v1, 0x8

    #@15b
    .restart local v1    # "reason":I
    goto :goto_4

    #@15c
    .line 482
    .end local v1    # "reason":I
    :catchall_3
    move-exception v0

    #@15d
    monitor-exit v13

    #@15e
    throw v0

    #@15f
    .line 511
    .end local v6    # "active":Z
    :pswitch_5
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@163
    check-cast v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    #@165
    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    #@168
    .line 512
    return-void

    #@169
    .line 515
    :pswitch_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@16b
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@16d
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    #@170
    .line 516
    return-void

    #@171
    .line 519
    :pswitch_7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@173
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@175
    invoke-virtual {v0, v2, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    #@178
    .line 520
    return-void

    #@179
    .line 523
    :pswitch_8
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@17b
    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@17d
    monitor-enter v2

    #@17e
    .line 524
    :try_start_9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@180
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@182
    invoke-static {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->-set0(Landroid/view/inputmethod/InputMethodManager;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    #@185
    monitor-exit v2

    #@186
    goto/16 :goto_0

    #@188
    .line 523
    :catchall_4
    move-exception v0

    #@189
    monitor-exit v2

    #@18a
    throw v0

    #@18b
    .line 494
    .restart local v6    # "active":Z
    :catch_1
    move-exception v8

    #@18c
    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_3

    #@18d
    .line 407
    nop

    #@18e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
