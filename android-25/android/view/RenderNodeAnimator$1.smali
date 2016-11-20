.class final Landroid/view/RenderNodeAnimator$1;
.super Landroid/util/SparseIntArray;
.source "RenderNodeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RenderNodeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 5
    .param p1, "$anonymous0"    # I

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    const/4 v3, 0x4

    #@3
    const/4 v2, 0x2

    #@4
    const/4 v1, 0x1

    #@5
    .line 67
    invoke-direct {p0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    #@8
    .line 68
    const/4 v0, 0x0

    #@9
    invoke-virtual {p0, v1, v0}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    #@c
    .line 69
    invoke-virtual {p0, v2, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    #@f
    .line 70
    invoke-virtual {p0, v3, v2}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    #@12
    .line 71
    const/4 v0, 0x3

    #@13
    invoke-virtual {p0, v4, v0}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    #@16
    .line 72
    const/16 v0, 0x10

    #@18
    invoke-virtual {p0, v0, v3}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    #@1b
    .line 73
    const/16 v0, 0x20

    #@1d
    const/4 v1, 0x5

    #@1e
    invoke-virtual {p0, v0, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    #@21
    .line 74
    const/16 v0, 0x40

    #@23
    const/4 v1, 0x6

    #@24
    invoke-virtual {p0, v0, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    #@27
    .line 75
    const/16 v0, 0x80

    #@29
    const/4 v1, 0x7

    #@2a
    invoke-virtual {p0, v0, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    #@2d
    .line 76
    const/16 v0, 0x100

    #@2f
    invoke-virtual {p0, v0, v4}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    #@32
    .line 77
    const/16 v0, 0x200

    #@34
    const/16 v1, 0x9

    #@36
    invoke-virtual {p0, v0, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    #@39
    .line 78
    const/16 v0, 0x400

    #@3b
    const/16 v1, 0xa

    #@3d
    invoke-virtual {p0, v0, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    #@40
    .line 79
    const/16 v0, 0x800

    #@42
    const/16 v1, 0xb

    #@44
    invoke-virtual {p0, v0, v1}, Landroid/view/RenderNodeAnimator$1;->put(II)V

    #@47
    .line 67
    return-void
.end method
