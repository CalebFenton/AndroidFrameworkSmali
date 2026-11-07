.class final Lcom/android/internal/widget/NotificationProgressDrawable$State;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "NotificationProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation


# instance fields
.field blacklist mChangingConfigurations:I

.field blacklist mDensity:I

.field blacklist mFadedSegmentHeight:F

.field blacklist mPointRadius:F

.field blacklist mPointRectCornerRadius:F

.field blacklist mPointRectInset:F

.field blacklist mSegmentCornerRadius:F

.field blacklist mSegmentHeight:F

.field blacklist mThemeAttrs:[I

.field blacklist mThemeAttrsPoints:[I

.field blacklist mThemeAttrsSegments:[I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 555
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 553
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    .line 556
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "orig"    # Lcom/android/internal/widget/NotificationProgressDrawable$State;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 558
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 553
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    .line 559
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    .line 560
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    .line 561
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    .line 562
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    .line 563
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    .line 564
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    .line 565
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    .line 567
    iget-object v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrs:[I

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrs:[I

    .line 568
    iget-object v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    .line 569
    iget-object v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    .line 571
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    invoke-static {p2, v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    .line 572
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    if-eq v0, v1, :cond_44

    .line 573
    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->applyDensityScaling(II)V

    .line 575
    :cond_44
    return-void
.end method

.method private blacklist applyDensityScaling(II)V
    .registers 5
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 578
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    .line 579
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    .line 582
    :cond_f
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    .line 583
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    .line 586
    :cond_1d
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2b

    .line 587
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    .line 590
    :cond_2b
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_39

    .line 591
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    .line 594
    :cond_39
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_47

    .line 595
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    .line 598
    :cond_47
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_55

    .line 599
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    .line 602
    :cond_55
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .registers 2

    .line 632
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrs:[I

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    if-nez v0, :cond_15

    .line 633
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 632
    :goto_16
    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 2

    .line 627
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 607
    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;Lcom/android/internal/widget/NotificationProgressDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 615
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    invoke-static {p1, v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    .line 616
    .local v0, "density":I
    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    if-eq v0, v1, :cond_10

    .line 617
    new-instance v1, Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    .local v1, "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    goto :goto_11

    .line 619
    .end local v1    # "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    :cond_10
    move-object v1, p0

    .line 622
    .restart local v1    # "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    :goto_11
    new-instance v2, Lcom/android/internal/widget/NotificationProgressDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;Lcom/android/internal/widget/NotificationProgressDrawable-IA;)V

    return-object v2
.end method

.method public blacklist setDensity(I)V
    .registers 3
    .param p1, "targetDensity"    # I

    .line 637
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    if-eq v0, p1, :cond_b

    .line 638
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    .line 639
    .local v0, "sourceDensity":I
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    .line 641
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->applyDensityScaling(II)V

    .line 643
    .end local v0    # "sourceDensity":I
    :cond_b
    return-void
.end method
