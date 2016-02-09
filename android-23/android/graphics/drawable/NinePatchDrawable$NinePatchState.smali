.class final Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "NinePatchDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/NinePatchDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NinePatchState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mBaseAlpha:F

.field mChangingConfigurations:I

.field mDither:Z

.field mNinePatch:Landroid/graphics/NinePatch;

.field mOpticalInsets:Landroid/graphics/Insets;

.field mPadding:Landroid/graphics/Rect;

.field mTargetDensity:I

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 623
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@5
    .line 610
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    #@7
    .line 611
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@9
    .line 612
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@b
    .line 613
    sget-object v0, Landroid/graphics/drawable/NinePatchDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@d
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@f
    .line 614
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    #@11
    .line 615
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@13
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    #@15
    .line 616
    const/high16 v0, 0x3f800000    # 1.0f

    #@17
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    #@19
    .line 617
    iput-boolean v2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@1b
    .line 618
    const/16 v0, 0xa0

    #@1d
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    #@1f
    .line 619
    iput-boolean v2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@21
    .line 623
    return-void
.end method

.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;
    .param p2, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 628
    const/4 v3, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v5, v4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    #@9
    .line 627
    return-void
.end method

.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;
    .param p2, "padding"    # Landroid/graphics/Rect;
    .param p3, "opticalInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, v4

    #@6
    .line 633
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    #@9
    .line 632
    return-void
.end method

.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 3
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;
    .param p2, "padding"    # Landroid/graphics/Rect;
    .param p3, "opticalInsets"    # Landroid/graphics/Rect;
    .param p4, "dither"    # Z
    .param p5, "autoMirror"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 636
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@5
    .line 610
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    #@7
    .line 611
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@9
    .line 612
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@b
    .line 613
    sget-object v0, Landroid/graphics/drawable/NinePatchDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@d
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@f
    .line 614
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    #@11
    .line 615
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@13
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    #@15
    .line 616
    const/high16 v0, 0x3f800000    # 1.0f

    #@17
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    #@19
    .line 617
    iput-boolean v2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@1b
    .line 618
    const/16 v0, 0xa0

    #@1d
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    #@1f
    .line 619
    iput-boolean v2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@21
    .line 638
    iput-object p1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@23
    .line 639
    iput-object p2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    #@25
    .line 640
    invoke-static {p3}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    #@2b
    .line 641
    iput-boolean p4, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@2d
    .line 642
    iput-boolean p5, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@2f
    .line 637
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V
    .locals 3
    .param p1, "state"    # Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 647
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@5
    .line 610
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    #@7
    .line 611
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@9
    .line 612
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@b
    .line 613
    sget-object v0, Landroid/graphics/drawable/NinePatchDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@d
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@f
    .line 614
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    #@11
    .line 615
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@13
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    #@15
    .line 616
    const/high16 v0, 0x3f800000    # 1.0f

    #@17
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    #@19
    .line 617
    iput-boolean v2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@1b
    .line 618
    const/16 v0, 0xa0

    #@1d
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    #@1f
    .line 619
    iput-boolean v2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@21
    .line 649
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@23
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@25
    .line 650
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@27
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@29
    .line 651
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2b
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2d
    .line 652
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    #@2f
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    #@31
    .line 653
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    #@33
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    #@35
    .line 654
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    #@37
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    #@39
    .line 655
    iget v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    #@3b
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    #@3d
    .line 656
    iget-boolean v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@3f
    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@41
    .line 657
    iget v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    #@43
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    #@45
    .line 658
    iget v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    #@47
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    #@49
    .line 659
    iget-boolean v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@4b
    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@4d
    .line 647
    return-void
.end method


# virtual methods
.method public addAtlasableBitmaps(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 670
    .local p1, "atlasList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@2
    invoke-virtual {v1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    #@5
    move-result-object v0

    #@6
    .line 671
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->isAtlasable(Landroid/graphics/Bitmap;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 672
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@15
    move-result v1

    #@16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@19
    move-result v2

    #@1a
    mul-int/2addr v1, v2

    #@1b
    return v1

    #@1c
    .line 674
    :cond_0
    const/4 v1, 0x0

    #@1d
    return v1
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 664
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 665
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@d
    move-result v0

    #@e
    .line 664
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 665
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 689
    iget v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    #@2
    .line 690
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@8
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    #@b
    move-result v0

    #@c
    .line 689
    :goto_0
    or-int/2addr v0, v1

    #@d
    return v0

    #@e
    .line 690
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 679
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Landroid/graphics/drawable/NinePatchDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 684
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Landroid/graphics/drawable/NinePatchDrawable;)V

    #@6
    return-object v0
.end method
