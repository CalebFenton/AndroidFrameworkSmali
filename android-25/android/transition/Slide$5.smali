.class final Landroid/transition/Slide$5;
.super Landroid/transition/Slide$CalculateSlideHorizontal;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 117
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/transition/Slide$CalculateSlideHorizontal;-><init>(Landroid/transition/Slide$CalculateSlideHorizontal;)V

    #@4
    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/view/ViewGroup;Landroid/view/View;F)F
    .locals 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "fraction"    # F

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 120
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    #@4
    move-result v2

    #@5
    if-ne v2, v0, :cond_0

    #@7
    .line 122
    .local v0, "isRtl":Z
    :goto_0
    if-eqz v0, :cond_1

    #@9
    .line 123
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@c
    move-result v2

    #@d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    #@10
    move-result v3

    #@11
    int-to-float v3, v3

    #@12
    mul-float/2addr v3, p3

    #@13
    sub-float v1, v2, v3

    #@15
    .line 127
    .local v1, "x":F
    :goto_1
    return v1

    #@16
    .line 120
    .end local v0    # "isRtl":Z
    .end local v1    # "x":F
    :cond_0
    const/4 v0, 0x0

    #@17
    goto :goto_0

    #@18
    .line 125
    .restart local v0    # "isRtl":Z
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@1b
    move-result v2

    #@1c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    #@1f
    move-result v3

    #@20
    int-to-float v3, v3

    #@21
    mul-float/2addr v3, p3

    #@22
    add-float v1, v2, v3

    #@24
    .restart local v1    # "x":F
    goto :goto_1
.end method
