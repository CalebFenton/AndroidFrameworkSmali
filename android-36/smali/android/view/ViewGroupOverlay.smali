.class public Landroid/view/ViewGroupOverlay;
.super Landroid/view/ViewOverlay;
.source "ViewGroupOverlay.java"


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/View;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/ViewOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist add(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 72
    iget-object v0, p0, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay$OverlayViewGroup;->add(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public whitelist remove(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 84
    iget-object v0, p0, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay$OverlayViewGroup;->remove(Landroid/view/View;)V

    .line 85
    return-void
.end method
