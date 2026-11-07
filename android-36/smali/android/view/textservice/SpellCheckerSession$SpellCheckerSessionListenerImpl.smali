.class final Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
.super Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpellCheckerSessionListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    }
.end annotation


# static fields
.field private static final greylist-max-o STATE_CLOSED_AFTER_CONNECTION:I = 0x2

.field private static final greylist-max-o STATE_CLOSED_BEFORE_CONNECTION:I = 0x3

.field private static final greylist-max-o STATE_CONNECTED:I = 0x1

.field private static final greylist-max-o STATE_WAIT_CONNECTION:I = 0x0

.field private static final greylist-max-o TASK_CANCEL:I = 0x1

.field private static final greylist-max-o TASK_CLOSE:I = 0x3

.field private static final greylist-max-o TASK_GET_SUGGESTIONS_MULTIPLE:I = 0x2

.field private static final greylist-max-o TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE:I = 0x4


# instance fields
.field private greylist-max-o mAsyncHandler:Landroid/os/Handler;

.field private greylist-max-o mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

.field private final greylist-max-o mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private greylist-max-o mState:I

.field private greylist-max-o mThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mprocessTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/textservice/SpellCheckerSession;)V
    .registers 3
    .param p1, "spellCheckerSession"    # Landroid/view/textservice/SpellCheckerSession;

    .line 271
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;-><init>()V

    .line 248
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    .line 272
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 273
    return-void
.end method

.method private blacklist getSpellCheckerSession()Landroid/view/textservice/SpellCheckerSession;
    .registers 2

    .line 526
    monitor-enter p0

    .line 527
    :try_start_1
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    monitor-exit p0

    return-object v0

    .line 528
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method private greylist-max-o processCloseLocked()V
    .registers 4

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    .line 357
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_c

    .line 358
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 360
    :cond_c
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 361
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 362
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    .line 363
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    .line 364
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    packed-switch v0, :pswitch_data_46

    .line 372
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCloseLocked is called unexpectedly. mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    .line 373
    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 369
    :pswitch_3d
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    .line 370
    goto :goto_45

    .line 366
    :pswitch_41
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    .line 367
    nop

    .line 376
    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3d
    .end packed-switch
.end method

.method private greylist-max-o processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V
    .registers 6
    .param p1, "scp"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    .line 455
    monitor-enter p0

    .line 456
    :try_start_1
    iget v0, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    if-ne v0, v1, :cond_11

    .line 460
    :cond_f
    monitor-exit p0

    return-void

    .line 462
    :cond_11
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    const/4 v2, 0x1

    if-eqz v0, :cond_4c

    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    if-eq v0, v2, :cond_4c

    .line 463
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring processOrEnqueueTask due to unexpected mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    .line 464
    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scp.mWhat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    .line 465
    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->taskToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit p0

    return-void

    .line 469
    :cond_4c
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    if-nez v0, :cond_82

    .line 471
    iget v0, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-ne v0, v1, :cond_59

    .line 472
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processCloseLocked()V

    .line 473
    monitor-exit p0

    return-void

    .line 476
    :cond_59
    const/4 v0, 0x0

    .line 477
    .local v0, "closeTask":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    iget v3, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-ne v3, v2, :cond_74

    .line 479
    :goto_5e
    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_74

    .line 480
    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    .line 481
    .local v2, "tmp":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    iget v3, v2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-ne v3, v1, :cond_73

    .line 484
    move-object v0, v2

    .line 486
    .end local v2    # "tmp":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    :cond_73
    goto :goto_5e

    .line 488
    :cond_74
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 489
    if-eqz v0, :cond_80

    .line 490
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 495
    :cond_80
    monitor-exit p0

    return-void

    .line 498
    .end local v0    # "closeTask":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    :cond_82
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    .line 499
    .local v0, "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_1 .. :try_end_85} :catchall_8a

    .line 501
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    .line 502
    return-void

    .line 499
    .end local v0    # "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    :catchall_8a
    move-exception v0

    :try_start_8b
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v0
.end method

.method private greylist-max-o processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .registers 8
    .param p1, "session"    # Lcom/android/internal/textservice/ISpellCheckerSession;
    .param p2, "scp"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    .param p3, "async"    # Z

    .line 301
    if-nez p3, :cond_17

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    if-nez v0, :cond_7

    goto :goto_17

    .line 337
    :cond_7
    iput-object p1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    .line 338
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_aa

    .line 302
    :cond_17
    :goto_17
    iget v0, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    packed-switch v0, :pswitch_data_ba

    goto/16 :goto_a9

    .line 320
    :pswitch_1e
    :try_start_1e
    iget-object v0, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    invoke-interface {p1, v0, v1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_27

    .line 324
    goto/16 :goto_a9

    .line 322
    :catch_27
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get suggestions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_a9

    .line 328
    :pswitch_43
    :try_start_43
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onClose()V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_46} :catch_47

    .line 331
    goto :goto_a9

    .line 329
    :catch_47
    move-exception v0

    .line 330
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_63
    :try_start_63
    iget-object v0, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    iget-boolean v2, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSequentialWords:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/textservice/ISpellCheckerSession;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6c} :catch_6d

    .line 316
    goto :goto_a9

    .line 314
    :catch_6d
    move-exception v0

    .line 315
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get suggestions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_a9

    .line 305
    :pswitch_89
    :try_start_89
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onCancel()V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 308
    goto :goto_a9

    .line 306
    :catch_8d
    move-exception v0

    .line 307
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cancel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    nop

    .line 332
    :goto_a9
    nop

    .line 341
    :goto_aa
    iget v0, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b8

    .line 344
    monitor-enter p0

    .line 345
    :try_start_b0
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processCloseLocked()V

    .line 346
    monitor-exit p0

    goto :goto_b8

    :catchall_b5
    move-exception v0

    monitor-exit p0
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_b5

    throw v0

    .line 348
    :cond_b8
    :goto_b8
    return-void

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_89
        :pswitch_63
        :pswitch_43
        :pswitch_1e
    .end packed-switch
.end method

.method private static greylist-max-o stateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 257
    packed-switch p0, :pswitch_data_24

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_17
    const-string v0, "STATE_CLOSED_BEFORE_CONNECTION"

    return-object v0

    .line 260
    :pswitch_1a
    const-string v0, "STATE_CLOSED_AFTER_CONNECTION"

    return-object v0

    .line 259
    :pswitch_1d
    const-string v0, "STATE_CONNECTED"

    return-object v0

    .line 258
    :pswitch_20
    const-string v0, "STATE_WAIT_CONNECTION"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private static greylist-max-o taskToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "task"    # I

    .line 234
    packed-switch p0, :pswitch_data_24

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 242
    :pswitch_17
    const-string v0, "TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE"

    return-object v0

    .line 240
    :pswitch_1a
    const-string v0, "TASK_CLOSE"

    return-object v0

    .line 238
    :pswitch_1d
    const-string v0, "TASK_GET_SUGGESTIONS_MULTIPLE"

    return-object v0

    .line 236
    :pswitch_20
    const-string v0, "TASK_CANCEL"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .registers 5

    .line 427
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    .line 428
    return-void
.end method

.method public greylist-max-o close()V
    .registers 5

    .line 444
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    .line 445
    return-void
.end method

.method public greylist-max-o getSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .registers 6
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    .line 438
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    .line 441
    return-void
.end method

.method public greylist-max-o getSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .registers 6
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z

    .line 432
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    .line 435
    return-void
.end method

.method public greylist-max-o isDisconnected()Z
    .registers 3

    .line 448
    monitor-enter p0

    .line 449
    :try_start_1
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    monitor-exit p0

    return v1

    .line 450
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public greylist-max-o onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 3
    .param p1, "results"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 517
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSpellCheckerSession()Landroid/view/textservice/SpellCheckerSession;

    move-result-object v0

    .line 518
    .local v0, "session":Landroid/view/textservice/SpellCheckerSession;
    if-eqz v0, :cond_9

    .line 520
    invoke-virtual {v0, p1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    .line 522
    :cond_9
    return-void
.end method

.method public greylist-max-o onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .registers 3
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;

    .line 507
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSpellCheckerSession()Landroid/view/textservice/SpellCheckerSession;

    move-result-object v0

    .line 508
    .local v0, "session":Landroid/view/textservice/SpellCheckerSession;
    if-eqz v0, :cond_9

    .line 510
    invoke-virtual {v0, p1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V

    .line 512
    :cond_9
    return-void
.end method

.method public greylist-max-o onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .registers 5
    .param p1, "session"    # Lcom/android/internal/textservice/ISpellCheckerSession;

    .line 379
    monitor-enter p0

    .line 380
    :try_start_1
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    sparse-switch v0, :sswitch_data_82

    .line 391
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    goto :goto_60

    .line 389
    :sswitch_b
    monitor-exit p0

    return-void

    .line 383
    :sswitch_d
    nop

    .line 395
    if-nez p1, :cond_1b

    .line 396
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignoring onServiceConnected due to session=null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    monitor-exit p0

    return-void

    .line 399
    :cond_1b
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    .line 400
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_46

    .line 404
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SpellCheckerSession"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    .line 406
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 407
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;-><init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    .line 414
    :cond_46
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    .line 420
    :goto_49
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 421
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    goto :goto_49

    .line 423
    :cond_5e
    monitor-exit p0

    .line 424
    return-void

    .line 391
    :goto_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring onServiceConnected due to unexpected mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    .line 392
    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    monitor-exit p0

    return-void

    .line 423
    :catchall_7e
    move-exception v0

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_1 .. :try_end_80} :catchall_7e

    throw v0

    nop

    :sswitch_data_82
    .sparse-switch
        0x0 -> :sswitch_d
        0x3 -> :sswitch_b
    .end sparse-switch
.end method
