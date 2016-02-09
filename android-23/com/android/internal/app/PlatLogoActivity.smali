.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# instance fields
.field mInterpolator:Landroid/view/animation/PathInterpolator;

.field mKeyCount:I

.field mLayout:Landroid/widget/FrameLayout;

.field mTapCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@4
    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    #@6
    const/high16 v1, 0x3f000000    # 0.5f

    #@8
    const/high16 v2, 0x3f800000    # 1.0f

    #@a
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    #@d
    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    #@f
    .line 47
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/high16 v7, 0x3f000000    # 0.5f

    #@3
    const/high16 v8, 0x3f800000    # 1.0f

    #@5
    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@c
    move-result-object v0

    #@d
    .line 64
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    #@f
    .line 66
    .local v1, "dp":F
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@11
    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@13
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@16
    move-result v5

    #@17
    int-to-float v5, v5

    #@18
    const/high16 v6, 0x44160000    # 600.0f

    #@1a
    mul-float/2addr v6, v1

    #@1b
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    #@1e
    move-result v5

    #@1f
    const/high16 v6, 0x42c80000    # 100.0f

    #@21
    mul-float/2addr v6, v1

    #@22
    sub-float/2addr v5, v6

    #@23
    .line 65
    float-to-int v4, v5

    #@24
    .line 68
    .local v4, "size":I
    new-instance v2, Landroid/view/View;

    #@26
    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@29
    .line 69
    .local v2, "im":Landroid/view/View;
    const/high16 v5, 0x41a00000    # 20.0f

    #@2b
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationZ(F)V

    #@2e
    .line 70
    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleX(F)V

    #@31
    .line 71
    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleY(F)V

    #@34
    .line 72
    const/4 v5, 0x0

    #@35
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    #@38
    .line 73
    new-instance v5, Lcom/android/internal/app/PlatLogoActivity$1;

    #@3a
    invoke-direct {v5, p0, v1}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;F)V

    #@3d
    invoke-virtual {v2, v5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    #@40
    .line 80
    const v5, 0x1080538

    #@43
    invoke-virtual {p0, v5}, Lcom/android/internal/app/PlatLogoActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@46
    move-result-object v3

    #@47
    .line 81
    .local v3, "platlogo":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    #@49
    .line 82
    const/4 v6, -0x1

    #@4a
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@4d
    move-result-object v6

    #@4e
    .line 84
    const/4 v7, 0x0

    #@4f
    .line 81
    invoke-direct {v5, v6, v3, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@52
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@55
    .line 85
    invoke-virtual {v2, v9}, Landroid/view/View;->setClickable(Z)V

    #@58
    .line 86
    new-instance v5, Lcom/android/internal/app/PlatLogoActivity$2;

    #@5a
    invoke-direct {v5, p0, v2}, Lcom/android/internal/app/PlatLogoActivity$2;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/view/View;)V

    #@5d
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@60
    .line 129
    invoke-virtual {v2, v9}, Landroid/view/View;->setFocusable(Z)V

    #@63
    .line 130
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    #@66
    .line 131
    new-instance v5, Lcom/android/internal/app/PlatLogoActivity$3;

    #@68
    invoke-direct {v5, p0, v2}, Lcom/android/internal/app/PlatLogoActivity$3;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/view/View;)V

    #@6b
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@6e
    .line 150
    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    #@70
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    #@72
    const/16 v7, 0x11

    #@74
    invoke-direct {v6, v4, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@77
    invoke-virtual {v5, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7a
    .line 152
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    #@81
    move-result-object v5

    #@82
    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@89
    move-result-object v5

    #@8a
    .line 153
    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    #@8c
    .line 152
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@8f
    move-result-object v5

    #@90
    .line 154
    const-wide/16 v6, 0x1f4

    #@92
    .line 152
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@95
    move-result-object v5

    #@96
    .line 155
    const-wide/16 v6, 0x320

    #@98
    .line 152
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    #@9f
    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 57
    new-instance v0, Landroid/widget/FrameLayout;

    #@5
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    #@a
    .line 58
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    #@c
    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    #@f
    .line 54
    return-void
.end method
