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
.field protected static final FINISH_HANDLED:I = 0x1

.field protected static final FINISH_NOT_HANDLED:I = 0x2

.field protected static final FORWARD:I


# instance fields
.field private final mNext:Landroid/view/ViewRootImpl$InputStage;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    #@0
    .prologue
    .line 3629
    iput-object p1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3630
    iput-object p2, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    #@7
    .line 3629
    return-void
.end method

.method private isBack(Landroid/view/InputEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3732
    instance-of v1, p1, Landroid/view/KeyEvent;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 3733
    check-cast p1, Landroid/view/KeyEvent;

    #@7
    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@a
    move-result v1

    #@b
    const/4 v2, 0x4

    #@c
    if-ne v1, v2, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0

    #@10
    .line 3735
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_1
    return v0
.end method


# virtual methods
.method protected apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V
    .locals 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "result"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3668
    if-nez p2, :cond_0

    #@4
    .line 3669
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@7
    .line 3667
    :goto_0
    return-void

    #@8
    .line 3670
    :cond_0
    if-ne p2, v0, :cond_1

    #@a
    .line 3671
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    #@d
    goto :goto_0

    #@e
    .line 3672
    :cond_1
    const/4 v0, 0x2

    #@f
    if-ne p2, v0, :cond_2

    #@11
    .line 3673
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    #@14
    goto :goto_0

    #@15
    .line 3675
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Invalid result: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0
.end method

.method public final deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3637
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@3
    and-int/lit8 v0, v0, 0x4

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3638
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@a
    .line 3636
    :goto_0
    return-void

    #@b
    .line 3639
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 3640
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    #@14
    goto :goto_0

    #@15
    .line 3642
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    #@18
    move-result v0

    #@19
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V

    #@1c
    goto :goto_0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 3726
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3727
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@9
    .line 3725
    :cond_0
    return-void
.end method

.method protected finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "handled"    # Z

    #@0
    .prologue
    .line 3650
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@2
    or-int/lit8 v0, v0, 0x4

    #@4
    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@6
    .line 3651
    if-eqz p2, :cond_0

    #@8
    .line 3652
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@a
    or-int/lit8 v0, v0, 0x8

    #@c
    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@e
    .line 3654
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@11
    .line 3649
    return-void
.end method

.method protected forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 3661
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@3
    .line 3660
    return-void
.end method

.method protected onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 3694
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3695
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    #@6
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@9
    .line 3690
    :goto_0
    return-void

    #@a
    .line 3697
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    #@c
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-wrap4(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@f
    goto :goto_0
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 3684
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 3702
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    #@4
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@6
    if-eqz v0, :cond_2

    #@8
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    #@a
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 3705
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    #@10
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@12
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    #@14
    if-nez v0, :cond_0

    #@16
    .line 3706
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@18
    const/4 v1, 0x2

    #@19
    invoke-virtual {v0, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_3

    #@1f
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    #@21
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    #@23
    .line 3705
    if-nez v0, :cond_3

    #@25
    .line 3707
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    #@27
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    #@29
    if-eqz v0, :cond_1

    #@2b
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@2d
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$InputStage;->isBack(Landroid/view/InputEvent;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_3

    #@33
    .line 3722
    :cond_1
    return v3

    #@34
    .line 3703
    :cond_2
    const-string/jumbo v0, "ViewRootImpl"

    #@37
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v2, "Dropping event due to root view being removed: "

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 3704
    return v4

    #@51
    .line 3711
    :cond_3
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@53
    invoke-static {v0}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    #@56
    move-result v0

    #@57
    if-eqz v0, :cond_4

    #@59
    .line 3713
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@5b
    invoke-virtual {v0}, Landroid/view/InputEvent;->cancel()V

    #@5e
    .line 3714
    const-string/jumbo v0, "ViewRootImpl"

    #@61
    new-instance v1, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v2, "Cancelling event due to no window focus: "

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 3715
    return v3

    #@7b
    .line 3719
    :cond_4
    const-string/jumbo v0, "ViewRootImpl"

    #@7e
    new-instance v1, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v2, "Dropping event due to no window focus: "

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@8c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 3720
    return v4
.end method
