.class final Landroid/view/ViewRootImpl$ImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImeInputStage"
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
    .line 4157
    iput-object p1, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2
    .line 4158
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    #@5
    .line 4157
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
    .line 4184
    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@3
    .line 4185
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz p2, :cond_0

    #@5
    .line 4186
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$ImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    #@9
    .line 4187
    return-void

    #@a
    .line 4189
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$ImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@d
    .line 4183
    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 4163
    iget-object v3, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@4
    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    iget-object v3, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@a
    invoke-static {v3}, Landroid/view/ViewRootImpl;->-wrap3(Landroid/view/ViewRootImpl;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 4179
    :cond_0
    return v4

    #@11
    .line 4164
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@14
    move-result-object v1

    #@15
    .line 4165
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    #@17
    .line 4166
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@19
    .line 4168
    .local v0, "event":Landroid/view/InputEvent;
    iget-object v3, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@1b
    iget-object v3, v3, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@1d
    invoke-virtual {v1, v0, p1, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I

    #@20
    move-result v2

    #@21
    .line 4169
    .local v2, "result":I
    if-ne v2, v5, :cond_2

    #@23
    .line 4170
    return v5

    #@24
    .line 4171
    :cond_2
    if-nez v2, :cond_3

    #@26
    .line 4173
    return v4

    #@27
    .line 4175
    :cond_3
    const/4 v3, 0x3

    #@28
    return v3
.end method
