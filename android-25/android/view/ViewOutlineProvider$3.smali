.class final Landroid/view/ViewOutlineProvider$3;
.super Landroid/view/ViewOutlineProvider;
.source "ViewOutlineProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewOutlineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    #@3
    move-result v0

    #@4
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    #@7
    move-result v1

    #@8
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@b
    move-result v2

    #@c
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    #@f
    move-result v3

    #@10
    sub-int/2addr v2, v3

    #@11
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@14
    move-result v3

    #@15
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    #@18
    move-result v4

    #@19
    sub-int/2addr v3, v4

    #@1a
    .line 68
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Outline;->setRect(IIII)V

    #@1d
    .line 67
    return-void
.end method
