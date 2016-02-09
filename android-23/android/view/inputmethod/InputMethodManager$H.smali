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
    .line 395
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@2
    .line 396
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 395
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    .line 401
    iget v7, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v7, :pswitch_data_0

    #@8
    .line 400
    :goto_0
    :pswitch_0
    return-void

    #@9
    .line 403
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@d
    .line 405
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@f
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@11
    check-cast v7, Ljava/io/FileDescriptor;

    #@13
    .line 406
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@15
    check-cast v8, Ljava/io/PrintWriter;

    #@17
    iget-object v9, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@19
    check-cast v9, [Ljava/lang/String;

    #@1b
    .line 405
    invoke-virtual {v10, v7, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 410
    :goto_1
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@20
    monitor-enter v8

    #@21
    .line 411
    :try_start_1
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@23
    check-cast v7, Ljava/util/concurrent/CountDownLatch;

    #@25
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit v8

    #@29
    .line 413
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@2c
    .line 414
    return-void

    #@2d
    .line 407
    :catch_0
    move-exception v3

    #@2e
    .line 408
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@30
    check-cast v7, Ljava/io/PrintWriter;

    #@32
    new-instance v8, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v9, "Exception: "

    #@3a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v8

    #@46
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    goto :goto_1

    #@4a
    .line 410
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v7

    #@4b
    monitor-exit v8

    #@4c
    throw v7

    #@4d
    .line 417
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4f
    check-cast v4, Lcom/android/internal/view/InputBindResult;

    #@51
    .line 421
    .local v4, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@53
    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@55
    monitor-enter v8

    #@56
    .line 422
    :try_start_2
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@58
    iget v7, v7, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    #@5a
    if-ltz v7, :cond_0

    #@5c
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@5e
    iget v7, v7, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    #@60
    iget v9, v4, Lcom/android/internal/view/InputBindResult;->sequence:I

    #@62
    if-eq v7, v9, :cond_2

    #@64
    .line 423
    :cond_0
    const-string/jumbo v7, "InputMethodManager"

    #@67
    new-instance v9, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v10, "Ignoring onBind: cur seq="

    #@6f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@75
    iget v10, v10, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    #@77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    .line 424
    const-string/jumbo v10, ", given seq="

    #@7e
    .line 423
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    .line 424
    iget v10, v4, Lcom/android/internal/view/InputBindResult;->sequence:I

    #@84
    .line 423
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v9

    #@8c
    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 425
    iget-object v7, v4, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@91
    if-eqz v7, :cond_1

    #@93
    iget-object v7, v4, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@95
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@97
    iget-object v9, v9, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    #@99
    if-eq v7, v9, :cond_1

    #@9b
    .line 426
    iget-object v7, v4, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@9d
    invoke-virtual {v7}, Landroid/view/InputChannel;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@a0
    :cond_1
    monitor-exit v8

    #@a1
    .line 428
    return-void

    #@a2
    .line 431
    :cond_2
    :try_start_3
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@a4
    .line 432
    const/4 v9, 0x0

    #@a5
    .line 431
    invoke-static {v7, v9}, Landroid/view/inputmethod/InputMethodManager;->-set1(Landroid/view/inputmethod/InputMethodManager;I)I

    #@a8
    .line 434
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@aa
    iget-object v9, v4, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@ac
    invoke-virtual {v7, v9}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    #@af
    .line 435
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@b1
    iget-object v9, v4, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    #@b3
    iput-object v9, v7, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@b5
    .line 436
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@b7
    iget-object v9, v4, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    #@b9
    iput-object v9, v7, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@bb
    .line 437
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@bd
    iget v9, v4, Lcom/android/internal/view/InputBindResult;->sequence:I

    #@bf
    iput v9, v7, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@c1
    monitor-exit v8

    #@c2
    .line 439
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@c4
    invoke-virtual {v7, v11, v10, v10, v10}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    #@c7
    .line 440
    return-void

    #@c8
    .line 421
    :catchall_1
    move-exception v7

    #@c9
    monitor-exit v8

    #@ca
    throw v7

    #@cb
    .line 443
    .end local v4    # "res":Lcom/android/internal/view/InputBindResult;
    :pswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@cd
    .line 447
    .local v5, "sequence":I
    const/4 v6, 0x0

    #@ce
    .line 448
    .local v6, "startInput":Z
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@d0
    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@d2
    monitor-enter v8

    #@d3
    .line 449
    :try_start_4
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@d5
    iget v7, v7, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    #@d7
    if-ne v7, v5, :cond_4

    #@d9
    .line 460
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@db
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    #@de
    .line 464
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@e0
    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@e2
    if-eqz v7, :cond_3

    #@e4
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@e6
    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@e8
    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    #@eb
    move-result v7

    #@ec
    if-eqz v7, :cond_3

    #@ee
    .line 465
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@f0
    const/4 v9, 0x1

    #@f1
    iput-boolean v9, v7, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    #@f3
    .line 467
    :cond_3
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@f5
    iget-boolean v7, v7, Landroid/view/inputmethod/InputMethodManager;->mActive:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@f7
    if-eqz v7, :cond_4

    #@f9
    .line 468
    const/4 v6, 0x1

    #@fa
    :cond_4
    monitor-exit v8

    #@fb
    .line 472
    if-eqz v6, :cond_5

    #@fd
    .line 473
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@ff
    invoke-virtual {v7, v11, v10, v10, v10}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    #@102
    .line 475
    :cond_5
    return-void

    #@103
    .line 448
    :catchall_2
    move-exception v7

    #@104
    monitor-exit v8

    #@105
    throw v7

    #@106
    .line 478
    .end local v5    # "sequence":I
    .end local v6    # "startInput":Z
    :pswitch_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@108
    if-eqz v7, :cond_8

    #@10a
    const/4 v0, 0x1

    #@10b
    .line 482
    .local v0, "active":Z
    :goto_2
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@10d
    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@10f
    monitor-enter v8

    #@110
    .line 483
    :try_start_5
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@112
    iput-boolean v0, v7, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    #@114
    .line 484
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@116
    const/4 v9, 0x0

    #@117
    iput-boolean v9, v7, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    #@119
    .line 485
    if-nez v0, :cond_6

    #@11b
    .line 489
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@11d
    const/4 v9, 0x1

    #@11e
    iput-boolean v9, v7, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@120
    .line 493
    :try_start_6
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@122
    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@124
    invoke-interface {v7}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@127
    .line 499
    :cond_6
    :goto_3
    :try_start_7
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@129
    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@12b
    if-eqz v7, :cond_7

    #@12d
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@12f
    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@131
    invoke-virtual {v7}, Landroid/view/View;->hasWindowFocus()Z

    #@134
    move-result v7

    #@135
    if-eqz v7, :cond_7

    #@137
    .line 505
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@139
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@13b
    iget-boolean v9, v9, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    #@13d
    const/4 v10, 0x0

    #@13e
    invoke-static {v7, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->-wrap0(Landroid/view/inputmethod/InputMethodManager;ZZ)Z

    #@141
    move-result v7

    #@142
    if-eqz v7, :cond_7

    #@144
    .line 506
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@146
    const/4 v9, 0x0

    #@147
    const/4 v10, 0x0

    #@148
    const/4 v11, 0x0

    #@149
    const/4 v12, 0x0

    #@14a
    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@14d
    :cond_7
    monitor-exit v8

    #@14e
    .line 510
    return-void

    #@14f
    .line 478
    .end local v0    # "active":Z
    :cond_8
    const/4 v0, 0x0

    #@150
    .restart local v0    # "active":Z
    goto :goto_2

    #@151
    .line 482
    :catchall_3
    move-exception v7

    #@152
    monitor-exit v8

    #@153
    throw v7

    #@154
    .line 513
    .end local v0    # "active":Z
    :pswitch_5
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@156
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@158
    check-cast v7, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    #@15a
    invoke-virtual {v8, v7}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    #@15d
    .line 514
    return-void

    #@15e
    .line 517
    :pswitch_6
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@160
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@162
    invoke-virtual {v7, v8, v10, v9}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    #@165
    .line 518
    return-void

    #@166
    .line 521
    :pswitch_7
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@168
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@16a
    invoke-virtual {v7, v8, v10, v10}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    #@16d
    .line 522
    return-void

    #@16e
    .line 525
    :pswitch_8
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@170
    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@172
    monitor-enter v8

    #@173
    .line 526
    :try_start_8
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@175
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@177
    invoke-static {v7, v9}, Landroid/view/inputmethod/InputMethodManager;->-set0(Landroid/view/inputmethod/InputMethodManager;I)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    #@17a
    monitor-exit v8

    #@17b
    goto/16 :goto_0

    #@17d
    .line 525
    :catchall_4
    move-exception v7

    #@17e
    monitor-exit v8

    #@17f
    throw v7

    #@180
    .line 494
    .restart local v0    # "active":Z
    :catch_1
    move-exception v2

    #@181
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_3

    #@182
    .line 401
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
