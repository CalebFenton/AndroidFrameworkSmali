.class public Landroid/view/ViewOverlay;
.super Ljava/lang/Object;
.source "ViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewOverlay$OverlayViewGroup;
    }
.end annotation


# instance fields
.field mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/View;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    new-instance v0, Landroid/view/ViewOverlay$OverlayViewGroup;

    #@5
    invoke-direct {v0, p1, p2}, Landroid/view/ViewOverlay$OverlayViewGroup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    #@8
    iput-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    #@a
    .line 48
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay$OverlayViewGroup;->add(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 70
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->clear()V

    #@5
    .line 87
    return-void
.end method

.method getOverlayView()Landroid/view/ViewGroup;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    #@2
    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay$OverlayViewGroup;->remove(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 80
    return-void
.end method
