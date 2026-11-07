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
.field private blacklist mDirectConnectionId:I

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 12114
    iput-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12116
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    return-void
.end method


# virtual methods
.method public greylist-max-o ensureConnection()V
    .registers 9

    .line 12141
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 12143
    .local v0, "registered":Z
    :goto_c
    if-nez v0, :cond_33

    .line 12144
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v4, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 12147
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;

    iget-object v7, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v6, v7}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;-><init>(Landroid/view/ViewRootImpl;)V

    .line 12145
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I

    move-result v2

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 12150
    :cond_33
    return-void
.end method

.method public blacklist ensureDirectConnection()I
    .registers 3

    .line 12163
    iget v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 12164
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;-><init>(Landroid/view/ViewRootImpl;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->addDirectConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;Landroid/view/accessibility/AccessibilityManager;)I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    .line 12168
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityStateChanged()V

    .line 12170
    :cond_1d
    iget v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    return v0
.end method

.method public greylist-max-o ensureNoConnection()V
    .registers 4

    .line 12153
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 12155
    .local v0, "registered":Z
    :goto_c
    if-eqz v0, :cond_25

    .line 12156
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 12157
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->-$$Nest$fputmAccessibilityWindowAttributes(Landroid/view/ViewRootImpl;Landroid/view/accessibility/AccessibilityWindowAttributes;)V

    .line 12158
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    .line 12160
    :cond_25
    return-void
.end method

.method public blacklist ensureNoDirectConnection()V
    .registers 3

    .line 12174
    iget v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 12175
    iget v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    .line 12176
    iput v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->mDirectConnectionId:I

    .line 12178
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityStateChanged()V

    .line 12180
    :cond_13
    return-void
.end method

.method public whitelist onAccessibilityStateChanged(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 12120
    if-eqz p1, :cond_50

    .line 12121
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 12122
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$msetAccessibilityWindowAttributesIfNeeded(Landroid/view/ViewRootImpl;)V

    .line 12123
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_36

    .line 12124
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 12125
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 12126
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_36

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq v0, v1, :cond_36

    .line 12127
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 12130
    .end local v0    # "focusedView":Landroid/view/View;
    :cond_36
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    if-eqz v0, :cond_60

    .line 12131
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V

    goto :goto_60

    .line 12135
    :cond_50
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 12136
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 12138
    :cond_60
    :goto_60
    return-void
.end method
