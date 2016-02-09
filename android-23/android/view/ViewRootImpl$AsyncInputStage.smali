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
.field protected static final DEFER:I = 0x3


# instance fields
.field private mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueueLength:I

.field private mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final mTraceCounter:Ljava/lang/String;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3764
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2
    .line 3765
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    #@5
    .line 3766
    iput-object p3, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    #@7
    .line 3764
    return-void
.end method

.method private dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "prev"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3862
    if-nez p2, :cond_1

    #@3
    .line 3863
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@5
    iput-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@7
    .line 3867
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@9
    if-ne v0, p1, :cond_0

    #@b
    .line 3868
    iput-object p2, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@d
    .line 3870
    :cond_0
    iput-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@f
    .line 3872
    iget v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    iput v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    #@15
    .line 3873
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    #@17
    iget v1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    #@19
    const-wide/16 v2, 0x4

    #@1b
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    #@1e
    .line 3861
    return-void

    #@1f
    .line 3865
    :cond_1
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@21
    iput-object v0, p2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@23
    goto :goto_0
.end method

.method private enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 3849
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3850
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@6
    .line 3851
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@8
    .line 3857
    :goto_0
    iget v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    iput v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    #@e
    .line 3858
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    #@10
    iget v1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    #@12
    const-wide/16 v2, 0x4

    #@14
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    #@17
    .line 3848
    return-void

    #@18
    .line 3853
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@1a
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@1c
    .line 3854
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@1e
    goto :goto_0
.end method


# virtual methods
.method protected apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "result"    # I

    #@0
    .prologue
    .line 3841
    const/4 v0, 0x3

    #@1
    if-ne p2, v0, :cond_0

    #@3
    .line 3842
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->defer(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@6
    .line 3840
    :goto_0
    return-void

    #@7
    .line 3844
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V

    #@a
    goto :goto_0
.end method

.method protected defer(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 3775
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@2
    or-int/lit8 v0, v0, 0x2

    #@4
    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@6
    .line 3776
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@9
    .line 3774
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 3878
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 3879
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AsyncInputStage;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 3880
    const-string/jumbo v0, ": mQueueLength="

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    .line 3881
    iget v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@19
    .line 3883
    invoke-super {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@1c
    .line 3877
    return-void
.end method

.method protected forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 3782
    iget v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@2
    and-int/lit8 v5, v5, -0x3

    #@4
    iput v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@6
    .line 3785
    iget-object v1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@8
    .line 3786
    .local v1, "curr":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v1, :cond_0

    #@a
    .line 3787
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@d
    .line 3788
    return-void

    #@e
    .line 3794
    :cond_0
    iget-object v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@10
    invoke-virtual {v5}, Landroid/view/InputEvent;->getDeviceId()I

    #@13
    move-result v2

    #@14
    .line 3795
    .local v2, "deviceId":I
    const/4 v4, 0x0

    #@15
    .line 3796
    .local v4, "prev":Landroid/view/ViewRootImpl$QueuedInputEvent;
    const/4 v0, 0x0

    #@16
    .line 3797
    .end local v4    # "prev":Landroid/view/ViewRootImpl$QueuedInputEvent;
    .local v0, "blocked":Z
    :goto_0
    if-eqz v1, :cond_2

    #@18
    if-eq v1, p1, :cond_2

    #@1a
    .line 3798
    if-nez v0, :cond_1

    #@1c
    iget-object v5, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@1e
    invoke-virtual {v5}, Landroid/view/InputEvent;->getDeviceId()I

    #@21
    move-result v5

    #@22
    if-ne v2, v5, :cond_1

    #@24
    .line 3799
    const/4 v0, 0x1

    #@25
    .line 3801
    :cond_1
    move-object v4, v1

    #@26
    .line 3802
    .local v4, "prev":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v1, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@28
    goto :goto_0

    #@29
    .line 3808
    .end local v4    # "prev":Landroid/view/ViewRootImpl$QueuedInputEvent;
    :cond_2
    if-eqz v0, :cond_4

    #@2b
    .line 3809
    if-nez v1, :cond_3

    #@2d
    .line 3810
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@30
    .line 3812
    :cond_3
    return-void

    #@31
    .line 3816
    :cond_4
    if-eqz v1, :cond_5

    #@33
    .line 3817
    iget-object v1, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@35
    .line 3818
    invoke-direct {p0, p1, v4}, Landroid/view/ViewRootImpl$AsyncInputStage;->dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@38
    .line 3820
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@3b
    .line 3823
    :goto_1
    if-eqz v1, :cond_6

    #@3d
    .line 3824
    iget-object v5, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@3f
    invoke-virtual {v5}, Landroid/view/InputEvent;->getDeviceId()I

    #@42
    move-result v5

    #@43
    if-ne v2, v5, :cond_8

    #@45
    .line 3825
    iget v5, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@47
    and-int/lit8 v5, v5, 0x2

    #@49
    if-eqz v5, :cond_7

    #@4b
    .line 3780
    :cond_6
    return-void

    #@4c
    .line 3828
    :cond_7
    iget-object v3, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@4e
    .line 3829
    .local v3, "next":Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-direct {p0, v1, v4}, Landroid/view/ViewRootImpl$AsyncInputStage;->dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@51
    .line 3830
    invoke-super {p0, v1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@54
    .line 3831
    move-object v1, v3

    #@55
    goto :goto_1

    #@56
    .line 3833
    .end local v3    # "next":Landroid/view/ViewRootImpl$QueuedInputEvent;
    :cond_8
    move-object v4, v1

    #@57
    .line 3834
    .restart local v4    # "prev":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v1, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@59
    goto :goto_1
.end method
