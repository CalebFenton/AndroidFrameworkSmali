.class final Landroid/graphics/drawable/GradientDrawable$GradientState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GradientState"
.end annotation


# instance fields
.field public mAngle:I

.field mAttrCorners:[I

.field mAttrGradient:[I

.field mAttrPadding:[I

.field mAttrSize:[I

.field mAttrSolid:[I

.field mAttrStroke:[I

.field mCenterX:F

.field mCenterY:F

.field public mChangingConfigurations:I

.field mDensity:I

.field public mDither:Z

.field public mGradient:I

.field public mGradientColors:[I

.field mGradientRadius:F

.field mGradientRadiusType:I

.field public mHeight:I

.field public mInnerRadius:I

.field public mInnerRadiusRatio:F

.field mOpaqueOverBounds:Z

.field mOpaqueOverShape:Z

.field public mOpticalInsets:Landroid/graphics/Insets;

.field public mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public mPadding:Landroid/graphics/Rect;

.field public mPositions:[F

.field public mRadius:F

.field public mRadiusArray:[F

.field public mShape:I

.field public mSolidColors:Landroid/content/res/ColorStateList;

.field public mStrokeColors:Landroid/content/res/ColorStateList;

.field public mStrokeDashGap:F

.field public mStrokeDashWidth:F

.field public mStrokeWidth:I

.field public mTempColors:[I

.field public mTempPositions:[F

.field mThemeAttrs:[I

.field public mThickness:I

.field public mThicknessRatio:F

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mUseLevel:Z

.field mUseLevelForShape:Z

.field public mWidth:I


# direct methods
.method static synthetic -wrap0(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "orig"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v3, -0x1

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v1, 0x0

    #@6
    .line 1792
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@9
    .line 1739
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@b
    .line 1740
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@d
    .line 1741
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    #@f
    .line 1749
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@11
    .line 1750
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@13
    .line 1751
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@15
    .line 1752
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@17
    .line 1753
    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@19
    .line 1754
    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@1b
    .line 1755
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@1d
    .line 1756
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@1f
    .line 1757
    const/high16 v0, 0x40400000    # 3.0f

    #@21
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    #@23
    .line 1758
    const/high16 v0, 0x41100000    # 9.0f

    #@25
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    #@27
    .line 1759
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@29
    .line 1760
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@2b
    .line 1761
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@2d
    .line 1762
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@2f
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@31
    .line 1764
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@33
    .line 1765
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@35
    .line 1766
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@37
    .line 1767
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@39
    .line 1768
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@3b
    .line 1769
    const/4 v0, 0x1

    #@3c
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    #@3e
    .line 1774
    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@40
    .line 1775
    sget-object v0, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@42
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@44
    .line 1777
    const/16 v0, 0xa0

    #@46
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    #@48
    .line 1793
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@4a
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@4c
    .line 1794
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@4e
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@50
    .line 1795
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@52
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@54
    .line 1796
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    #@56
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    #@58
    .line 1797
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@5a
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@5c
    .line 1798
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@5e
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@60
    .line 1799
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@62
    if-eqz v0, :cond_0

    #@64
    .line 1800
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@66
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, [I

    #@6c
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@6e
    .line 1802
    :cond_0
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    #@70
    if-eqz v0, :cond_1

    #@72
    .line 1803
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    #@74
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@77
    move-result-object v0

    #@78
    check-cast v0, [F

    #@7a
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    #@7c
    .line 1805
    :cond_1
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@7e
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@80
    .line 1806
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@82
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@84
    .line 1807
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@86
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@88
    .line 1808
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@8a
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@8c
    .line 1809
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@8e
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@90
    .line 1810
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@92
    if-eqz v0, :cond_2

    #@94
    .line 1811
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@96
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@99
    move-result-object v0

    #@9a
    check-cast v0, [F

    #@9c
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@9e
    .line 1813
    :cond_2
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@a0
    if-eqz v0, :cond_3

    #@a2
    .line 1814
    new-instance v0, Landroid/graphics/Rect;

    #@a4
    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@a6
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@a9
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@ab
    .line 1816
    :cond_3
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@ad
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@af
    .line 1817
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@b1
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@b3
    .line 1818
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    #@b5
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    #@b7
    .line 1819
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    #@b9
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    #@bb
    .line 1820
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@bd
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@bf
    .line 1821
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@c1
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@c3
    .line 1822
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@c5
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@c7
    .line 1823
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@c9
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@cb
    .line 1824
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@cd
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@cf
    .line 1825
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@d1
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@d3
    .line 1826
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@d5
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@d7
    .line 1827
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@d9
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@db
    .line 1828
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@dd
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@df
    .line 1829
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    #@e1
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    #@e3
    .line 1830
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    #@e5
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    #@e7
    .line 1831
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    #@e9
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    #@eb
    .line 1832
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@ed
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@ef
    .line 1833
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@f1
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@f3
    .line 1834
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    #@f5
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    #@f7
    .line 1835
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    #@f9
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    #@fb
    .line 1836
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    #@fd
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    #@ff
    .line 1837
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    #@101
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    #@103
    .line 1838
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    #@105
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    #@107
    .line 1839
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    #@109
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    #@10b
    .line 1840
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    #@10d
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    #@10f
    .line 1842
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    #@111
    invoke-static {p2, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@114
    move-result v0

    #@115
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    #@117
    .line 1843
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    #@119
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    #@11b
    if-eq v0, v1, :cond_4

    #@11d
    .line 1844
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    #@11f
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    #@121
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->applyDensityScaling(II)V

    #@124
    .line 1792
    :cond_4
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 5
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "gradientColors"    # [I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/high16 v3, 0x3f000000    # 0.5f

    #@3
    const/4 v0, 0x0

    #@4
    const/4 v2, -0x1

    #@5
    const/4 v1, 0x0

    #@6
    .line 1787
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@9
    .line 1739
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@b
    .line 1740
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@d
    .line 1741
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    #@f
    .line 1749
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@11
    .line 1750
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@13
    .line 1751
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@15
    .line 1752
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@17
    .line 1753
    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@19
    .line 1754
    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@1b
    .line 1755
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@1d
    .line 1756
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@1f
    .line 1757
    const/high16 v0, 0x40400000    # 3.0f

    #@21
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    #@23
    .line 1758
    const/high16 v0, 0x41100000    # 9.0f

    #@25
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    #@27
    .line 1759
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@29
    .line 1760
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@2b
    .line 1761
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@2d
    .line 1762
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@2f
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@31
    .line 1764
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@33
    .line 1765
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@35
    .line 1766
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@37
    .line 1767
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@39
    .line 1768
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@3b
    .line 1769
    const/4 v0, 0x1

    #@3c
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    #@3e
    .line 1774
    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@40
    .line 1775
    sget-object v0, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@42
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@44
    .line 1777
    const/16 v0, 0xa0

    #@46
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    #@48
    .line 1788
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@4a
    .line 1789
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    #@4d
    .line 1787
    return-void
.end method

.method private applyDensityScaling(II)V
    .locals 11
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, 0x1

    #@5
    .line 1867
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@7
    if-lez v4, :cond_0

    #@9
    .line 1869
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@b
    .line 1868
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@e
    move-result v4

    #@f
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@11
    .line 1871
    :cond_0
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@13
    if-lez v4, :cond_1

    #@15
    .line 1873
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@17
    .line 1872
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@1a
    move-result v4

    #@1b
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@1d
    .line 1875
    :cond_1
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@1f
    sget-object v5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@21
    if-eq v4, v5, :cond_2

    #@23
    .line 1877
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@25
    iget v4, v4, Landroid/graphics/Insets;->left:I

    #@27
    .line 1876
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@2a
    move-result v1

    #@2b
    .line 1879
    .local v1, "left":I
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@2d
    iget v4, v4, Landroid/graphics/Insets;->top:I

    #@2f
    .line 1878
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@32
    move-result v3

    #@33
    .line 1881
    .local v3, "top":I
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@35
    iget v4, v4, Landroid/graphics/Insets;->right:I

    #@37
    .line 1880
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@3a
    move-result v2

    #@3b
    .line 1883
    .local v2, "right":I
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@3d
    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    #@3f
    .line 1882
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@42
    move-result v0

    #@43
    .line 1884
    .local v0, "bottom":I
    invoke-static {v1, v3, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@46
    move-result-object v4

    #@47
    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@49
    .line 1886
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_2
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@4b
    if-eqz v4, :cond_3

    #@4d
    .line 1887
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@4f
    .line 1888
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@51
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@53
    .line 1887
    invoke-static {v5, p1, p2, v7}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@56
    move-result v5

    #@57
    iput v5, v4, Landroid/graphics/Rect;->left:I

    #@59
    .line 1889
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@5b
    .line 1890
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@5d
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@5f
    .line 1889
    invoke-static {v5, p1, p2, v7}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@62
    move-result v5

    #@63
    iput v5, v4, Landroid/graphics/Rect;->top:I

    #@65
    .line 1891
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@67
    .line 1892
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@69
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@6b
    .line 1891
    invoke-static {v5, p1, p2, v7}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@6e
    move-result v5

    #@6f
    iput v5, v4, Landroid/graphics/Rect;->right:I

    #@71
    .line 1893
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@73
    .line 1894
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@75
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@77
    .line 1893
    invoke-static {v5, p1, p2, v7}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@7a
    move-result v5

    #@7b
    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    #@7d
    .line 1896
    :cond_3
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@7f
    cmpl-float v4, v4, v8

    #@81
    if-lez v4, :cond_4

    #@83
    .line 1897
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@85
    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    #@88
    move-result v4

    #@89
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@8b
    .line 1899
    :cond_4
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@8d
    if-eqz v4, :cond_5

    #@8f
    .line 1900
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@91
    .line 1901
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@93
    aget v5, v5, v7

    #@95
    float-to-int v5, v5

    #@96
    .line 1900
    invoke-static {v5, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@99
    move-result v5

    #@9a
    int-to-float v5, v5

    #@9b
    aput v5, v4, v7

    #@9d
    .line 1902
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@9f
    .line 1903
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@a1
    aget v5, v5, v6

    #@a3
    float-to-int v5, v5

    #@a4
    .line 1902
    invoke-static {v5, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@a7
    move-result v5

    #@a8
    int-to-float v5, v5

    #@a9
    aput v5, v4, v6

    #@ab
    .line 1904
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@ad
    .line 1905
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@af
    aget v5, v5, v9

    #@b1
    float-to-int v5, v5

    #@b2
    .line 1904
    invoke-static {v5, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@b5
    move-result v5

    #@b6
    int-to-float v5, v5

    #@b7
    aput v5, v4, v9

    #@b9
    .line 1906
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@bb
    .line 1907
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@bd
    aget v5, v5, v10

    #@bf
    float-to-int v5, v5

    #@c0
    .line 1906
    invoke-static {v5, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@c3
    move-result v5

    #@c4
    int-to-float v5, v5

    #@c5
    aput v5, v4, v10

    #@c7
    .line 1909
    :cond_5
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@c9
    if-lez v4, :cond_6

    #@cb
    .line 1911
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@cd
    .line 1910
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@d0
    move-result v4

    #@d1
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@d3
    .line 1913
    :cond_6
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@d5
    cmpl-float v4, v4, v8

    #@d7
    if-lez v4, :cond_7

    #@d9
    .line 1915
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@db
    .line 1914
    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    #@de
    move-result v4

    #@df
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@e1
    .line 1917
    :cond_7
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@e3
    cmpl-float v4, v4, v8

    #@e5
    if-lez v4, :cond_8

    #@e7
    .line 1919
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@e9
    .line 1918
    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    #@ec
    move-result v4

    #@ed
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@ef
    .line 1921
    :cond_8
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@f1
    if-nez v4, :cond_9

    #@f3
    .line 1923
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@f5
    .line 1922
    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    #@f8
    move-result v4

    #@f9
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@fb
    .line 1925
    :cond_9
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@fd
    if-lez v4, :cond_a

    #@ff
    .line 1926
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@101
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@104
    move-result v4

    #@105
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@107
    .line 1928
    :cond_a
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@109
    if-lez v4, :cond_b

    #@10b
    .line 1929
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@10d
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@110
    move-result v4

    #@111
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@113
    .line 1866
    :cond_b
    return-void
.end method

.method private computeOpacity()V
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2000
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    #@4
    .line 2001
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    #@6
    .line 2003
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 2004
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@d
    array-length v3, v3

    #@e
    if-ge v0, v3, :cond_1

    #@10
    .line 2005
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@12
    aget v3, v3, v0

    #@14
    invoke-static {v3}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_0

    #@1a
    .line 2006
    return-void

    #@1b
    .line 2004
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2012
    .end local v0    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@20
    if-nez v3, :cond_2

    #@22
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@24
    if-nez v3, :cond_2

    #@26
    .line 2013
    return-void

    #@27
    .line 2017
    :cond_2
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    #@29
    .line 2019
    iget v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@2b
    if-nez v3, :cond_4

    #@2d
    .line 2020
    iget v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@2f
    const/4 v4, 0x0

    #@30
    cmpg-float v3, v3, v4

    #@32
    if-gtz v3, :cond_4

    #@34
    .line 2021
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@36
    if-nez v3, :cond_3

    #@38
    .line 2019
    :goto_1
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    #@3a
    .line 1999
    return-void

    #@3b
    :cond_3
    move v1, v2

    #@3c
    .line 2021
    goto :goto_1

    #@3d
    :cond_4
    move v1, v2

    #@3e
    .line 2019
    goto :goto_1
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 1935
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1936
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1935
    :cond_0
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    .line 1936
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1937
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    #@10
    if-nez v0, :cond_0

    #@12
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    #@14
    if-nez v0, :cond_0

    #@16
    .line 1938
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    #@18
    if-nez v0, :cond_0

    #@1a
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 1939
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@20
    if-eqz v0, :cond_2

    #@22
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@24
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@27
    move-result v0

    #@28
    .line 1935
    if-nez v0, :cond_0

    #@2a
    .line 1940
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@2c
    if-eqz v0, :cond_3

    #@2e
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@30
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@33
    move-result v0

    #@34
    .line 1935
    if-nez v0, :cond_0

    #@36
    .line 1941
    :cond_3
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@38
    if-eqz v0, :cond_4

    #@3a
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@3c
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@3f
    move-result v0

    #@40
    .line 1935
    if-nez v0, :cond_0

    #@42
    .line 1942
    :cond_4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    #@45
    move-result v0

    #@46
    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1967
    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@3
    .line 1968
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@5
    if-eqz v0, :cond_1

    #@7
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@9
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    #@c
    move-result v0

    #@d
    .line 1967
    :goto_0
    or-int/2addr v2, v0

    #@e
    .line 1969
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@10
    if-eqz v0, :cond_2

    #@12
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@14
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    #@17
    move-result v0

    #@18
    .line 1967
    :goto_1
    or-int/2addr v0, v2

    #@19
    .line 1970
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@1b
    if-eqz v2, :cond_0

    #@1d
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@1f
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    #@22
    move-result v1

    #@23
    .line 1967
    :cond_0
    or-int/2addr v0, v1

    #@24
    return v0

    #@25
    :cond_1
    move v0, v1

    #@26
    .line 1968
    goto :goto_0

    #@27
    :cond_2
    move v0, v1

    #@28
    .line 1969
    goto :goto_1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1947
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 1955
    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    #@2
    invoke-static {p1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@5
    move-result v0

    #@6
    .line 1956
    .local v0, "density":I
    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    #@8
    if-eq v0, v2, :cond_0

    #@a
    .line 1957
    new-instance v1, Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@c
    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    #@f
    .line 1962
    .local v1, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    :goto_0
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    #@11
    const/4 v3, 0x0

    #@12
    invoke-direct {v2, v1, p1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable;)V

    #@15
    return-object v2

    #@16
    .line 1959
    .end local v1    # "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_0
    move-object v1, p0

    #@17
    .restart local v1    # "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    goto :goto_0
.end method

.method public setCornerRadii([F)V
    .locals 1
    .param p1, "radii"    # [F

    #@0
    .prologue
    .line 2042
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@2
    .line 2043
    if-nez p1, :cond_0

    #@4
    .line 2044
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@7
    .line 2041
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    #@0
    .prologue
    .line 2034
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-gez v0, :cond_0

    #@5
    .line 2035
    const/4 p1, 0x0

    #@6
    .line 2037
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@8
    .line 2038
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@b
    .line 2033
    return-void
.end method

.method public final setDensity(I)V
    .locals 2
    .param p1, "targetDensity"    # I

    #@0
    .prologue
    .line 1858
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    #@2
    if-eq v1, p1, :cond_0

    #@4
    .line 1859
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    #@6
    .line 1860
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    #@8
    .line 1862
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->applyDensityScaling(II)V

    #@b
    .line 1857
    .end local v0    # "sourceDensity":I
    :cond_0
    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 1983
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@2
    .line 1984
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@4
    .line 1982
    return-void
.end method

.method public setGradientColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    #@0
    .prologue
    .line 1988
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@2
    .line 1989
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@5
    .line 1990
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    #@8
    .line 1987
    return-void
.end method

.method public setGradientRadius(FI)V
    .locals 0
    .param p1, "gradientRadius"    # F
    .param p2, "type"    # I

    #@0
    .prologue
    .line 2054
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@2
    .line 2055
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@4
    .line 2053
    return-void
.end method

.method public setGradientType(I)V
    .locals 0
    .param p1, "gradient"    # I

    #@0
    .prologue
    .line 1979
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@2
    .line 1978
    return-void
.end method

.method public setShape(I)V
    .locals 0
    .param p1, "shape"    # I

    #@0
    .prologue
    .line 1974
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@2
    .line 1975
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    #@5
    .line 1973
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 2049
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@2
    .line 2050
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@4
    .line 2048
    return-void
.end method

.method public setSolidColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 1994
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@3
    .line 1995
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@5
    .line 1996
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    #@8
    .line 1993
    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;FF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "colors"    # Landroid/content/res/ColorStateList;
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    #@0
    .prologue
    .line 2026
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@2
    .line 2027
    iput-object p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@4
    .line 2028
    iput p3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@6
    .line 2029
    iput p4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@8
    .line 2030
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    #@b
    .line 2025
    return-void
.end method
