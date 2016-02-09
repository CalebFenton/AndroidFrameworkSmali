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

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 5
    .param p1, "state"    # Landroid/graphics/drawable/GradientDrawable$GradientState;

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
    .line 1616
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@9
    .line 1565
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@b
    .line 1566
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@d
    .line 1567
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    #@f
    .line 1575
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@11
    .line 1576
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@13
    .line 1577
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@15
    .line 1578
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@17
    .line 1579
    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@19
    .line 1580
    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@1b
    .line 1581
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@1d
    .line 1582
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@1f
    .line 1583
    const/high16 v0, 0x40400000    # 3.0f

    #@21
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    #@23
    .line 1584
    const/high16 v0, 0x41100000    # 9.0f

    #@25
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    #@27
    .line 1585
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@29
    .line 1586
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@2b
    .line 1587
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@2d
    .line 1588
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@2f
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@31
    .line 1590
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@33
    .line 1591
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@35
    .line 1592
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@37
    .line 1593
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@39
    .line 1594
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@3b
    .line 1595
    const/4 v0, 0x1

    #@3c
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    #@3e
    .line 1600
    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@40
    .line 1601
    sget-object v0, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@42
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@44
    .line 1617
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@46
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@48
    .line 1618
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@4a
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@4c
    .line 1619
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@4e
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@50
    .line 1620
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    #@52
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    #@54
    .line 1621
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@56
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@58
    .line 1622
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@5a
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@5c
    .line 1623
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@5e
    if-eqz v0, :cond_0

    #@60
    .line 1624
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@62
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@65
    move-result-object v0

    #@66
    check-cast v0, [I

    #@68
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@6a
    .line 1626
    :cond_0
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    #@6c
    if-eqz v0, :cond_1

    #@6e
    .line 1627
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    #@70
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@73
    move-result-object v0

    #@74
    check-cast v0, [F

    #@76
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    #@78
    .line 1629
    :cond_1
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@7a
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@7c
    .line 1630
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@7e
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@80
    .line 1631
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@82
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@84
    .line 1632
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@86
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@88
    .line 1633
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@8a
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@8c
    .line 1634
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@8e
    if-eqz v0, :cond_2

    #@90
    .line 1635
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@92
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@95
    move-result-object v0

    #@96
    check-cast v0, [F

    #@98
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@9a
    .line 1637
    :cond_2
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@9c
    if-eqz v0, :cond_3

    #@9e
    .line 1638
    new-instance v0, Landroid/graphics/Rect;

    #@a0
    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@a2
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@a5
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@a7
    .line 1640
    :cond_3
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@a9
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@ab
    .line 1641
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@ad
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@af
    .line 1642
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    #@b1
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    #@b3
    .line 1643
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    #@b5
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    #@b7
    .line 1644
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@b9
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@bb
    .line 1645
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@bd
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@bf
    .line 1646
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@c1
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@c3
    .line 1647
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@c5
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@c7
    .line 1648
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@c9
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@cb
    .line 1649
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@cd
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@cf
    .line 1650
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@d1
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@d3
    .line 1651
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@d5
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@d7
    .line 1652
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@d9
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@db
    .line 1653
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    #@dd
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    #@df
    .line 1654
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    #@e1
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    #@e3
    .line 1655
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    #@e5
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    #@e7
    .line 1656
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@e9
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@eb
    .line 1657
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@ed
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@ef
    .line 1658
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    #@f1
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    #@f3
    .line 1659
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    #@f5
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    #@f7
    .line 1660
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    #@f9
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    #@fb
    .line 1661
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    #@fd
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    #@ff
    .line 1662
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    #@101
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    #@103
    .line 1663
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    #@105
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    #@107
    .line 1664
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    #@109
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    #@10b
    .line 1616
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
    .line 1611
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@9
    .line 1565
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@b
    .line 1566
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@d
    .line 1567
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    #@f
    .line 1575
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@11
    .line 1576
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@13
    .line 1577
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@15
    .line 1578
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@17
    .line 1579
    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@19
    .line 1580
    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@1b
    .line 1581
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@1d
    .line 1582
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@1f
    .line 1583
    const/high16 v0, 0x40400000    # 3.0f

    #@21
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    #@23
    .line 1584
    const/high16 v0, 0x41100000    # 9.0f

    #@25
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    #@27
    .line 1585
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@29
    .line 1586
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@2b
    .line 1587
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@2d
    .line 1588
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@2f
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@31
    .line 1590
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@33
    .line 1591
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@35
    .line 1592
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@37
    .line 1593
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@39
    .line 1594
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@3b
    .line 1595
    const/4 v0, 0x1

    #@3c
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    #@3e
    .line 1600
    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@40
    .line 1601
    sget-object v0, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@42
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@44
    .line 1612
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@46
    .line 1613
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    #@49
    .line 1611
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
    .line 1724
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    #@4
    .line 1725
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    #@6
    .line 1727
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 1728
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
    .line 1729
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
    .line 1730
    return-void

    #@1b
    .line 1728
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1736
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
    .line 1737
    return-void

    #@27
    .line 1741
    :cond_2
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    #@29
    .line 1743
    iget v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@2b
    if-nez v3, :cond_4

    #@2d
    .line 1744
    iget v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@2f
    const/4 v4, 0x0

    #@30
    cmpg-float v3, v3, v4

    #@32
    if-gtz v3, :cond_4

    #@34
    .line 1745
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@36
    if-nez v3, :cond_3

    #@38
    .line 1743
    :goto_1
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    #@3a
    .line 1723
    return-void

    #@3b
    :cond_3
    move v1, v2

    #@3c
    .line 1745
    goto :goto_1

    #@3d
    :cond_4
    move v1, v2

    #@3e
    .line 1743
    goto :goto_1
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 1669
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1670
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1669
    :cond_0
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    .line 1670
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1671
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    #@10
    if-nez v0, :cond_0

    #@12
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    #@14
    if-nez v0, :cond_0

    #@16
    .line 1672
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    #@18
    if-nez v0, :cond_0

    #@1a
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 1673
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
    .line 1669
    if-nez v0, :cond_0

    #@2a
    .line 1674
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
    .line 1669
    if-nez v0, :cond_0

    #@36
    .line 1675
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
    .line 1669
    if-nez v0, :cond_0

    #@42
    .line 1676
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
    .line 1691
    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@3
    .line 1692
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
    .line 1691
    :goto_0
    or-int/2addr v2, v0

    #@e
    .line 1693
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
    .line 1691
    :goto_1
    or-int/2addr v0, v2

    #@19
    .line 1694
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
    .line 1691
    :cond_0
    or-int/2addr v0, v1

    #@24
    return v0

    #@25
    :cond_1
    move v0, v1

    #@26
    .line 1692
    goto :goto_0

    #@27
    :cond_2
    move v0, v1

    #@28
    .line 1693
    goto :goto_1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1681
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 1686
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable;)V

    #@6
    return-object v0
.end method

.method public setCornerRadii([F)V
    .locals 1
    .param p1, "radii"    # [F

    #@0
    .prologue
    .line 1765
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@2
    .line 1766
    if-nez p1, :cond_0

    #@4
    .line 1767
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@7
    .line 1764
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    #@0
    .prologue
    .line 1757
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-gez v0, :cond_0

    #@5
    .line 1758
    const/4 p1, 0x0

    #@6
    .line 1760
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@8
    .line 1761
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@b
    .line 1756
    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 1707
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@2
    .line 1708
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@4
    .line 1706
    return-void
.end method

.method public setGradientColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    #@0
    .prologue
    .line 1712
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@2
    .line 1713
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@5
    .line 1714
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    #@8
    .line 1711
    return-void
.end method

.method public setGradientRadius(FI)V
    .locals 0
    .param p1, "gradientRadius"    # F
    .param p2, "type"    # I

    #@0
    .prologue
    .line 1777
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@2
    .line 1778
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@4
    .line 1776
    return-void
.end method

.method public setGradientType(I)V
    .locals 0
    .param p1, "gradient"    # I

    #@0
    .prologue
    .line 1703
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@2
    .line 1702
    return-void
.end method

.method public setShape(I)V
    .locals 0
    .param p1, "shape"    # I

    #@0
    .prologue
    .line 1698
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@2
    .line 1699
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    #@5
    .line 1697
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 1772
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@2
    .line 1773
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@4
    .line 1771
    return-void
.end method

.method public setSolidColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 1718
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@3
    .line 1719
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@5
    .line 1720
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    #@8
    .line 1717
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
    .line 1749
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@2
    .line 1750
    iput-object p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@4
    .line 1751
    iput p3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@6
    .line 1752
    iput p4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@8
    .line 1753
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    #@b
    .line 1748
    return-void
.end method
