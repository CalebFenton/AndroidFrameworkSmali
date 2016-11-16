.class Lcom/android/server/policy/PhoneWindowManager$13;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    #@0
    .prologue
    .line 1692
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDebug()V
    .locals 0

    #@0
    .prologue
    .line 1725
    return-void
.end method

.method public onDown()V
    .locals 1

    #@0
    .prologue
    .line 1730
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@4
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchStart()V

    #@7
    .line 1729
    return-void
.end method

.method public onFling(I)V
    .locals 2
    .param p1, "duration"    # I

    #@0
    .prologue
    .line 1719
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1720
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@8
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@a
    .line 1721
    const/4 v1, 0x2

    #@b
    .line 1720
    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    #@e
    .line 1718
    :cond_0
    return-void
.end method

.method public onMouseHoverAtBottom()V
    .locals 4

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    .line 1745
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@4
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@6
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@9
    .line 1746
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@b
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    .line 1747
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@12
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@14
    .line 1748
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@16
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@18
    const-wide/16 v2, 0x1f4

    #@1a
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1d
    .line 1744
    return-void
.end method

.method public onMouseHoverAtTop()V
    .locals 4

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    .line 1738
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@4
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@6
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@9
    .line 1739
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@b
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    .line 1740
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    #@12
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@14
    .line 1741
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@16
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@18
    const-wide/16 v2, 0x1f4

    #@1a
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1d
    .line 1737
    return-void
.end method

.method public onMouseLeaveFromEdge()V
    .locals 2

    #@0
    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@4
    const/16 v1, 0x10

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@9
    .line 1751
    return-void
.end method

.method public onSwipeFromBottom()V
    .locals 2

    #@0
    .prologue
    .line 1701
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@8
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1702
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@e
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@10
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@12
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap17(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@15
    .line 1700
    :cond_0
    return-void
.end method

.method public onSwipeFromLeft()V
    .locals 2

    #@0
    .prologue
    .line 1713
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@8
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@a
    const/4 v1, 0x2

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 1714
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@11
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@13
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap17(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@16
    .line 1712
    :cond_0
    return-void
.end method

.method public onSwipeFromRight()V
    .locals 2

    #@0
    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@8
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@a
    const/4 v1, 0x1

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 1708
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@11
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@13
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap17(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@16
    .line 1706
    :cond_0
    return-void
.end method

.method public onSwipeFromTop()V
    .locals 2

    #@0
    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1696
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@8
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@a
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@c
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap17(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@f
    .line 1694
    :cond_0
    return-void
.end method

.method public onUpOrCancel()V
    .locals 1

    #@0
    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@4
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchEnd()V

    #@7
    .line 1733
    return-void
.end method
