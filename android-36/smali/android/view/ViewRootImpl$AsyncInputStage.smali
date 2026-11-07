.class abstract Landroid/view/ViewRootImpl$AsyncInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AsyncInputStage"
.end annotation


# static fields
.field protected static final greylist-max-o DEFER:I = 0x3


# instance fields
.field private greylist-max-o mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private greylist-max-o mQueueLength:I

.field private greylist-max-o mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final greylist-max-o mTraceCounter:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 7536
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 7537
    iput-object p3, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    .line 7538
    return-void
.end method

.method private greylist-max-o dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 7
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "prev"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7633
    if-nez p2, :cond_7

    .line 7634
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_b

    .line 7636
    :cond_7
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7638
    :goto_b
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-ne v0, p1, :cond_11

    .line 7639
    iput-object p2, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7641
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7643
    iget v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    .line 7644
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    iget v1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    const-wide/16 v2, 0x4

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 7645
    return-void
.end method

.method private greylist-max-o enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7620
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v0, :cond_9

    .line 7621
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7622
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_f

    .line 7624
    :cond_9
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7625
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7628
    :goto_f
    iget v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    .line 7629
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    iget v1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    const-wide/16 v2, 0x4

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 7630
    return-void
.end method


# virtual methods
.method protected greylist-max-o apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V
    .registers 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "result"    # I

    .line 7612
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    .line 7613
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->defer(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_a

    .line 7615
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V

    .line 7617
    :goto_a
    return-void
.end method

.method protected greylist-max-o defer(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7546
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 7547
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7548
    return-void
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 7649
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7650
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7651
    const-string v0, ": mQueueLength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7652
    iget v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7654
    invoke-super {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7655
    return-void
.end method

.method protected greylist-max-o forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 7
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7553
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 7556
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7557
    .local v0, "curr":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v0, :cond_e

    .line 7558
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7559
    return-void

    .line 7565
    :cond_e
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v1

    .line 7566
    .local v1, "deviceId":I
    const/4 v2, 0x0

    .line 7567
    .local v2, "prev":Landroid/view/ViewRootImpl$QueuedInputEvent;
    const/4 v3, 0x0

    .line 7568
    .local v3, "blocked":Z
    :goto_16
    if-eqz v0, :cond_29

    if-eq v0, p1, :cond_29

    .line 7569
    if-nez v3, :cond_25

    iget-object v4, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v4

    if-ne v1, v4, :cond_25

    .line 7570
    const/4 v3, 0x1

    .line 7572
    :cond_25
    move-object v2, v0

    .line 7573
    iget-object v0, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_16

    .line 7579
    :cond_29
    if-eqz v3, :cond_31

    .line 7580
    if-nez v0, :cond_30

    .line 7581
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7583
    :cond_30
    return-void

    .line 7587
    :cond_31
    if-eqz v0, :cond_38

    .line 7588
    iget-object v0, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7589
    invoke-direct {p0, p1, v2}, Landroid/view/ViewRootImpl$AsyncInputStage;->dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7591
    :cond_38
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7594
    :goto_3b
    if-eqz v0, :cond_5a

    .line 7595
    iget-object v4, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v4

    if-ne v1, v4, :cond_56

    .line 7596
    iget v4, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4c

    .line 7597
    goto :goto_5a

    .line 7599
    :cond_4c
    iget-object v4, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7600
    .local v4, "next":Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl$AsyncInputStage;->dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7601
    invoke-super {p0, v0}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7602
    move-object v0, v4

    .line 7603
    .end local v4    # "next":Landroid/view/ViewRootImpl$QueuedInputEvent;
    goto :goto_3b

    .line 7604
    :cond_56
    move-object v2, v0

    .line 7605
    iget-object v0, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_3b

    .line 7608
    :cond_5a
    :goto_5a
    return-void
.end method
