.class final Landroid/view/ViewRootImpl$ViewPreImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPreImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    #@0
    .prologue
    .line 3922
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2
    .line 3923
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    #@5
    .line 3922
    return-void
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 3935
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@2
    check-cast v0, Landroid/view/KeyEvent;

    #@4
    .line 3936
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@6
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@8
    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 3937
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 3939
    :cond_0
    const/4 v1, 0x0

    #@11
    return v1
.end method


# virtual methods
.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 3928
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@2
    instance-of v0, v0, Landroid/view/KeyEvent;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3929
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 3931
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method
