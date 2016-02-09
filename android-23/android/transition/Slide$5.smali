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
    .line 107
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/transition/Slide$CalculateSlideHorizontal;-><init>(Landroid/transition/Slide$CalculateSlideHorizontal;)V

    #@4
    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    #@3
    move-result v2

    #@4
    const/4 v3, 0x1

    #@5
    if-ne v2, v3, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 112
    .local v0, "isRtl":Z
    :goto_0
    if-eqz v0, :cond_1

    #@a
    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@d
    move-result v2

    #@e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    #@11
    move-result v3

    #@12
    int-to-float v3, v3

    #@13
    sub-float v1, v2, v3

    #@15
    .line 117
    .local v1, "x":F
    :goto_1
    return v1

    #@16
    .line 110
    .end local v0    # "isRtl":Z
    .end local v1    # "x":F
    :cond_0
    const/4 v0, 0x0

    #@17
    .restart local v0    # "isRtl":Z
    goto :goto_0

    #@18
    .line 115
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
    add-float v1, v2, v3

    #@23
    .restart local v1    # "x":F
    goto :goto_1
.end method
