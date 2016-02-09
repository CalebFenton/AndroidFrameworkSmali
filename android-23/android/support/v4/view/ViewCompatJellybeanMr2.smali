.class Landroid/support/v4/view/ViewCompatJellybeanMr2;
.super Ljava/lang/Object;
.source "ViewCompatJellybeanMr2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    #@3
    .line 31
    return-void
.end method
