.class Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewParentCompatStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "source"    # Landroid/view/View;
    .param p4, "changeType"    # I

    #@0
    .prologue
    .line 132
    return-void
.end method

.method public onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F
    .param p5, "consumed"    # Z

    #@0
    .prologue
    .line 113
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 114
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    #@6
    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingParent;->onNestedFling(Landroid/view/View;FFZ)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 117
    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    #@0
    .prologue
    .line 123
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 124
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    #@6
    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onNestedPreFling(Landroid/view/View;FF)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 127
    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "consumed"    # [I

    #@0
    .prologue
    .line 105
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 106
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    #@6
    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    #@9
    .line 104
    :cond_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "dxConsumed"    # I
    .param p4, "dyConsumed"    # I
    .param p5, "dxUnconsumed"    # I
    .param p6, "dyUnconsumed"    # I

    #@0
    .prologue
    .line 96
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 97
    check-cast v0, Landroid/support/v4/view/NestedScrollingParent;

    #@7
    move-object v1, p2

    #@8
    move v2, p3

    #@9
    move v3, p4

    #@a
    move v4, p5

    #@b
    move v5, p6

    #@c
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingParent;->onNestedScroll(Landroid/view/View;IIII)V

    #@f
    .line 95
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "nestedScrollAxes"    # I

    #@0
    .prologue
    .line 80
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 81
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    #@6
    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    #@9
    .line 79
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "nestedScrollAxes"    # I

    #@0
    .prologue
    .line 70
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 71
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    #@6
    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 74
    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;

    #@0
    .prologue
    .line 88
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 89
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    #@6
    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingParent;->onStopNestedScroll(Landroid/view/View;)V

    #@9
    .line 87
    :cond_0
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 58
    if-nez p2, :cond_0

    #@2
    .line 59
    const/4 v1, 0x0

    #@3
    return v1

    #@4
    .line 61
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    .line 62
    const-string/jumbo v2, "accessibility"

    #@b
    .line 61
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    #@11
    .line 63
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@14
    .line 64
    const/4 v1, 0x1

    #@15
    return v1
.end method
