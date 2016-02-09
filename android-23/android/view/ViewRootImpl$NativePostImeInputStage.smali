.class final Landroid/view/ViewRootImpl$NativePostImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputQueue$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativePostImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4054
    iput-object p1, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2
    .line 4055
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    #@5
    .line 4054
    return-void
.end method


# virtual methods
.method public onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "handled"    # Z

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 4069
    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@3
    .line 4070
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz p2, :cond_0

    #@5
    .line 4071
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$NativePostImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    #@9
    .line 4072
    return-void

    #@a
    .line 4074
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePostImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@d
    .line 4068
    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4060
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@3
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 4061
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@9
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@b
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@d
    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/view/InputQueue;->sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V

    #@10
    .line 4062
    const/4 v0, 0x3

    #@11
    return v0

    #@12
    .line 4064
    :cond_0
    return v2
.end method
