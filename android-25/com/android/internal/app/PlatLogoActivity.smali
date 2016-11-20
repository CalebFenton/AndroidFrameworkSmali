.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# static fields
.field public static final FINISH:Z

.field public static final REVEAL_THE_NAME:Z


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
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@4
    .line 62
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
    .line 55
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/high16 v7, 0x3f000000    # 0.5f

    #@3
    const/high16 v9, 0x3f800000    # 1.0f

    #@5
    .line 74
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@c
    move-result-object v0

    #@d
    .line 75
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    #@f
    .line 77
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
    .line 76
    float-to-int v4, v5

    #@24
    .line 79
    .local v4, "size":I
    new-instance v2, Landroid/widget/ImageView;

    #@26
    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@29
    .line 80
    .local v2, "im":Landroid/widget/ImageView;
    const/high16 v5, 0x42200000    # 40.0f

    #@2b
    mul-float/2addr v5, v1

    #@2c
    float-to-int v3, v5

    #@2d
    .line 81
    .local v3, "pad":I
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    #@30
    .line 82
    const/high16 v5, 0x41a00000    # 20.0f

    #@32
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTranslationZ(F)V

    #@35
    .line 83
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    #@38
    .line 84
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    #@3b
    .line 85
    const/4 v5, 0x0

    #@3c
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    #@3f
    .line 87
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    #@41
    .line 88
    const/4 v6, -0x1

    #@42
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@45
    move-result-object v6

    #@46
    .line 89
    const v7, 0x1080555

    #@49
    invoke-virtual {p0, v7}, Lcom/android/internal/app/PlatLogoActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@4c
    move-result-object v7

    #@4d
    .line 90
    const/4 v8, 0x0

    #@4e
    .line 87
    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@51
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@54
    .line 97
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    #@57
    .line 98
    new-instance v5, Lcom/android/internal/app/PlatLogoActivity$1;

    #@59
    invoke-direct {v5, p0, v2}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;)V

    #@5c
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@5f
    .line 153
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setFocusable(Z)V

    #@62
    .line 154
    invoke-virtual {v2}, Landroid/widget/ImageView;->requestFocus()Z

    #@65
    .line 155
    new-instance v5, Lcom/android/internal/app/PlatLogoActivity$2;

    #@67
    invoke-direct {v5, p0, v2}, Lcom/android/internal/app/PlatLogoActivity$2;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;)V

    #@6a
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@6d
    .line 174
    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    #@6f
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    #@71
    const/16 v7, 0x11

    #@73
    invoke-direct {v6, v4, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@76
    invoke-virtual {v5, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@79
    .line 176
    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@88
    move-result-object v5

    #@89
    .line 177
    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    #@8b
    .line 176
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@8e
    move-result-object v5

    #@8f
    .line 178
    const-wide/16 v6, 0x1f4

    #@91
    .line 176
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@94
    move-result-object v5

    #@95
    .line 179
    const-wide/16 v6, 0x320

    #@97
    .line 176
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    #@9a
    move-result-object v5

    #@9b
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    #@9e
    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 68
    new-instance v0, Landroid/widget/FrameLayout;

    #@5
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    #@a
    .line 69
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    #@c
    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    #@f
    .line 65
    return-void
.end method
