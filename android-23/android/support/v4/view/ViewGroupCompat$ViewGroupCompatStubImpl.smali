.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLayoutMode(Landroid/view/ViewGroup;)I
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;

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
    .end local p1    # "group":Landroid/view/ViewGroup;
    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingParent;->getNestedScrollAxes()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 91
    .restart local p1    # "group":Landroid/view/ViewGroup;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 60
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setLayoutMode(Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 73
    return-void
.end method

.method public setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "split"    # Z

    #@0
    .prologue
    .line 63
    return-void
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "isTransitionGroup"    # Z

    #@0
    .prologue
    .line 78
    return-void
.end method
