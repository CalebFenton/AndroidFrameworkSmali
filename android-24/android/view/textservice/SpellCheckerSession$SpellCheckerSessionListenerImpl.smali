.class Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
.super Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpellCheckerSessionListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED_AFTER_CONNECTION:I = 0x2

.field private static final STATE_CLOSED_BEFORE_CONNECTION:I = 0x3

.field private static final STATE_CONNECTED:I = 0x1

.field private static final STATE_WAIT_CONNECTION:I = 0x0

.field private static final TASK_CANCEL:I = 0x1

.field private static final TASK_CLOSE:I = 0x3

.field private static final TASK_GET_SUGGESTIONS_MULTIPLE:I = 0x2

.field private static final TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE:I = 0x4


# instance fields
.field private mAsyncHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

.field private final mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -wrap0(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .locals 0
    .param p1, "session"    # Lcom/android/internal/textservice/ISpellCheckerSession;
    .param p2, "scp"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    .param p3, "async"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;-><init>()V

    #@3
    .line 241
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    #@a
    .line 257
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    #@d
    .line 264
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    #@f
    .line 263
    return-void
.end method

.method private processCloseLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 347
    iput-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    #@3
    .line 348
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 349
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    #@9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    #@c
    .line 351
    :cond_0
    iput-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    #@e
    .line 352
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    #@10
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    #@13
    .line 353
    iput-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    #@15
    .line 354
    iput-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    #@17
    .line 355
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    #@19
    packed-switch v0, :pswitch_data_0

    #@1c
    .line 363
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-get0()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "processCloseLocked is called unexpectedly. mState="

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 364
    iget v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    #@2e
    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->stateToString(I)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 342
    :goto_0
    return-void

    #@3e
    .line 357
    :pswitch_0
    const/4 v0, 0x3

    #@3f
    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    #@41
    goto :goto_0

    #@42
    .line 360
    :pswitch_1
    const/4 v0, 0x2

    #@43
    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    #@45
    goto :goto_0

    #@46
    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V
    .locals 7
    .param p1, "scp"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 446
    monitor-enter p0

    #@4
    .line 447
    :try_start_0
    iget v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    #@6
    if-eqz v3, :cond_0

    #@8
    iget v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    #@a
    if-eq v3, v5, :cond_0

    #@c
    .line 448
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-get0()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "ignoring processOrEnqueueTask due to unexpected mState="

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    .line 449
    iget v5, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    #@1e
    invoke-static {v5}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->taskToString(I)Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    .line 448
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 450
    const-string/jumbo v5, " scp.mWhat="

    #@29
    .line 448
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 450
    iget v5, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    #@2f
    invoke-static {v5}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->taskToString(I)Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    .line 448
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    monitor-exit p0

    #@3f
    .line 451
    return-void

    #@40
    .line 454
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    #@42
    if-nez v3, :cond_5

    #@44
    .line 456
    iget v3, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    #@46
    if-ne v3, v6, :cond_1

    #@48
    .line 457
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processCloseLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    monitor-exit p0

    #@4c
    .line 458
    return-void

    #@4d
    .line 461
    :cond_1
    const/4 v0, 0x0

    #@4e
    .line 462
    .local v0, "closeTask":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    :try_start_2
    iget v3, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    #@50
    if-ne v3, v5, :cond_3

    #@52
    .line 464
    .end local v0    # "closeTask":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    #@54
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    #@57
    move-result v3

    #@58
    if-nez v3, :cond_3

    #@5a
    .line 465
    iget-object v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    #@5c
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@5f
    move-result-object v2

    #@60
    check-cast v2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    #@62
    .line 466
    .local v2, "tmp":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    iget v3, v2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    #@64
    if-ne v3, v6, :cond_2

    #@66
    .line 469
    move-object v0, v2

    #@67
    .local v0, "closeTask":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    goto :goto_0

    #@68
    .line 473
    .end local v0    # "closeTask":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    .end local v2    # "tmp":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    :cond_3
    iget-object v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    #@6a
    invoke-interface {v3, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    #@6d
    .line 474
    if-eqz v0, :cond_4

    #@6f
    .line 475
    iget-object v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    #@71
    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@74
    :cond_4
    monitor-exit p0

    #@75
    .line 480
    return-void

    #@76
    .line 483
    :cond_5
    :try_start_3
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@78
    .local v1, "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    monitor-exit p0

    #@79
    .line 486
    invoke-direct {p0, v1, p1, v4}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    #@7c
    .line 444
    return-void

    #@7d
    .line 446
    .end local v1    # "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    :catchall_0
    move-exception v3

    #@7e
    monitor-exit p0

    #@7f
    throw v3
.end method

.method private processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .locals 4
    .param p1, "session"    # Lcom/android/internal/textservice/ISpellCheckerSession;
    .param p2, "scp"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    .param p3, "async"    # Z

    #@0
    .prologue
    .line 293
    if-nez p3, :cond_0

    #@2
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    #@4
    if-nez v1, :cond_2

    #@6
    .line 294
    :cond_0
    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    #@8
    packed-switch v1, :pswitch_data_0

    #@b
    .line 333
    :goto_0
    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    #@d
    const/4 v2, 0x3

    #@e
    if-ne v1, v2, :cond_1

    #@10
    .line 336
    monitor-enter p0

    #@11
    .line 337
    :try_start_0
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processCloseLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 283
    :cond_1
    return-void

    #@16
    .line 297
    :pswitch_0
    :try_start_1
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onCancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@19
    goto :goto_0

    #@1a
    .line 298
    :catch_0
    move-exception v0

    #@1b
    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-get0()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Failed to cancel "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    goto :goto_0

    #@37
    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    iget-object v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    #@39
    .line 305
    iget v2, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    #@3b
    iget-boolean v3, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSequentialWords:Z

    #@3d
    .line 304
    invoke-interface {p1, v1, v2, v3}, Lcom/android/internal/textservice/ISpellCheckerSession;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@40
    goto :goto_0

    #@41
    .line 306
    :catch_1
    move-exception v0

    #@42
    .line 307
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-get0()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    new-instance v2, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v3, "Failed to get suggestions "

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    goto :goto_0

    #@5e
    .line 313
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_2
    :try_start_3
    iget-object v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    #@60
    iget v2, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    #@62
    .line 312
    invoke-interface {p1, v1, v2}, Lcom/android/internal/textservice/ISpellCheckerSession;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@65
    goto :goto_0

    #@66
    .line 314
    :catch_2
    move-exception v0

    #@67
    .line 315
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-get0()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    new-instance v2, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v3, "Failed to get suggestions "

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    goto :goto_0

    #@83
    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_3
    :try_start_4
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onClose()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    #@86
    goto :goto_0

    #@87
    .line 321
    :catch_3
    move-exception v0

    #@88
    .line 322
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-get0()Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    new-instance v2, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v3, "Failed to close "

    #@94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v2

    #@98
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    goto/16 :goto_0

    #@a5
    .line 329
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iput-object p1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    #@a7
    .line 330
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    #@a9
    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    #@ab
    const/4 v3, 0x1

    #@ac
    invoke-static {v2, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@af
    move-result-object v2

    #@b0
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@b3
    goto/16 :goto_0

    #@b5
    .line 336
    :catchall_0
    move-exception v1

    #@b6
    monitor-exit p0

    #@b7
    throw v1

    #@b8
    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    #@0
    .prologue
    .line 249
    packed-switch p0, :pswitch_data_0

    #@3
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "Unexpected state="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 250
    :pswitch_0
    const-string/jumbo v0, "STATE_WAIT_CONNECTION"

    #@1b
    return-object v0

    #@1c
    .line 251
    :pswitch_1
    const-string/jumbo v0, "STATE_CONNECTED"

    #@1f
    return-object v0

    #@20
    .line 252
    :pswitch_2
    const-string/jumbo v0, "STATE_CLOSED_AFTER_CONNECTION"

    #@23
    return-object v0

    #@24
    .line 253
    :pswitch_3
    const-string/jumbo v0, "STATE_CLOSED_BEFORE_CONNECTION"

    #@27
    return-object v0

    #@28
    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static taskToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "task"    # I

    #@0
    .prologue
    .line 227
    packed-switch p0, :pswitch_data_0

    #@3
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "Unexpected task="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 229
    :pswitch_0
    const-string/jumbo v0, "TASK_CANCEL"

    #@1b
    return-object v0

    #@1c
    .line 231
    :pswitch_1
    const-string/jumbo v0, "TASK_GET_SUGGESTIONS_MULTIPLE"

    #@1f
    return-object v0

    #@20
    .line 233
    :pswitch_2
    const-string/jumbo v0, "TASK_CLOSE"

    #@23
    return-object v0

    #@24
    .line 235
    :pswitch_3
    const-string/jumbo v0, "TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE"

    #@27
    return-object v0

    #@28
    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 418
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    #@3
    const/4 v1, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    #@8
    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    #@b
    .line 417
    return-void
.end method

.method public close()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 435
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    #@3
    const/4 v1, 0x3

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    #@8
    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    #@b
    .line 434
    return-void
.end method

.method public getSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .locals 3
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    #@0
    .prologue
    .line 430
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    #@2
    const/4 v1, 0x4

    #@3
    .line 431
    const/4 v2, 0x0

    #@4
    .line 430
    invoke-direct {v0, v1, p1, p2, v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    #@7
    .line 429
    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    #@a
    .line 428
    return-void
.end method

.method public getSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .locals 2
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z

    #@0
    .prologue
    .line 424
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-direct {v0, v1, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    #@6
    .line 423
    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    #@9
    .line 422
    return-void
.end method

.method public isDisconnected()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 439
    monitor-enter p0

    #@2
    .line 440
    :try_start_0
    iget v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-eq v1, v0, :cond_0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0

    #@a
    .line 439
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 3
    .param p1, "results"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    #@0
    .prologue
    .line 501
    monitor-enter p0

    #@1
    .line 502
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 503
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    #@7
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    #@9
    .line 504
    const/4 v2, 0x2

    #@a
    .line 503
    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 500
    return-void

    #@13
    .line 501
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 3
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;

    #@0
    .prologue
    .line 491
    monitor-enter p0

    #@1
    .line 492
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 493
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    #@7
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    #@9
    .line 494
    const/4 v2, 0x1

    #@a
    .line 493
    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 490
    return-void

    #@13
    .line 491
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public declared-synchronized onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .locals 3
    .param p1, "session"    # Lcom/android/internal/textservice/ISpellCheckerSession;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 370
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2
    .line 371
    :try_start_1
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 382
    :pswitch_0
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-get0()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "ignoring onServiceConnected due to unexpected mState="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 383
    iget v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    #@19
    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->stateToString(I)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@28
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    .line 384
    return-void

    #@2b
    :pswitch_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    .line 380
    return-void

    #@2e
    .line 386
    :pswitch_2
    if-nez p1, :cond_0

    #@30
    .line 387
    :try_start_4
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-get0()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    const-string/jumbo v1, "ignoring onServiceConnected due to session=null"

    #@37
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3a
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@3b
    monitor-exit p0

    #@3c
    .line 388
    return-void

    #@3d
    .line 390
    :cond_0
    :try_start_6
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    #@3f
    .line 391
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->asBinder()Landroid/os/IBinder;

    #@42
    move-result-object v0

    #@43
    instance-of v0, v0, Landroid/os/Binder;

    #@45
    if-eqz v0, :cond_1

    #@47
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    #@49
    if-nez v0, :cond_1

    #@4b
    .line 395
    new-instance v0, Landroid/os/HandlerThread;

    #@4d
    const-string/jumbo v1, "SpellCheckerSession"

    #@50
    .line 396
    const/16 v2, 0xa

    #@52
    .line 395
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@55
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    #@57
    .line 397
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    #@59
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@5c
    .line 398
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;

    #@5e
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    #@60
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@63
    move-result-object v1

    #@64
    invoke-direct {v0, p0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;-><init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Landroid/os/Looper;)V

    #@67
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    #@69
    .line 405
    :cond_1
    const/4 v0, 0x1

    #@6a
    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@6c
    :try_start_7
    monitor-exit p0

    #@6d
    .line 412
    :goto_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    #@6f
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    #@72
    move-result v0

    #@73
    if-nez v0, :cond_2

    #@75
    .line 413
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    #@77
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@7a
    move-result-object v0

    #@7b
    check-cast v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    #@7d
    const/4 v1, 0x0

    #@7e
    invoke-direct {p0, p1, v0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@81
    goto :goto_0

    #@82
    :catchall_0
    move-exception v0

    #@83
    monitor-exit p0

    #@84
    throw v0

    #@85
    .line 370
    :catchall_1
    move-exception v0

    #@86
    :try_start_8
    monitor-exit p0

    #@87
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@88
    :cond_2
    monitor-exit p0

    #@89
    .line 369
    return-void

    #@8a
    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
