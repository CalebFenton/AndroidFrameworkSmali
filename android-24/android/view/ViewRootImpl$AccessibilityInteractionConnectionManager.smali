.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccessibilityInteractionConnectionManager"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 7236
    iput-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public ensureConnection()V
    .locals 6

    #@0
    .prologue
    .line 7257
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@2
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iget v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    #@6
    const v2, 0x7fffffff

    #@9
    if-eq v1, v2, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    .line 7258
    .local v0, "registered":Z
    :goto_0
    if-nez v0, :cond_0

    #@e
    .line 7259
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@10
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@12
    .line 7260
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@14
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@16
    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@18
    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@1a
    .line 7261
    new-instance v4, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;

    #@1c
    iget-object v5, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@1e
    invoke-direct {v4, v5}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;-><init>(Landroid/view/ViewRootImpl;)V

    #@21
    .line 7260
    invoke-virtual {v2, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I

    #@24
    move-result v2

    #@25
    .line 7259
    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    #@27
    .line 7255
    :cond_0
    return-void

    #@28
    .line 7257
    .end local v0    # "registered":Z
    :cond_1
    const/4 v0, 0x0

    #@29
    goto :goto_0
.end method

.method public ensureNoConnection()V
    .locals 3

    #@0
    .prologue
    const v2, 0x7fffffff

    #@3
    .line 7267
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@5
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7
    iget v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    #@9
    if-eq v1, v2, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    .line 7268
    .local v0, "registered":Z
    :goto_0
    if-eqz v0, :cond_0

    #@e
    .line 7269
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@10
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@12
    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    #@14
    .line 7270
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@16
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@18
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@1a
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@1c
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    #@1f
    .line 7265
    :cond_0
    return-void

    #@20
    .line 7267
    .end local v0    # "registered":Z
    :cond_1
    const/4 v0, 0x0

    #@21
    goto :goto_0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 7240
    if-eqz p1, :cond_1

    #@2
    .line 7241
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    #@5
    .line 7242
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@7
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9
    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 7243
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@f
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@11
    const/16 v2, 0x20

    #@13
    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@16
    .line 7244
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@18
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1a
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@1d
    move-result-object v0

    #@1e
    .line 7245
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@20
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@22
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@24
    if-eq v0, v1, :cond_0

    #@26
    .line 7246
    const/16 v1, 0x8

    #@28
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@2b
    .line 7239
    .end local v0    # "focusedView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    #@2c
    .line 7250
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    #@2f
    .line 7251
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    #@31
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@33
    const/16 v2, 0x15

    #@35
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@3c
    goto :goto_0
.end method
