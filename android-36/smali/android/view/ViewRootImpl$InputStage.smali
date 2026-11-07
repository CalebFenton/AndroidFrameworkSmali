.class abstract Landroid/view/ViewRootImpl$InputStage;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "InputStage"
.end annotation


# static fields
.field protected static final greylist-max-o FINISH_HANDLED:I = 0x1

.field protected static final greylist-max-o FINISH_NOT_HANDLED:I = 0x2

.field protected static final greylist-max-o FORWARD:I


# instance fields
.field private final greylist-max-o mNext:Landroid/view/ViewRootImpl$InputStage;

.field private blacklist mTracePrefix:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 7353
    iput-object p1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7354
    iput-object p2, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    .line 7355
    return-void
.end method

.method private blacklist traceEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;J)V
    .registers 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "traceTag"    # J

    .line 7499
    invoke-static {p2, p3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 7500
    return-void

    .line 7503
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mTracePrefix:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 7504
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mTracePrefix:Ljava/lang/String;

    .line 7506
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl$InputStage;->mTracePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7507
    invoke-virtual {v1}, Landroid/view/InputEvent;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7506
    invoke-static {p2, p3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7508
    return-void
.end method


# virtual methods
.method protected greylist-max-o apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V
    .registers 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "result"    # I

    .line 7399
    if-nez p2, :cond_6

    .line 7400
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_14

    .line 7401
    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_d

    .line 7402
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_14

    .line 7403
    :cond_d
    const/4 v0, 0x2

    if-ne p2, v0, :cond_15

    .line 7404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 7408
    :goto_14
    return-void

    .line 7406
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7361
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    .line 7362
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_25

    .line 7363
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7364
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_25

    .line 7366
    :cond_15
    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewRootImpl$InputStage;->traceEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;J)V

    .line 7369
    :try_start_1a
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v2
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_26

    .line 7371
    .local v2, "result":I
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7372
    nop

    .line 7373
    invoke-virtual {p0, p1, v2}, Landroid/view/ViewRootImpl$InputStage;->apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V

    .line 7375
    .end local v2    # "result":I
    :goto_25
    return-void

    .line 7371
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7372
    throw v2
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 7485
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_9

    .line 7486
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7488
    :cond_9
    return-void
.end method

.method protected greylist-max-o finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V
    .registers 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "handled"    # Z

    .line 7381
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 7382
    if-eqz p2, :cond_e

    .line 7383
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 7385
    :cond_e
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7386
    return-void
.end method

.method protected greylist-max-o forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7392
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7393
    return-void
.end method

.method greylist-max-o isBack(Landroid/view/InputEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 7491
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 7492
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    .line 7494
    :cond_11
    return v1
.end method

.method protected greylist-max-o onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7425
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_a

    .line 7426
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_f

    .line 7428
    :cond_a
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mfinishInputEvent(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7430
    :goto_f
    return-void
.end method

.method protected greylist-max-o onDetachedFromWindow()V
    .registers 2

    .line 7439
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_9

    .line 7440
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$InputStage;->onDetachedFromWindow()V

    .line 7442
    :cond_9
    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7415
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .line 7433
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_9

    .line 7434
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->onWindowFocusChanged(Z)V

    .line 7436
    :cond_9
    return-void
.end method

.method protected greylist-max-o shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z
    .registers 8
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7445
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_bd

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v0, :cond_f

    goto/16 :goto_bd

    .line 7453
    :cond_f
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    const/4 v2, 0x0

    if-nez v0, :cond_34

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$InputStage;->isBack(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7454
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 7455
    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$misAutofillUiShowing(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 7459
    const-string v0, "no window focus"

    .local v0, "reason":Ljava/lang/String;
    goto :goto_5f

    .line 7460
    .end local v0    # "reason":Ljava/lang/String;
    :cond_34
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v0, :cond_3e

    .line 7461
    const-string/jumbo v0, "window is stopped"

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_5f

    .line 7462
    .end local v0    # "reason":Ljava/lang/String;
    :cond_3e
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    if-eqz v0, :cond_4f

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7463
    invoke-virtual {v0, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 7464
    const-string v0, "non-button event in ambient mode"

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_5f

    .line 7465
    .end local v0    # "reason":Ljava/lang/String;
    :cond_4f
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v0, :cond_bc

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$InputStage;->isBack(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 7466
    const-string v0, "paused for transition"

    .line 7472
    .restart local v0    # "reason":Ljava/lang/String;
    :goto_5f
    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    move-result v3

    const-string v4, "):"

    if-eqz v3, :cond_95

    .line 7474
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->cancel()V

    .line 7475
    iget-object v1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelling event ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7476
    return v2

    .line 7480
    :cond_95
    iget-object v2, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping event ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7481
    return v1

    .line 7469
    .end local v0    # "reason":Ljava/lang/String;
    :cond_bc
    return v2

    .line 7446
    :cond_bd
    :goto_bd
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping event due to root view being removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7447
    return v1
.end method
