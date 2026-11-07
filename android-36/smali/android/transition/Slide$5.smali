.class Landroid/transition/Slide$5;
.super Landroid/transition/Slide$CalculateSlideHorizontal;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Slide$CalculateSlideHorizontal;-><init>(Landroid/transition/Slide-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist getGoneX(Landroid/view/ViewGroup;Landroid/view/View;F)F
    .registers 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "fraction"    # F

    .line 121
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 123
    .local v1, "isRtl":Z
    :goto_9
    if-eqz v1, :cond_17

    .line 124
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    sub-float/2addr v0, v2

    .local v0, "x":F
    goto :goto_22

    .line 126
    .end local v0    # "x":F
    :cond_17
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v0, v2

    .line 128
    .restart local v0    # "x":F
    :goto_22
    return v0
.end method
