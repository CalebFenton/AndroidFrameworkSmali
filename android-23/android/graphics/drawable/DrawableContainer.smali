.class public Landroid/graphics/drawable/DrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "DrawableContainer"


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mHasAlpha:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mLastIndex:I

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    .line 62
    const/16 v0, 0xff

    #@6
    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    #@8
    .line 67
    iput v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    #@a
    .line 68
    iput v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    #@c
    .line 43
    return-void
.end method

.method private initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 492
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@3
    .line 494
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@5
    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@7
    if-gtz v1, :cond_0

    #@9
    iget-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 495
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    #@f
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@12
    .line 498
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@14
    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    #@16
    if-eqz v1, :cond_3

    #@18
    .line 500
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@1a
    iget-object v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    #@1c
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@1f
    .line 510
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->isVisible()Z

    #@22
    move-result v1

    #@23
    const/4 v2, 0x1

    #@24
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@27
    .line 511
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@29
    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    #@2b
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    #@2e
    .line 512
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getState()[I

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@35
    .line 513
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLevel()I

    #@38
    move-result v1

    #@39
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@3c
    .line 514
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getBounds()Landroid/graphics/Rect;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@43
    .line 515
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLayoutDirection()I

    #@46
    move-result v1

    #@47
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@4a
    .line 516
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@4c
    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    #@4e
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    #@51
    .line 518
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    #@53
    .line 519
    .local v0, "hotspotBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_2

    #@55
    .line 520
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@57
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@59
    .line 521
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@5b
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@5d
    .line 520
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    #@60
    .line 491
    :cond_2
    return-void

    #@61
    .line 502
    .end local v0    # "hotspotBounds":Landroid/graphics/Rect;
    :cond_3
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@63
    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    #@65
    if-eqz v1, :cond_4

    #@67
    .line 503
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@69
    iget-object v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    #@6b
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@6e
    .line 505
    :cond_4
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@70
    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    #@72
    if-eqz v1, :cond_1

    #@74
    .line 506
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@76
    iget-object v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@78
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@7b
    goto :goto_0
.end method

.method private needsMirroring()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->isAutoMirrored()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLayoutDirection()I

    #@b
    move-result v2

    #@c
    if-ne v2, v0, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0
.end method


# virtual methods
.method animate(Z)V
    .locals 14
    .param p1, "schedule"    # Z

    #@0
    .prologue
    const-wide/16 v12, 0xff

    #@2
    const/4 v10, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    const-wide/16 v8, 0x0

    #@6
    .line 526
    const/4 v4, 0x1

    #@7
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    #@9
    .line 528
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v2

    #@d
    .line 529
    .local v2, "now":J
    const/4 v1, 0x0

    #@e
    .line 530
    .local v1, "animating":Z
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    if-eqz v4, :cond_4

    #@12
    .line 531
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    #@14
    cmp-long v4, v4, v8

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 532
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    #@1a
    cmp-long v4, v4, v2

    #@1c
    if-gtz v4, :cond_3

    #@1e
    .line 533
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@20
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@23
    move-result-object v4

    #@24
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    #@26
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@29
    .line 534
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    #@2b
    .line 546
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@2d
    if-eqz v4, :cond_6

    #@2f
    .line 547
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    #@31
    cmp-long v4, v4, v8

    #@33
    if-eqz v4, :cond_1

    #@35
    .line 548
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    #@37
    cmp-long v4, v4, v2

    #@39
    if-gtz v4, :cond_5

    #@3b
    .line 549
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@3d
    invoke-virtual {v4, v10, v10}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@40
    .line 550
    iput-object v7, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@42
    .line 551
    const/4 v4, -0x1

    #@43
    iput v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    #@45
    .line 552
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    #@47
    .line 565
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    #@49
    if-eqz v1, :cond_2

    #@4b
    .line 566
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    #@4d
    const-wide/16 v6, 0x10

    #@4f
    add-long/2addr v6, v2

    #@50
    invoke-virtual {p0, v4, v6, v7}, Landroid/graphics/drawable/DrawableContainer;->scheduleSelf(Ljava/lang/Runnable;J)V

    #@53
    .line 525
    :cond_2
    return-void

    #@54
    .line 536
    :cond_3
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    #@56
    sub-long/2addr v4, v2

    #@57
    mul-long/2addr v4, v12

    #@58
    long-to-int v4, v4

    #@59
    .line 537
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@5b
    iget v5, v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@5d
    .line 536
    div-int v0, v4, v5

    #@5f
    .line 539
    .local v0, "animAlpha":I
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@61
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@64
    move-result-object v4

    #@65
    rsub-int v5, v0, 0xff

    #@67
    iget v6, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    #@69
    mul-int/2addr v5, v6

    #@6a
    div-int/lit16 v5, v5, 0xff

    #@6c
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@6f
    .line 540
    const/4 v1, 0x1

    #@70
    goto :goto_0

    #@71
    .line 544
    .end local v0    # "animAlpha":I
    :cond_4
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    #@73
    goto :goto_0

    #@74
    .line 554
    :cond_5
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    #@76
    sub-long/2addr v4, v2

    #@77
    mul-long/2addr v4, v12

    #@78
    long-to-int v4, v4

    #@79
    .line 555
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@7b
    iget v5, v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@7d
    .line 554
    div-int v0, v4, v5

    #@7f
    .line 557
    .restart local v0    # "animAlpha":I
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@81
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@84
    move-result-object v4

    #@85
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    #@87
    mul-int/2addr v5, v0

    #@88
    div-int/lit16 v5, v5, 0xff

    #@8a
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@8d
    .line 558
    const/4 v1, 0x1

    #@8e
    goto :goto_1

    #@8f
    .line 562
    .end local v0    # "animAlpha":I
    :cond_6
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    #@91
    goto :goto_1
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 577
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@5
    .line 576
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 619
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 620
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@5
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->clearMutated()V

    #@8
    .line 621
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    #@b
    .line 618
    return-void
.end method

.method cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    #@0
    .prologue
    .line 612
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 81
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@9
    .line 83
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 84
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@12
    .line 79
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 156
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    #@2
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 90
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    .line 91
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChangingConfigurations()I

    #@9
    move-result v1

    #@a
    .line 90
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    #@0
    .prologue
    .line 587
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canConstantState()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 588
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@a
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getChangingConfigurations()I

    #@d
    move-result v1

    #@e
    iput v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    #@10
    .line 589
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@12
    return-object v0

    #@13
    .line 591
    :cond_0
    const/4 v0, 0x0

    #@14
    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 572
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    #@0
    .prologue
    .line 420
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    #@2
    return v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 307
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    #@6
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@9
    .line 305
    :goto_0
    return-void

    #@a
    .line 309
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    #@d
    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 353
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 355
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    if-eqz v0, :cond_1

    #@13
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@18
    move-result v0

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    const/4 v0, -0x1

    #@1b
    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 345
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 347
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    if-eqz v0, :cond_1

    #@13
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@18
    move-result v0

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    const/4 v0, -0x1

    #@1b
    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 369
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 371
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    if-eqz v0, :cond_1

    #@13
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@18
    move-result v0

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    #@0
    .prologue
    .line 360
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 361
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 363
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    if-eqz v0, :cond_1

    #@13
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@18
    move-result v0

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 410
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getOpacity()I

    #@11
    move-result v0

    #@12
    .line 409
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, -0x2

    #@14
    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 127
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 129
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@d
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 135
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@9
    .line 133
    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 100
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    invoke-virtual {v4}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    #@5
    move-result-object v1

    #@6
    .line 102
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    #@8
    .line 103
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@b
    .line 104
    iget v4, v1, Landroid/graphics/Rect;->left:I

    #@d
    iget v5, v1, Landroid/graphics/Rect;->top:I

    #@f
    or-int/2addr v4, v5

    #@10
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    #@12
    or-int/2addr v4, v5

    #@13
    iget v5, v1, Landroid/graphics/Rect;->right:I

    #@15
    or-int/2addr v4, v5

    #@16
    if-eqz v4, :cond_1

    #@18
    const/4 v2, 0x1

    #@19
    .line 112
    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;->needsMirroring()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 113
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@21
    .line 114
    .local v0, "left":I
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@23
    .line 115
    .local v3, "right":I
    iput v3, p1, Landroid/graphics/Rect;->left:I

    #@25
    .line 116
    iput v0, p1, Landroid/graphics/Rect;->right:I

    #@27
    .line 118
    .end local v0    # "left":I
    .end local v3    # "right":I
    :cond_0
    return v2

    #@28
    .line 104
    :cond_1
    const/4 v2, 0x0

    #@29
    .local v2, "result":Z
    goto :goto_0

    #@2a
    .line 106
    .end local v2    # "result":Z
    :cond_2
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@2c
    if-eqz v4, :cond_3

    #@2e
    .line 107
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@30
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@33
    move-result v2

    #@34
    .local v2, "result":Z
    goto :goto_0

    #@35
    .line 109
    .end local v2    # "result":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@38
    move-result v2

    #@39
    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 377
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@11
    .line 375
    :cond_0
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    #@4
    return v0
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isStateful()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public jumpToCurrentState()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const-wide/16 v4, 0x0

    #@3
    .line 258
    const/4 v0, 0x0

    #@4
    .line 259
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 260
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@d
    .line 261
    iput-object v2, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 262
    const/4 v1, -0x1

    #@10
    iput v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    #@12
    .line 263
    const/4 v0, 0x1

    #@13
    .line 265
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 266
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@1c
    .line 267
    iget-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 268
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v1

    #@26
    iget v2, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    #@28
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@2b
    .line 271
    :cond_1
    iget-wide v2, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    #@2d
    cmp-long v1, v2, v4

    #@2f
    if-eqz v1, :cond_2

    #@31
    .line 272
    iput-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    #@33
    .line 273
    const/4 v0, 0x1

    #@34
    .line 275
    :cond_2
    iget-wide v2, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    #@36
    cmp-long v1, v2, v4

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 276
    iput-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    #@3c
    .line 277
    const/4 v0, 0x1

    #@3d
    .line 279
    :cond_3
    if-eqz v0, :cond_4

    #@3f
    .line 280
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->invalidateSelf()V

    #@42
    .line 257
    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 596
    iget-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    #@2
    if-nez v1, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v1

    #@8
    if-ne v1, p0, :cond_0

    #@a
    .line 597
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@d
    move-result-object v0

    #@e
    .line 598
    .local v0, "clone":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-static {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->-wrap0(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@11
    .line 599
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@14
    .line 600
    const/4 v1, 0x1

    #@15
    iput-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    #@17
    .line 602
    .end local v0    # "clone":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 229
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@9
    .line 231
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 232
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@12
    .line 227
    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCurrentIndex()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->setLayoutDirection(II)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 327
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 329
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 330
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@14
    move-result v0

    #@15
    return v0

    #@16
    .line 332
    :cond_1
    const/4 v0, 0x0

    #@17
    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 316
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 318
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 319
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@14
    move-result v0

    #@15
    return v0

    #@16
    .line 321
    :cond_1
    const/4 v0, 0x0

    #@17
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 384
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    #@11
    .line 382
    :cond_0
    return-void
.end method

.method public selectDrawable(I)Z
    .locals 11
    .param p1, "idx"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v7, -0x1

    #@2
    const-wide/16 v8, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    .line 424
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    #@8
    if-ne p1, v1, :cond_0

    #@a
    .line 425
    return v4

    #@b
    .line 428
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e
    move-result-wide v2

    #@f
    .line 434
    .local v2, "now":J
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@11
    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@13
    if-lez v1, :cond_8

    #@15
    .line 435
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 436
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@1e
    .line 438
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@20
    if-eqz v1, :cond_7

    #@22
    .line 439
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@24
    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@26
    .line 440
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    #@28
    iput v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    #@2a
    .line 441
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2c
    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@2e
    int-to-long v4, v1

    #@2f
    add-long/2addr v4, v2

    #@30
    iput-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    #@32
    .line 451
    :cond_2
    :goto_0
    if-ltz p1, :cond_9

    #@34
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@36
    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@38
    if-ge p1, v1, :cond_9

    #@3a
    .line 452
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@3c
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    #@3f
    move-result-object v0

    #@40
    .line 453
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@42
    .line 454
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    #@44
    .line 455
    if-eqz v0, :cond_4

    #@46
    .line 456
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@48
    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@4a
    if-lez v1, :cond_3

    #@4c
    .line 457
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@4e
    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@50
    int-to-long v4, v1

    #@51
    add-long/2addr v4, v2

    #@52
    iput-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    #@54
    .line 459
    :cond_3
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    #@57
    .line 466
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_1
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    #@59
    cmp-long v1, v4, v8

    #@5b
    if-nez v1, :cond_5

    #@5d
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    #@5f
    cmp-long v1, v4, v8

    #@61
    if-eqz v1, :cond_6

    #@63
    .line 467
    :cond_5
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    #@65
    if-nez v1, :cond_a

    #@67
    .line 468
    new-instance v1, Landroid/graphics/drawable/DrawableContainer$1;

    #@69
    invoke-direct {v1, p0}, Landroid/graphics/drawable/DrawableContainer$1;-><init>(Landroid/graphics/drawable/DrawableContainer;)V

    #@6c
    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    #@6e
    .line 478
    :goto_2
    invoke-virtual {p0, v10}, Landroid/graphics/drawable/DrawableContainer;->animate(Z)V

    #@71
    .line 481
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->invalidateSelf()V

    #@74
    .line 483
    return v10

    #@75
    .line 443
    :cond_7
    iput-object v6, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@77
    .line 444
    iput v7, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    #@79
    .line 445
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    #@7b
    goto :goto_0

    #@7c
    .line 447
    :cond_8
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@7e
    if-eqz v1, :cond_2

    #@80
    .line 448
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@82
    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@85
    goto :goto_0

    #@86
    .line 462
    :cond_9
    iput-object v6, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@88
    .line 463
    iput v7, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    #@8a
    goto :goto_1

    #@8b
    .line 475
    :cond_a
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    #@8d
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@90
    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    #@6
    if-eq v0, p1, :cond_1

    #@8
    .line 142
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    #@b
    .line 143
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    #@d
    .line 144
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 145
    iget-wide v0, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    #@13
    const-wide/16 v2, 0x0

    #@15
    cmp-long v0, v0, v2

    #@17
    if-nez v0, :cond_2

    #@19
    .line 146
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@22
    .line 140
    :cond_1
    :goto_0
    return-void

    #@23
    .line 148
    :cond_2
    const/4 v0, 0x0

    #@24
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->animate(Z)V

    #@27
    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 2
    .param p1, "mirrored"    # Z

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 244
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@8
    iput-boolean p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    #@a
    .line 245
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 246
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@16
    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    #@18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    #@1b
    .line 242
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    const/4 v1, 0x1

    #@3
    iput-boolean v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    #@5
    .line 173
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@7
    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    #@9
    if-eq v0, p1, :cond_0

    #@b
    .line 174
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@d
    iput-object p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    #@f
    .line 176
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 177
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@1c
    .line 170
    :cond_0
    return-void
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1166
    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@3
    .line 1169
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    #@5
    if-ltz v0, :cond_0

    #@7
    .line 1170
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    #@9
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1171
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 1172
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    #@18
    .line 1178
    :cond_0
    const/4 v0, -0x1

    #@19
    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    #@1b
    .line 1179
    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@1d
    .line 1165
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 415
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    #@3
    .line 414
    return-void
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 162
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@8
    iput-boolean p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    #@a
    .line 163
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 164
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@16
    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    #@18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    #@1b
    .line 160
    :cond_0
    return-void
.end method

.method public setEnterFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    iput p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@4
    .line 213
    return-void
.end method

.method public setExitFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    iput p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@4
    .line 222
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 287
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@9
    .line 285
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 294
    new-instance v0, Landroid/graphics/Rect;

    #@6
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    #@b
    .line 299
    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 300
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    #@14
    .line 292
    :cond_0
    return-void

    #@15
    .line 296
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    #@17
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@1a
    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    const/4 v1, 0x1

    #@3
    iput-boolean v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    #@5
    .line 186
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@7
    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    #@9
    if-eq v0, p1, :cond_0

    #@b
    .line 187
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@d
    iput-object p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    #@f
    .line 189
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 190
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@1c
    .line 183
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@2
    const/4 v1, 0x1

    #@3
    iput-boolean v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    #@5
    .line 199
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@7
    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@9
    if-eq v0, p1, :cond_0

    #@b
    .line 200
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@d
    iput-object p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@f
    .line 202
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 203
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@1c
    .line 196
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 397
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@3
    move-result v0

    #@4
    .line 398
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 399
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@d
    .line 401
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 402
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@16
    .line 404
    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 391
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    #@11
    .line 389
    :cond_0
    return-void
.end method
