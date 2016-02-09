.class public Landroid/view/ViewGroupOverlay;
.super Landroid/view/ViewOverlay;
.source "ViewGroupOverlay.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/View;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/ViewOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    #@3
    .line 35
    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay$OverlayViewGroup;->add(Landroid/view/View;)V

    #@5
    .line 62
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay$OverlayViewGroup;->remove(Landroid/view/View;)V

    #@5
    .line 73
    return-void
.end method
