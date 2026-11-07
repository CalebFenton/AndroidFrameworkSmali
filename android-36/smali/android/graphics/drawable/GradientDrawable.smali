.class public Landroid/graphics/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/GradientDrawable$GradientState;,
        Landroid/graphics/drawable/GradientDrawable$Orientation;,
        Landroid/graphics/drawable/GradientDrawable$StrokeCap;,
        Landroid/graphics/drawable/GradientDrawable$RadiusType;,
        Landroid/graphics/drawable/GradientDrawable$GradientType;,
        Landroid/graphics/drawable/GradientDrawable$Shape;
    }
.end annotation


# static fields
.field public static final blacklist ARC:I = 0x4

.field private static final blacklist BUTT:I = 0x0

.field private static final greylist-max-o DEFAULT_INNER_RADIUS_RATIO:F = 3.0f

.field private static final blacklist DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field private static final greylist-max-o DEFAULT_THICKNESS_RATIO:F = 9.0f

.field public static final whitelist LINE:I = 0x2

.field public static final whitelist LINEAR_GRADIENT:I = 0x0

.field public static final whitelist OVAL:I = 0x1

.field public static final whitelist RADIAL_GRADIENT:I = 0x1

.field private static final greylist-max-o RADIUS_TYPE_FRACTION:I = 0x1

.field private static final greylist-max-o RADIUS_TYPE_FRACTION_PARENT:I = 0x2

.field private static final greylist-max-o RADIUS_TYPE_PIXELS:I = 0x0

.field public static final whitelist RECTANGLE:I = 0x0

.field public static final whitelist RING:I = 0x3

.field private static final blacklist ROUND:I = 0x1

.field private static final blacklist SQUARE:I = 0x2

.field public static final whitelist SWEEP_GRADIENT:I = 0x2

.field public static blacklist sWrapNegativeAngleMeasurements:Z


# instance fields
.field private greylist-max-o mAlpha:I

.field private blacklist mArcOutlinePath:Landroid/graphics/Path;

.field private blacklist mArcPath:Landroid/graphics/Path;

.field private blacklist mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private final greylist mFillPaint:Landroid/graphics/Paint;

.field private greylist-max-o mGradientIsDirty:Z

.field private greylist-max-o mGradientRadius:F

.field private greylist-max-p mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

.field private greylist-max-o mLayerPaint:Landroid/graphics/Paint;

.field private greylist-max-o mMutated:Z

.field private greylist-max-p mPadding:Landroid/graphics/Rect;

.field private final greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o mPathIsDirty:Z

.field private final greylist-max-o mRect:Landroid/graphics/RectF;

.field private greylist-max-o mRingPath:Landroid/graphics/Path;

.field private greylist mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Landroid/graphics/drawable/GradientDrawable;->sWrapNegativeAngleMeasurements:Z

    .line 173
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sput-object v0, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 244
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    .line 245
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "state"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 2504
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 197
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 205
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 207
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    .line 208
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 214
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 2505
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2507
    invoke-direct {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 2508
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .registers 5
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "colors"    # [I

    .line 252
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    .line 253
    return-void
.end method

.method private greylist-max-o applyThemeChildElements(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 1649
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1651
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    if-eqz v1, :cond_14

    .line 1652
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1654
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    .line 1655
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1658
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_14
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    if-eqz v1, :cond_30

    .line 1659
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1662
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :try_start_20
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2b

    .line 1664
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1665
    goto :goto_30

    .line 1664
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1665
    throw v2

    .line 1668
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_30
    :goto_30
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    if-eqz v1, :cond_42

    .line 1669
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1671
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    .line 1672
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1675
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_42
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    if-eqz v1, :cond_54

    .line 1676
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1678
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    .line 1679
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1682
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_54
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    if-eqz v1, :cond_66

    .line 1683
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    sget-object v2, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1685
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    .line 1686
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1689
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_66
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    if-eqz v1, :cond_78

    .line 1690
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1692
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    .line 1693
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1695
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_78
    return-void
.end method

.method private greylist-max-o buildPathIfDirty()V
    .registers 6

    .line 963
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 964
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-eqz v1, :cond_1c

    .line 965
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    .line 966
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 967
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 968
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 970
    :cond_1c
    return-void
.end method

.method private greylist-max-o buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .registers 13
    .param p1, "st"    # Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1120
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-eqz v0, :cond_f

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-nez v0, :cond_f

    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    return-object v0

    .line 1121
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1123
    iget-boolean v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    const/high16 v2, 0x43b40000    # 360.0f

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v1, v3

    goto :goto_24

    :cond_23
    move v1, v2

    .line 1125
    .local v1, "sweep":F
    :goto_24
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1127
    .local v3, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 1128
    .local v4, "x":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v5

    .line 1130
    .local v6, "y":F
    iget v5, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_40

    .line 1131
    iget v5, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    int-to-float v5, v5

    goto :goto_47

    :cond_40
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    div-float/2addr v5, v8

    .line 1133
    .local v5, "thickness":F
    :goto_47
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-eq v8, v7, :cond_4f

    .line 1134
    iget v7, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    int-to-float v7, v7

    goto :goto_56

    :cond_4f
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    div-float/2addr v7, v8

    .line 1136
    .local v7, "radius":F
    :goto_56
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1137
    .local v8, "innerBounds":Landroid/graphics/RectF;
    sub-float v9, v4, v7

    sub-float v10, v6, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 1139
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1140
    .end local v3    # "bounds":Landroid/graphics/RectF;
    .local v9, "bounds":Landroid/graphics/RectF;
    neg-float v3, v5

    neg-float v10, v5

    invoke-virtual {v9, v3, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 1142
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-nez v3, :cond_78

    .line 1143
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    goto :goto_7d

    .line 1145
    :cond_78
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1148
    :goto_7d
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 1151
    .local v3, "ringPath":Landroid/graphics/Path;
    cmpg-float v2, v1, v2

    if-gez v2, :cond_a5

    const/high16 v2, -0x3c4c0000    # -360.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_a5

    .line 1152
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1154
    add-float v2, v4, v7

    invoke-virtual {v3, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1156
    add-float v2, v4, v7

    add-float/2addr v2, v5

    invoke-virtual {v3, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1158
    const/4 v2, 0x0

    invoke-virtual {v3, v9, v2, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1160
    neg-float v2, v1

    invoke-virtual {v3, v8, v1, v2, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1161
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    goto :goto_af

    .line 1164
    :cond_a5
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v9, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1165
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v8, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1168
    :goto_af
    return-object v3
.end method

.method private greylist-max-o ensureValidRect()Z
    .registers 18

    .line 1385
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_20b

    .line 1386
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 1388
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1389
    .local v3, "bounds":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 1391
    .local v4, "inset":F
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_1d

    .line 1392
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v4, v5, v6

    .line 1395
    :cond_1d
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1397
    .local v5, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    iget v8, v3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    iget v9, v3, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v4

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1400
    const/4 v6, 0x0

    .line 1401
    .local v6, "gradientColors":[I
    iget-object v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_57

    .line 1402
    iget-object v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v7, v7

    new-array v6, v7, [I

    .line 1403
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3f
    array-length v8, v6

    if-ge v7, v8, :cond_55

    .line 1404
    iget-object v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v8, v8, v7

    if-eqz v8, :cond_52

    .line 1405
    iget-object v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    aput v8, v6, v7

    .line 1403
    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    :cond_55
    move-object v12, v6

    goto :goto_58

    .line 1401
    .end local v7    # "i":I
    :cond_57
    move-object v12, v6

    .line 1409
    .end local v6    # "gradientColors":[I
    .local v12, "gradientColors":[I
    :goto_58
    if-eqz v12, :cond_207

    .line 1410
    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 1413
    .local v6, "r":Landroid/graphics/RectF;
    iget v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const v8, 0x461c4000    # 10000.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v7, :cond_102

    .line 1414
    iget-boolean v1, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v1, :cond_70

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    div-float v9, v1, v8

    :cond_70
    move v1, v9

    .line 1415
    .local v1, "level":F
    iget-object v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v7}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_216

    .line 1445
    iget v7, v6, Landroid/graphics/RectF;->left:F

    .local v7, "x0":F
    iget v8, v6, Landroid/graphics/RectF;->top:F

    .line 1446
    .local v8, "y0":F
    iget v9, v6, Landroid/graphics/RectF;->right:F

    mul-float/2addr v9, v1

    .local v9, "x1":F
    iget v10, v6, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v10, v1

    move v11, v9

    move-object v13, v12

    move v9, v7

    move v12, v10

    move v10, v8

    .local v10, "y1":F
    goto/16 :goto_f0

    .line 1441
    .end local v7    # "x0":F
    .end local v8    # "y0":F
    .end local v9    # "x1":F
    .end local v10    # "y1":F
    :pswitch_8b
    iget v7, v6, Landroid/graphics/RectF;->left:F

    .restart local v7    # "x0":F
    iget v8, v6, Landroid/graphics/RectF;->top:F

    .line 1442
    .restart local v8    # "y0":F
    iget v9, v6, Landroid/graphics/RectF;->right:F

    mul-float/2addr v9, v1

    .restart local v9    # "x1":F
    move v10, v8

    .line 1443
    .restart local v10    # "y1":F
    move v11, v9

    move-object v13, v12

    move v9, v7

    move v12, v10

    goto/16 :goto_f0

    .line 1437
    .end local v7    # "x0":F
    .end local v8    # "y0":F
    .end local v9    # "x1":F
    .end local v10    # "y1":F
    :pswitch_99
    iget v7, v6, Landroid/graphics/RectF;->left:F

    .restart local v7    # "x0":F
    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    .line 1438
    .restart local v8    # "y0":F
    iget v9, v6, Landroid/graphics/RectF;->right:F

    mul-float/2addr v9, v1

    .restart local v9    # "x1":F
    iget v10, v6, Landroid/graphics/RectF;->top:F

    mul-float/2addr v10, v1

    .line 1439
    .restart local v10    # "y1":F
    move v11, v9

    move-object v13, v12

    move v9, v7

    move v12, v10

    move v10, v8

    goto/16 :goto_f0

    .line 1433
    .end local v7    # "x0":F
    .end local v8    # "y0":F
    .end local v9    # "x1":F
    .end local v10    # "y1":F
    :pswitch_aa
    iget v7, v6, Landroid/graphics/RectF;->left:F

    .restart local v7    # "x0":F
    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    .line 1434
    .restart local v8    # "y0":F
    move v9, v7

    .restart local v9    # "x1":F
    iget v10, v6, Landroid/graphics/RectF;->top:F

    mul-float/2addr v10, v1

    .line 1435
    .restart local v10    # "y1":F
    move v11, v9

    move-object v13, v12

    move v12, v10

    move v10, v8

    goto :goto_f0

    .line 1429
    .end local v7    # "x0":F
    .end local v8    # "y0":F
    .end local v9    # "x1":F
    .end local v10    # "y1":F
    :pswitch_b7
    iget v7, v6, Landroid/graphics/RectF;->right:F

    .restart local v7    # "x0":F
    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    .line 1430
    .restart local v8    # "y0":F
    iget v9, v6, Landroid/graphics/RectF;->left:F

    mul-float/2addr v9, v1

    .restart local v9    # "x1":F
    iget v10, v6, Landroid/graphics/RectF;->top:F

    mul-float/2addr v10, v1

    .line 1431
    .restart local v10    # "y1":F
    move v11, v9

    move-object v13, v12

    move v9, v7

    move v12, v10

    move v10, v8

    goto :goto_f0

    .line 1425
    .end local v7    # "x0":F
    .end local v8    # "y0":F
    .end local v9    # "x1":F
    .end local v10    # "y1":F
    :pswitch_c7
    iget v7, v6, Landroid/graphics/RectF;->right:F

    .restart local v7    # "x0":F
    iget v8, v6, Landroid/graphics/RectF;->top:F

    .line 1426
    .restart local v8    # "y0":F
    iget v9, v6, Landroid/graphics/RectF;->left:F

    mul-float/2addr v9, v1

    .restart local v9    # "x1":F
    move v10, v8

    .line 1427
    .restart local v10    # "y1":F
    move v11, v9

    move-object v13, v12

    move v9, v7

    move v12, v10

    goto :goto_f0

    .line 1421
    .end local v7    # "x0":F
    .end local v8    # "y0":F
    .end local v9    # "x1":F
    .end local v10    # "y1":F
    :pswitch_d4
    iget v7, v6, Landroid/graphics/RectF;->right:F

    .restart local v7    # "x0":F
    iget v8, v6, Landroid/graphics/RectF;->top:F

    .line 1422
    .restart local v8    # "y0":F
    iget v9, v6, Landroid/graphics/RectF;->left:F

    mul-float/2addr v9, v1

    .restart local v9    # "x1":F
    iget v10, v6, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v10, v1

    .line 1423
    .restart local v10    # "y1":F
    move v11, v9

    move-object v13, v12

    move v9, v7

    move v12, v10

    move v10, v8

    goto :goto_f0

    .line 1417
    .end local v7    # "x0":F
    .end local v8    # "y0":F
    .end local v9    # "x1":F
    .end local v10    # "y1":F
    :pswitch_e4
    iget v7, v6, Landroid/graphics/RectF;->left:F

    .restart local v7    # "x0":F
    iget v8, v6, Landroid/graphics/RectF;->top:F

    .line 1418
    .restart local v8    # "y0":F
    move v9, v7

    .restart local v9    # "x1":F
    iget v10, v6, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v10, v1

    .line 1419
    .restart local v10    # "y1":F
    move v11, v9

    move-object v13, v12

    move v12, v10

    move v10, v8

    .line 1450
    .end local v7    # "x0":F
    .end local v8    # "y0":F
    .local v9, "x0":F
    .local v10, "y0":F
    .local v11, "x1":F
    .local v12, "y1":F
    .local v13, "gradientColors":[I
    :goto_f0
    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/LinearGradient;

    iget-object v14, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1452
    .end local v1    # "level":F
    move/from16 v16, v2

    goto/16 :goto_1fb

    .end local v9    # "x0":F
    .end local v10    # "y0":F
    .end local v11    # "x1":F
    .end local v13    # "gradientColors":[I
    .local v12, "gradientColors":[I
    :cond_102
    move-object v13, v12

    .end local v12    # "gradientColors":[I
    .restart local v13    # "gradientColors":[I
    iget v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v10, 0x2

    if-ne v7, v2, :cond_182

    .line 1453
    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v7, v6, Landroid/graphics/RectF;->right:F

    iget v9, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v9

    iget v9, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v7, v9

    add-float v9, v1, v7

    .line 1454
    .restart local v9    # "x0":F
    iget v1, v6, Landroid/graphics/RectF;->top:F

    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    iget v11, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v11

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v7, v11

    add-float/2addr v1, v7

    .line 1456
    .local v1, "y0":F
    iget v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1457
    .local v7, "radius":F
    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    if-ne v11, v2, :cond_143

    .line 1460
    iget v10, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    if-ltz v10, :cond_12d

    iget v10, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    int-to-float v10, v10

    goto :goto_131

    :cond_12d
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v10

    .line 1461
    .local v10, "width":F
    :goto_131
    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    if-ltz v11, :cond_139

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    int-to-float v11, v11

    goto :goto_13d

    :cond_139
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v11

    .line 1462
    .local v11, "height":F
    :goto_13d
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v12

    mul-float/2addr v7, v12

    .end local v10    # "width":F
    .end local v11    # "height":F
    goto :goto_155

    .line 1463
    :cond_143
    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    if-ne v11, v10, :cond_155

    .line 1464
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float/2addr v7, v10

    goto :goto_156

    .line 1463
    :cond_155
    :goto_155
    nop

    .line 1467
    :goto_156
    iget-boolean v10, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v10, :cond_161

    .line 1468
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v8

    mul-float/2addr v7, v10

    .line 1471
    :cond_161
    iput v7, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    .line 1473
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_16d

    .line 1476
    const v7, 0x3a83126f    # 0.001f

    move v11, v7

    goto :goto_16e

    .line 1473
    :cond_16d
    move v11, v7

    .line 1479
    .end local v7    # "radius":F
    .local v11, "radius":F
    :goto_16e
    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/RadialGradient;

    move-object v12, v13

    .end local v13    # "gradientColors":[I
    .restart local v12    # "gradientColors":[I
    const/4 v13, 0x0

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v10, v1

    .end local v1    # "y0":F
    .local v10, "y0":F
    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v13, v12

    .end local v12    # "gradientColors":[I
    .restart local v13    # "gradientColors":[I
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1481
    .end local v11    # "radius":F
    move/from16 v16, v2

    goto/16 :goto_1fb

    .end local v9    # "x0":F
    .end local v10    # "y0":F
    :cond_182
    iget v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    if-ne v7, v10, :cond_1f9

    .line 1482
    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v10, v6, Landroid/graphics/RectF;->right:F

    iget v11, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    .line 1483
    .local v7, "x0":F
    iget v10, v6, Landroid/graphics/RectF;->top:F

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    iget v12, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    iget v12, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 1485
    .restart local v10    # "y0":F
    move-object v11, v13

    .line 1486
    .local v11, "tempColors":[I
    const/4 v12, 0x0

    .line 1488
    .local v12, "tempPositions":[F
    iget-boolean v14, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v14, :cond_1ec

    .line 1489
    iget-object v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    .line 1490
    array-length v14, v13

    .line 1491
    .local v14, "length":I
    if-eqz v11, :cond_1af

    array-length v15, v11

    move/from16 v16, v2

    add-int/lit8 v2, v14, 0x1

    if-eq v15, v2, :cond_1b8

    goto :goto_1b1

    :cond_1af
    move/from16 v16, v2

    .line 1492
    :goto_1b1
    add-int/lit8 v2, v14, 0x1

    new-array v2, v2, [I

    iput-object v2, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    move-object v11, v2

    .line 1494
    :cond_1b8
    invoke-static {v13, v1, v11, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1495
    add-int/lit8 v1, v14, -0x1

    aget v1, v13, v1

    aput v1, v11, v14

    .line 1497
    iget-object v1, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    .line 1498
    .end local v12    # "tempPositions":[F
    .local v1, "tempPositions":[F
    add-int/lit8 v2, v14, -0x1

    int-to-float v2, v2

    div-float v2, v9, v2

    .line 1499
    .local v2, "fraction":F
    if-eqz v1, :cond_1d2

    array-length v12, v1

    add-int/lit8 v15, v14, 0x1

    if-eq v12, v15, :cond_1d0

    goto :goto_1d2

    :cond_1d0
    move-object v12, v1

    goto :goto_1d8

    .line 1500
    :cond_1d2
    :goto_1d2
    add-int/lit8 v12, v14, 0x1

    new-array v12, v12, [F

    iput-object v12, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    .line 1503
    .end local v1    # "tempPositions":[F
    .restart local v12    # "tempPositions":[F
    :goto_1d8
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    .line 1504
    .local v1, "level":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1df
    if-ge v8, v14, :cond_1e9

    .line 1505
    int-to-float v15, v8

    mul-float/2addr v15, v2

    mul-float/2addr v15, v1

    aput v15, v12, v8

    .line 1504
    add-int/lit8 v8, v8, 0x1

    goto :goto_1df

    .line 1507
    .end local v8    # "i":I
    :cond_1e9
    aput v9, v12, v14

    goto :goto_1ee

    .line 1488
    .end local v1    # "level":F
    .end local v2    # "fraction":F
    .end local v14    # "length":I
    :cond_1ec
    move/from16 v16, v2

    .line 1510
    :goto_1ee
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/SweepGradient;

    invoke-direct {v2, v7, v10, v11, v12}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1fb

    .line 1481
    .end local v7    # "x0":F
    .end local v10    # "y0":F
    .end local v11    # "tempColors":[I
    .end local v12    # "tempPositions":[F
    :cond_1f9
    move/from16 v16, v2

    .line 1515
    :goto_1fb
    iget-object v1, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_20d

    .line 1516
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_20d

    .line 1409
    .end local v6    # "r":Landroid/graphics/RectF;
    .end local v13    # "gradientColors":[I
    .local v12, "gradientColors":[I
    :cond_207
    move/from16 v16, v2

    move-object v13, v12

    .end local v12    # "gradientColors":[I
    .restart local v13    # "gradientColors":[I
    goto :goto_20d

    .line 1385
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "inset":F
    .end local v5    # "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v13    # "gradientColors":[I
    :cond_20b
    move/from16 v16, v2

    .line 1520
    :cond_20d
    :goto_20d
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :pswitch_data_216
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_d4
        :pswitch_c7
        :pswitch_b7
        :pswitch_aa
        :pswitch_99
        :pswitch_8b
    .end packed-switch
.end method

.method private static greylist-max-o getFloatOrFraction(Landroid/content/res/TypedArray;IF)F
    .registers 7
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defaultValue"    # F

    .line 2008
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 2009
    .local v0, "tv":Landroid/util/TypedValue;
    move v1, p2

    .line 2010
    .local v1, "v":F
    if-eqz v0, :cond_1d

    .line 2011
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 2012
    .local v2, "vIsFraction":Z
    :goto_f
    if-eqz v2, :cond_18

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    goto :goto_1c

    :cond_18
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    :goto_1c
    move v1, v3

    .line 2014
    .end local v2    # "vIsFraction":Z
    :cond_1d
    return v1
.end method

.method private blacklist getStrokeLineCapForPaint(I)Landroid/graphics/Paint$Cap;
    .registers 3
    .param p1, "strokeLineCap"    # I

    .line 1172
    packed-switch p1, :pswitch_data_10

    .line 1176
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_e

    .line 1175
    :pswitch_6
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_e

    .line 1174
    :pswitch_9
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_e

    .line 1173
    :pswitch_c
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 1172
    :goto_e
    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private greylist-max-o inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 12
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1702
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1704
    .local v0, "innerDepth":I
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v1, :cond_c0

    .line 1705
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    .local v4, "depth":I
    if-ge v2, v0, :cond_17

    const/4 v2, 0x3

    if-eq v3, v2, :cond_c0

    .line 1707
    :cond_17
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1b

    .line 1708
    goto :goto_6

    .line 1711
    :cond_1b
    if-le v4, v0, :cond_1e

    .line 1712
    goto :goto_6

    .line 1715
    :cond_1e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1717
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v5, "size"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1718
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1719
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    .line 1720
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_be

    .line 1721
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_39
    const-string/jumbo v5, "gradient"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1722
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1723
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    .line 1724
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_be

    .line 1725
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_4f
    const-string/jumbo v5, "solid"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 1726
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1727
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    .line 1728
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_be

    .line 1729
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_65
    const-string/jumbo v5, "stroke"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 1730
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1731
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    .line 1732
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_be

    .line 1733
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_7b
    const-string v5, "corners"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 1734
    sget-object v5, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1735
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    .line 1736
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_be

    .line 1737
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_90
    const-string/jumbo v5, "padding"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 1738
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1739
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    .line 1740
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_be

    .line 1742
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_a6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad element under <shape>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    .end local v2    # "name":Ljava/lang/String;
    :goto_be
    goto/16 :goto_6

    .line 1745
    .end local v4    # "depth":I
    :cond_c0
    return-void
.end method

.method static greylist-max-o isOpaque(I)Z
    .registers 3
    .param p0, "color"    # I

    .line 2494
    shr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private greylist-max-o isOpaqueForState()Z
    .registers 3

    .line 2039
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_18

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 2040
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2041
    return v1

    .line 2046
    :cond_18
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2b

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2047
    return v1

    .line 2050
    :cond_2b
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o modulateAlpha(I)I
    .registers 4
    .param p1, "alpha"    # I

    .line 667
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shr-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 668
    .local v0, "scale":I
    mul-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private greylist-max-o setStrokeInternal(IIFF)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "color"    # I
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    .line 429
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 430
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 431
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 433
    :cond_13
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 434
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "e":Landroid/graphics/DashPathEffect;
    const/4 v2, 0x0

    cmpl-float v3, p3, v2

    if-lez v3, :cond_32

    .line 438
    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p3, v4, v5

    aput p4, v4, v1

    invoke-direct {v3, v4, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    move-object v0, v3

    .line 440
    :cond_32
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 441
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 442
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 443
    return-void
.end method

.method private greylist-max-o updateDrawableCorners(Landroid/content/res/TypedArray;)V
    .registers 23
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1769
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1772
    .local v2, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1775
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    .line 1777
    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 1779
    .local v3, "radius":I
    int-to-float v5, v3

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1782
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 1784
    .local v6, "topLeftRadius":I
    const/4 v7, 0x2

    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 1786
    .local v8, "topRightRadius":I
    const/4 v9, 0x3

    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 1788
    .local v10, "bottomLeftRadius":I
    const/4 v11, 0x4

    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 1790
    .local v12, "bottomRightRadius":I
    if-ne v6, v3, :cond_3d

    if-ne v8, v3, :cond_3d

    if-ne v10, v3, :cond_3d

    if-eq v12, v3, :cond_69

    .line 1793
    :cond_3d
    int-to-float v13, v6

    int-to-float v14, v6

    int-to-float v15, v8

    move/from16 v16, v4

    int-to-float v4, v8

    move/from16 v17, v5

    int-to-float v5, v12

    move/from16 v18, v7

    int-to-float v7, v12

    move/from16 v19, v9

    int-to-float v9, v10

    move/from16 v20, v11

    int-to-float v11, v10

    const/16 v1, 0x8

    new-array v1, v1, [F

    aput v13, v1, v16

    aput v14, v1, v17

    aput v15, v1, v18

    aput v4, v1, v19

    aput v5, v1, v20

    const/4 v4, 0x5

    aput v7, v1, v4

    const/4 v4, 0x6

    aput v9, v1, v4

    const/4 v4, 0x7

    aput v11, v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1800
    :cond_69
    return-void
.end method

.method private greylist-max-o updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    .registers 24
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .line 1851
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1854
    .local v2, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1857
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    .line 1859
    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    const/4 v4, 0x5

    invoke-static {v0, v4, v3}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1861
    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    const/4 v5, 0x6

    invoke-static {v0, v5, v3}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1863
    iget-boolean v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 1865
    const/4 v3, 0x4

    iget v7, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1868
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 1870
    .local v7, "startCSL":Landroid/content/res/ColorStateList;
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 1872
    .local v9, "centerCSL":Landroid/content/res/ColorStateList;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 1875
    .local v11, "endCSL":Landroid/content/res/ColorStateList;
    iget-object v12, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_4f

    move v12, v10

    goto :goto_50

    :cond_4f
    move v12, v3

    .line 1876
    .local v12, "hasGradientColors":Z
    :goto_50
    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->hasCenterColor()Z

    move-result v13

    .line 1878
    .local v13, "hasGradientCenter":Z
    if-eqz v7, :cond_5b

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v14

    goto :goto_5c

    :cond_5b
    move v14, v3

    .line 1879
    .local v14, "startColor":I
    :goto_5c
    if-eqz v9, :cond_63

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    goto :goto_64

    :cond_63
    move v15, v3

    .line 1880
    .local v15, "centerColor":I
    :goto_64
    if-eqz v11, :cond_6b

    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    goto :goto_6d

    :cond_6b
    move/from16 v16, v3

    .line 1882
    .local v16, "endColor":I
    :goto_6d
    if-eqz v12, :cond_80

    move/from16 v17, v3

    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, v17

    if-eqz v3, :cond_82

    .line 1883
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, v17

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v14

    goto :goto_82

    .line 1882
    :cond_80
    move/from16 v17, v3

    .line 1885
    :cond_82
    :goto_82
    if-eqz v13, :cond_92

    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, v10

    if-eqz v3, :cond_92

    .line 1886
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    .line 1888
    :cond_92
    if-eqz v13, :cond_a3

    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, v6

    if-eqz v3, :cond_a3

    .line 1890
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    goto :goto_b3

    .line 1891
    :cond_a3
    if-eqz v12, :cond_b3

    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, v10

    if-eqz v3, :cond_b3

    .line 1894
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    .line 1897
    :cond_b3
    :goto_b3
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_bf

    if-eqz v13, :cond_bc

    goto :goto_bf

    :cond_bc
    move/from16 v3, v17

    goto :goto_c0

    :cond_bf
    :goto_bf
    move v3, v10

    .line 1900
    .local v3, "hasCenterColor":Z
    :goto_c0
    const/4 v4, 0x3

    if-eqz v3, :cond_112

    .line 1901
    move/from16 v18, v10

    new-array v10, v4, [Landroid/content/res/ColorStateList;

    iput-object v10, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1902
    iget-object v10, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1903
    if-eqz v7, :cond_d0

    move-object/from16 v19, v7

    goto :goto_d4

    :cond_d0
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    :goto_d4
    aput-object v19, v10, v17

    .line 1904
    iget-object v10, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1905
    if-eqz v9, :cond_dd

    move-object/from16 v19, v9

    goto :goto_e1

    :cond_dd
    invoke-static {v15}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    :goto_e1
    aput-object v19, v10, v18

    .line 1906
    iget-object v10, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1907
    if-eqz v11, :cond_ea

    move-object/from16 v19, v11

    goto :goto_ee

    :cond_ea
    invoke-static/range {v16 .. v16}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    :goto_ee
    aput-object v19, v10, v6

    .line 1909
    new-array v10, v4, [F

    iput-object v10, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 1910
    iget-object v10, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/16 v19, 0x0

    aput v19, v10, v17

    .line 1912
    iget-object v10, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/high16 v19, 0x3f800000    # 1.0f

    iget v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    const/high16 v20, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v20

    if-eqz v8, :cond_109

    iget v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    goto :goto_10b

    :cond_109
    iget v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    :goto_10b
    aput v8, v10, v18

    .line 1913
    iget-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    aput v19, v8, v6

    goto :goto_132

    .line 1915
    :cond_112
    move/from16 v18, v10

    const/high16 v19, 0x3f800000    # 1.0f

    new-array v6, v6, [Landroid/content/res/ColorStateList;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1916
    iget-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1917
    if-eqz v7, :cond_120

    move-object v8, v7

    goto :goto_124

    :cond_120
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    :goto_124
    aput-object v8, v6, v17

    .line 1918
    iget-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1919
    if-eqz v11, :cond_12c

    move-object v8, v11

    goto :goto_130

    :cond_12c
    invoke-static/range {v16 .. v16}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    :goto_130
    aput-object v8, v6, v18

    .line 1922
    :goto_132
    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    int-to-float v6, v6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-int v4, v4

    .line 1930
    .local v4, "angle":I
    sget-boolean v6, Landroid/graphics/drawable/GradientDrawable;->sWrapNegativeAngleMeasurements:Z

    if-eqz v6, :cond_147

    .line 1931
    rem-int/lit16 v6, v4, 0x168

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v6, v6, 0x168

    iput v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    goto :goto_14b

    .line 1933
    :cond_147
    rem-int/lit16 v6, v4, 0x168

    iput v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    .line 1936
    :goto_14b
    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    if-ltz v6, :cond_17e

    .line 1937
    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    sparse-switch v6, :sswitch_data_1ba

    goto :goto_17d

    .line 1960
    :sswitch_155
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_17d

    .line 1957
    :sswitch_15a
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1958
    goto :goto_17d

    .line 1954
    :sswitch_15f
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1955
    goto :goto_17d

    .line 1951
    :sswitch_164
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1952
    goto :goto_17d

    .line 1948
    :sswitch_169
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1949
    goto :goto_17d

    .line 1945
    :sswitch_16e
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1946
    goto :goto_17d

    .line 1942
    :sswitch_173
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1943
    goto :goto_17d

    .line 1939
    :sswitch_178
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1940
    nop

    .line 1961
    :goto_17d
    goto :goto_182

    .line 1964
    :cond_17e
    sget-object v6, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1967
    :goto_182
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 1968
    .local v6, "tv":Landroid/util/TypedValue;
    if-eqz v6, :cond_1b9

    .line 1971
    iget v8, v6, Landroid/util/TypedValue;->type:I

    if-ne v8, v5, :cond_1a1

    .line 1972
    move/from16 v5, v19

    invoke-virtual {v6, v5, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    .line 1974
    .local v5, "radius":F
    iget v8, v6, Landroid/util/TypedValue;->data:I

    shr-int/lit8 v8, v8, 0x0

    and-int/lit8 v8, v8, 0xf

    .line 1976
    .local v8, "unit":I
    move/from16 v10, v18

    if-ne v8, v10, :cond_19f

    .line 1977
    const/4 v10, 0x2

    .local v10, "radiusType":I
    goto :goto_1a0

    .line 1979
    .end local v10    # "radiusType":I
    :cond_19f
    const/4 v10, 0x1

    .line 1981
    .end local v8    # "unit":I
    .restart local v10    # "radiusType":I
    :goto_1a0
    goto :goto_1b5

    .end local v5    # "radius":F
    .end local v10    # "radiusType":I
    :cond_1a1
    iget v5, v6, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x5

    if-ne v5, v8, :cond_1b0

    .line 1982
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    .line 1983
    .restart local v5    # "radius":F
    const/4 v10, 0x0

    .restart local v10    # "radiusType":I
    goto :goto_1b5

    .line 1985
    .end local v5    # "radius":F
    .end local v10    # "radiusType":I
    :cond_1b0
    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    .line 1986
    .restart local v5    # "radius":F
    const/4 v10, 0x0

    .line 1989
    .restart local v10    # "radiusType":I
    :goto_1b5
    iput v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1990
    iput v10, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    .line 1992
    .end local v5    # "radius":F
    .end local v10    # "radiusType":I
    :cond_1b9
    return-void

    :sswitch_data_1ba
    .sparse-switch
        0x0 -> :sswitch_178
        0x2d -> :sswitch_173
        0x5a -> :sswitch_16e
        0x87 -> :sswitch_169
        0xb4 -> :sswitch_164
        0xe1 -> :sswitch_15f
        0x10e -> :sswitch_15a
        0x13b -> :sswitch_155
    .end sparse-switch
.end method

.method private greylist-max-o updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V
    .registers 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1748
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1751
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1754
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    .line 1756
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-nez v1, :cond_1c

    .line 1757
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1760
    :cond_1c
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1761
    .local v1, "pad":Landroid/graphics/Rect;
    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 1762
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 1763
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 1764
    const/4 v6, 0x3

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 1761
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1765
    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 1766
    return-void
.end method

.method private greylist-max-o updateGradientDrawableSize(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1995
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1998
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 2001
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    .line 2003
    const/4 v1, 0x1

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 2004
    const/4 v1, 0x0

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 2005
    return-void
.end method

.method private greylist-max-o updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1835
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1838
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1841
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    .line 1843
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1845
    .local v1, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1b

    .line 1846
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 1848
    :cond_1b
    return-void
.end method

.method private greylist-max-o updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V
    .registers 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1803
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1806
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1809
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    .line 1813
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1814
    .local v1, "defaultStrokeWidth":I
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 1816
    .local v2, "width":I
    const/4 v3, 0x2

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 1819
    .local v3, "dashWidth":F
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 1821
    .local v4, "colorStateList":Landroid/content/res/ColorStateList;
    if-nez v4, :cond_2c

    .line 1822
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1825
    :cond_2c
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_3c

    .line 1826
    const/4 v5, 0x3

    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 1828
    .local v5, "dashGap":F
    invoke-virtual {p0, v2, v4, v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 1829
    .end local v5    # "dashGap":F
    goto :goto_3f

    .line 1830
    :cond_3c
    invoke-virtual {p0, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 1832
    :goto_3f
    return-void
.end method

.method private greylist-max-o updateLocalState(Landroid/content/res/Resources;)V
    .registers 10
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 2511
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2513
    .local v0, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 2514
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    .line 2515
    .local v1, "currentState":[I
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 2516
    .local v3, "stateColor":I
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2517
    .end local v1    # "currentState":[I
    .end local v3    # "stateColor":I
    goto :goto_28

    :cond_17
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-nez v1, :cond_21

    .line 2521
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_28

    .line 2524
    :cond_21
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2527
    :goto_28
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 2529
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v3, 0x1

    if-ltz v1, :cond_76

    .line 2530
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 2531
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2532
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2534
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_5a

    .line 2535
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    .line 2536
    .restart local v1    # "currentState":[I
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 2538
    .local v4, "strokeStateColor":I
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2541
    .end local v1    # "currentState":[I
    .end local v4    # "strokeStateColor":I
    :cond_5a
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_76

    .line 2542
    new-instance v1, Landroid/graphics/DashPathEffect;

    iget v5, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v5, v7, v2

    aput v6, v7, v3

    invoke-direct {v1, v7, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 2544
    .local v1, "e":Landroid/graphics/DashPathEffect;
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 2548
    .end local v1    # "e":Landroid/graphics/DashPathEffect;
    :cond_76
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 2550
    iput-boolean v3, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 2552
    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->-$$Nest$mcomputeOpacity(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 2553
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 10
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1587
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1590
    .local v0, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1593
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    .line 1595
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1596
    const/4 v1, 0x0

    iget-boolean v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 1598
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v3, 0x4

    const/4 v4, -0x1

    if-eq v1, v2, :cond_2d

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    if-ne v1, v3, :cond_6c

    .line 1599
    :cond_2d
    const/4 v1, 0x7

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 1602
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-ne v1, v4, :cond_42

    .line 1603
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 1607
    :cond_42
    const/16 v1, 0x8

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 1610
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-ne v1, v4, :cond_59

    .line 1611
    const/4 v1, 0x5

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 1615
    :cond_59
    const/4 v1, 0x6

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 1618
    const/16 v1, 0xe

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeCap:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeCap:I

    .line 1622
    :cond_6c
    const/16 v1, 0x9

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1623
    .local v1, "tintMode":I
    if-eq v1, v4, :cond_7c

    .line 1624
    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1627
    :cond_7c
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1628
    .local v2, "tint":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_85

    .line 1629
    iput-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1632
    :cond_85
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->left:I

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 1634
    .local v3, "insetLeft":I
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->top:I

    const/16 v5, 0xb

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 1636
    .local v4, "insetTop":I
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v5, v5, Landroid/graphics/Insets;->right:I

    const/16 v6, 0xc

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 1638
    .local v5, "insetRight":I
    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v6, v6, Landroid/graphics/Insets;->bottom:I

    const/16 v7, 0xd

    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 1640
    .local v6, "insetBottom":I
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v7

    iput-object v7, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 1641
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 6
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 1542
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 1544
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1545
    .local v0, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    if-nez v0, :cond_8

    .line 1546
    return-void

    .line 1549
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    .line 1551
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    if-eqz v1, :cond_26

    .line 1552
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1554
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1555
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1558
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_26
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3a

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1559
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1562
    :cond_3a
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4e

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1563
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 1566
    :cond_4e
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_62

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1567
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1570
    :cond_62
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_8b

    .line 1571
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_67
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v2, v2

    if-ge v1, v2, :cond_8b

    .line 1572
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    if-eqz v2, :cond_88

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 1573
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1571
    :cond_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 1578
    .end local v1    # "i":I
    :cond_8b
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->applyThemeChildElements(Landroid/content/res/Resources$Theme;)V

    .line 1580
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 1581
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 1645
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .registers 2

    .line 2115
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 2116
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 2117
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 764
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    move-result v1

    if-nez v1, :cond_9

    .line 766
    return-void

    .line 771
    :cond_9
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    .line 772
    .local v7, "prevFillAlpha":I
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    move v9, v1

    .line 774
    .local v9, "prevStrokeAlpha":I
    invoke-direct {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v10

    .line 775
    .local v10, "currFillAlpha":I
    invoke-direct {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v11

    .line 777
    .local v11, "currStrokeAlpha":I
    const/4 v1, 0x1

    const/4 v12, 0x0

    if-lez v11, :cond_38

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_38

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 778
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    cmpl-float v2, v2, v12

    if-lez v2, :cond_38

    move v2, v1

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    move v13, v2

    .line 779
    .local v13, "haveStroke":Z
    if-lez v10, :cond_3e

    move v2, v1

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    move v14, v2

    .line 780
    .local v14, "haveFill":Z
    iget-object v15, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 781
    .local v15, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v2, :cond_49

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_4b

    :cond_49
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 788
    .local v2, "colorFilter":Landroid/graphics/ColorFilter;
    :goto_4b
    if-eqz v13, :cond_5f

    if-eqz v14, :cond_5f

    iget v3, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5f

    const/16 v3, 0xff

    if-ge v11, v3, :cond_5f

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-lt v4, v3, :cond_5e

    if-eqz v2, :cond_5f

    :cond_5e
    goto :goto_60

    :cond_5f
    const/4 v1, 0x0

    :goto_60
    move/from16 v16, v1

    .line 798
    .local v16, "useLayer":Z
    if-eqz v16, :cond_b5

    .line 799
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_6f

    .line 800
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    .line 802
    :cond_6f
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    iget-boolean v3, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 803
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 804
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 806
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    .line 807
    .local v17, "rad":F
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v1, v1, v17

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float v3, v3, v17

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float v4, v4, v17

    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float v5, v5, v17

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v8, v2

    move v2, v1

    move-object/from16 v1, p1

    .end local v2    # "colorFilter":Landroid/graphics/ColorFilter;
    .local v8, "colorFilter":Landroid/graphics/ColorFilter;
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 813
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 814
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 815
    .end local v17    # "rad":F
    goto :goto_e9

    .line 819
    .end local v8    # "colorFilter":Landroid/graphics/ColorFilter;
    .restart local v2    # "colorFilter":Landroid/graphics/ColorFilter;
    :cond_b5
    move-object v8, v2

    .end local v2    # "colorFilter":Landroid/graphics/ColorFilter;
    .restart local v8    # "colorFilter":Landroid/graphics/ColorFilter;
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 820
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-boolean v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 821
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 822
    if-eqz v8, :cond_d6

    iget-object v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_d6

    .line 823
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 825
    :cond_d6
    if-eqz v13, :cond_e9

    .line 826
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 827
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-boolean v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 828
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 832
    :cond_e9
    :goto_e9
    iget v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    packed-switch v1, :pswitch_data_286

    move-object/from16 v1, p1

    goto/16 :goto_272

    .line 877
    :pswitch_f2
    invoke-static {}, Lcom/android/graphics/flags/Flags;->gradientDrawableShapeArcForRoundedCap()Z

    move-result v1

    if-eqz v1, :cond_1c4

    .line 879
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v17

    .line 880
    .local v17, "centerX":F
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v18

    .line 882
    .local v18, "centerY":F
    iget v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10d

    iget v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    int-to-float v1, v1

    goto :goto_116

    .line 883
    :cond_10d
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    div-float/2addr v1, v3

    :goto_116
    nop

    .line 884
    .local v1, "thickness":F
    iget v3, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-eq v3, v2, :cond_11f

    iget v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    int-to-float v2, v2

    goto :goto_128

    .line 885
    :cond_11f
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    div-float/2addr v2, v3

    :goto_128
    nop

    .line 886
    .local v2, "radius":F
    sub-float v19, v2, v1

    .line 887
    .end local v2    # "radius":F
    .local v19, "radius":F
    iget-boolean v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    const/high16 v20, 0x43b40000    # 360.0f

    if-eqz v2, :cond_13e

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v2, v3

    move v4, v2

    goto :goto_140

    :cond_13e
    move/from16 v4, v20

    .line 888
    .local v4, "sweep":F
    :goto_140
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    sub-float v3, v17, v19

    sub-float v5, v18, v19

    add-float v6, v17, v19

    add-float v12, v18, v19

    invoke-virtual {v2, v3, v5, v6, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 892
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 893
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 894
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v3, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeCap:I

    invoke-direct {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->getStrokeLineCapForPaint(I)Landroid/graphics/Paint$Cap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 895
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move v12, v1

    move-object/from16 v1, p1

    .end local v1    # "thickness":F
    .local v12, "thickness":F
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 897
    if-eqz v13, :cond_1bb

    .line 898
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcPath:Landroid/graphics/Path;

    if-nez v2, :cond_17e

    .line 899
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcPath:Landroid/graphics/Path;

    goto :goto_183

    .line 901
    :cond_17e
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 903
    :goto_183
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcOutlinePath:Landroid/graphics/Path;

    if-nez v2, :cond_18f

    .line 904
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcOutlinePath:Landroid/graphics/Path;

    goto :goto_194

    .line 906
    :cond_18f
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 908
    :goto_194
    cmpl-float v2, v4, v20

    if-nez v2, :cond_1a2

    .line 909
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcPath:Landroid/graphics/Path;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_1ab

    .line 911
    :cond_1a2
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcPath:Landroid/graphics/Path;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 917
    :goto_1ab
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mArcPath:Landroid/graphics/Path;

    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mArcOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Paint;->getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z

    .line 918
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcOutlinePath:Landroid/graphics/Path;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 922
    :cond_1bb
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 923
    goto/16 :goto_272

    .line 877
    .end local v4    # "sweep":F
    .end local v12    # "thickness":F
    .end local v17    # "centerX":F
    .end local v18    # "centerY":F
    .end local v19    # "radius":F
    :cond_1c4
    move-object/from16 v1, p1

    goto :goto_1c9

    .line 832
    :pswitch_1c7
    move-object/from16 v1, p1

    .line 926
    :goto_1c9
    invoke-direct {v0, v15}, Landroid/graphics/drawable/GradientDrawable;->buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;

    move-result-object v2

    .line 927
    .local v2, "path":Landroid/graphics/Path;
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 928
    if-eqz v13, :cond_272

    .line 929
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_272

    .line 869
    .end local v2    # "path":Landroid/graphics/Path;
    :pswitch_1db
    move-object/from16 v1, p1

    iget-object v12, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 870
    .local v12, "r":Landroid/graphics/RectF;
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 871
    .local v3, "y":F
    if-eqz v13, :cond_272

    .line 872
    iget v2, v12, Landroid/graphics/RectF;->left:F

    iget v4, v12, Landroid/graphics/RectF;->right:F

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_272

    .line 863
    .end local v3    # "y":F
    .end local v12    # "r":Landroid/graphics/RectF;
    :pswitch_1f1
    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 864
    if-eqz v13, :cond_272

    .line 865
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_272

    .line 834
    :pswitch_204
    move-object/from16 v1, p1

    iget-object v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v2, :cond_21e

    .line 835
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    .line 836
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 837
    if-eqz v13, :cond_272

    .line 838
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_272

    .line 840
    :cond_21e
    iget v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/16 v21, 0x0

    cmpl-float v2, v2, v21

    if-lez v2, :cond_250

    .line 846
    iget v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 847
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 846
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 848
    .local v2, "rad":F
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 849
    if-eqz v13, :cond_24f

    .line 850
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 852
    .end local v2    # "rad":F
    :cond_24f
    goto :goto_272

    .line 853
    :cond_250
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-nez v2, :cond_262

    if-nez v8, :cond_262

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 854
    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eqz v2, :cond_269

    .line 855
    :cond_262
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 857
    :cond_269
    if-eqz v13, :cond_272

    .line 858
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 934
    :cond_272
    :goto_272
    if-eqz v16, :cond_278

    .line 935
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_284

    .line 937
    :cond_278
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 938
    if-eqz v13, :cond_284

    .line 939
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 942
    :cond_284
    :goto_284
    return-void

    nop

    :pswitch_data_286
    .packed-switch 0x0
        :pswitch_204
        :pswitch_1f1
        :pswitch_1db
        :pswitch_1c7
        :pswitch_f2
    .end packed-switch
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 1314
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 1301
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1237
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1328
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getColors()[I
    .registers 4

    .line 749
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-nez v0, :cond_8

    .line 750
    const/4 v0, 0x0

    return-object v0

    .line 752
    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v0, v0

    new-array v0, v0, [I

    .line 753
    .local v0, "colors":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v2, v2

    if-ge v1, v2, :cond_2e

    .line 754
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2b

    .line 755
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    aput v2, v0, v1

    .line 753
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 758
    .end local v1    # "i":I
    :cond_2e
    return-object v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 2034
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 2035
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    return-object v0
.end method

.method public whitelist getCornerRadii()[F
    .registers 3

    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 303
    .local v0, "radii":[F
    if-nez v0, :cond_8

    .line 304
    const/4 v1, 0x0

    return-object v1

    .line 306
    :cond_8
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    return-object v1
.end method

.method public whitelist getCornerRadius()F
    .registers 2

    .line 342
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    return v0
.end method

.method public whitelist getGradientCenterX()F
    .registers 2

    .line 558
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return v0
.end method

.method public whitelist getGradientCenterY()F
    .registers 2

    .line 569
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return v0
.end method

.method public whitelist getGradientRadius()F
    .registers 3

    .line 600
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 601
    const/4 v0, 0x0

    return v0

    .line 604
    :cond_9
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    .line 605
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    return v0
.end method

.method public whitelist getGradientType()I
    .registers 2

    .line 523
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    return v0
.end method

.method public whitelist getInnerRadius()I
    .registers 2

    .line 1017
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    return v0
.end method

.method public whitelist getInnerRadiusRatio()F
    .registers 2

    .line 995
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    return v0
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 2024
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 2019
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 3

    .line 1357
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->isOpaqueForState()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1358
    const/4 v0, -0x1

    goto :goto_15

    :cond_14
    const/4 v0, -0x3

    .line 1357
    :goto_15
    return v0
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    .line 2029
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .registers 2

    .line 678
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 11
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 2055
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2056
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2059
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-lez v2, :cond_22

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 2061
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    if-ne v2, v3, :cond_24

    :cond_22
    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 2062
    .local v2, "useFillOpacity":Z
    :goto_25
    const/4 v3, 0x0

    if-eqz v2, :cond_37

    .line 2063
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    goto :goto_38

    .line 2064
    :cond_37
    move v4, v3

    .line 2062
    :goto_38
    invoke-virtual {p1, v4}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 2066
    iget v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/high16 v5, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_a0

    .line 2099
    return-void

    .line 2088
    :pswitch_43
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v3, :cond_4b

    .line 2089
    const v3, 0x38d1b717    # 1.0E-4f

    goto :goto_52

    :cond_4b
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    mul-float/2addr v3, v5

    .line 2090
    .local v3, "halfStrokeWidth":F
    :goto_52
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    .line 2091
    .local v4, "centerY":F
    sub-float v5, v4, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 2092
    .local v5, "top":I
    add-float v6, v4, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 2094
    .local v6, "bottom":I
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v7, v5, v8, v6}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 2095
    return-void

    .line 2083
    .end local v3    # "halfStrokeWidth":F
    .end local v4    # "centerY":F
    .end local v5    # "top":I
    .end local v6    # "bottom":I
    :pswitch_6f
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 2084
    return-void

    .line 2068
    :pswitch_73
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v4, :cond_80

    .line 2069
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    .line 2070
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 2071
    return-void

    .line 2074
    :cond_80
    const/4 v4, 0x0

    .line 2075
    .local v4, "rad":F
    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    cmpl-float v3, v6, v3

    if-lez v3, :cond_9b

    .line 2077
    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 2078
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    .line 2077
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 2080
    :cond_9b
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 2081
    return-void

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_73
        :pswitch_6f
        :pswitch_43
    .end packed-switch
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 257
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_b

    .line 258
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 259
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_b
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public whitelist getShape()I
    .registers 2

    .line 491
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    return v0
.end method

.method public blacklist getStrokeCap()I
    .registers 2

    .line 1079
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeCap:I

    return v0
.end method

.method public whitelist getThickness()I
    .registers 2

    .line 1064
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    return v0
.end method

.method public whitelist getThicknessRatio()F
    .registers 2

    .line 1043
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    return v0
.end method

.method public whitelist getUseLevel()Z
    .registers 2

    .line 663
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 3

    .line 1293
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1294
    .local v0, "s":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-nez v1, :cond_26

    :cond_e
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1295
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-nez v1, :cond_26

    :cond_1a
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_28

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1296
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_26
    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 1294
    :goto_29
    return v1
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1527
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 1529
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    .line 1531
    sget-object v0, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1532
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1533
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1535
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 1537
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 1538
    return-void
.end method

.method public whitelist isStateful()Z
    .registers 3

    .line 1284
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1285
    .local v0, "s":Landroid/graphics/drawable/GradientDrawable$GradientState;
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_14

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 1286
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_14
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_20

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1287
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_20
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2d

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1288
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v1, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v1, 0x1

    .line 1285
    :goto_30
    return v1
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 2103
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    if-nez v0, :cond_1a

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1a

    .line 2104
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2105
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 2106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 2108
    :cond_1a
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 1363
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 1364
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 1365
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1366
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 1367
    return-void
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 3
    .param p1, "level"    # I

    .line 1371
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 1372
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 1373
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1374
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1375
    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .registers 10
    .param p1, "stateSet"    # [I

    .line 1242
    const/4 v0, 0x0

    .line 1244
    .local v0, "invalidateSelf":Z
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1245
    .local v1, "s":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 1246
    .local v2, "solidColors":Landroid/content/res/ColorStateList;
    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    .line 1247
    invoke-virtual {v2, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1248
    .local v4, "newColor":I
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 1249
    .local v5, "oldColor":I
    if-eq v5, v4, :cond_1a

    .line 1250
    iget-object v6, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1251
    const/4 v0, 0x1

    .line 1255
    .end local v4    # "newColor":I
    .end local v5    # "oldColor":I
    :cond_1a
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 1256
    .local v4, "strokePaint":Landroid/graphics/Paint;
    if-eqz v4, :cond_30

    .line 1257
    iget-object v5, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1258
    .local v5, "strokeColors":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_30

    .line 1259
    invoke-virtual {v5, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 1260
    .local v6, "newColor":I
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    .line 1261
    .local v7, "oldColor":I
    if-eq v7, v6, :cond_30

    .line 1262
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1263
    const/4 v0, 0x1

    .line 1268
    .end local v5    # "strokeColors":Landroid/content/res/ColorStateList;
    .end local v6    # "newColor":I
    .end local v7    # "oldColor":I
    :cond_30
    iget-object v5, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_45

    iget-object v5, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    if-eqz v5, :cond_45

    .line 1269
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v6, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v7, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v5

    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 1271
    const/4 v0, 0x1

    .line 1274
    :cond_45
    if-eqz v0, :cond_4c

    .line 1275
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1276
    const/4 v3, 0x1

    return v3

    .line 1279
    :cond_4c
    return v3
.end method

.method public whitelist setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 1306
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_9

    .line 1307
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 1308
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1310
    :cond_9
    return-void
.end method

.method public greylist-max-o setAntiAlias(Z)V
    .registers 3
    .param p1, "aa"    # Z

    .line 959
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 960
    return-void
.end method

.method public whitelist setColor(I)V
    .registers 4
    .param p1, "argb"    # I

    .line 1194
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    .line 1195
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1196
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1197
    return-void
.end method

.method public whitelist setColor(Landroid/content/res/ColorStateList;)V
    .registers 5
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 1215
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 1216
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1c

    .line 1218
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    .line 1219
    .local v1, "stateSet":[I
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1220
    .local v0, "color":I
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    .line 1221
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1222
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1224
    .end local v0    # "color":I
    .end local v1    # "stateSet":[I
    :goto_1c
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 1333
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_9

    .line 1334
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1335
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1337
    :cond_9
    return-void
.end method

.method public whitelist setColors([I)V
    .registers 3
    .param p1, "colors"    # [I

    .line 714
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I[F)V

    .line 715
    return-void
.end method

.method public whitelist setColors([I[F)V
    .registers 4
    .param p1, "colors"    # [I
    .param p2, "offsets"    # [F

    .line 734
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    .line 735
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 737
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 738
    return-void
.end method

.method public whitelist setCornerRadii([F)V
    .registers 3
    .param p1, "radii"    # [F

    .line 283
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadii([F)V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 285
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 286
    return-void
.end method

.method public whitelist setCornerRadius(F)V
    .registers 3
    .param p1, "radius"    # F

    .line 326
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadius(F)V

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 328
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 329
    return-void
.end method

.method public whitelist setDither(Z)V
    .registers 3
    .param p1, "dither"    # Z

    .line 1319
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    if-eq p1, v0, :cond_d

    .line 1320
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 1321
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1323
    :cond_d
    return-void
.end method

.method public whitelist setGradientCenter(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 545
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientCenter(FF)V

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 547
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 548
    return-void
.end method

.method public whitelist setGradientRadius(F)V
    .registers 4
    .param p1, "gradientRadius"    # F

    .line 587
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientRadius(FI)V

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 589
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 590
    return-void
.end method

.method public whitelist setGradientType(I)V
    .registers 3
    .param p1, "gradient"    # I

    .line 508
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientType(I)V

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 510
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 511
    return-void
.end method

.method public whitelist setInnerRadius(I)V
    .registers 3
    .param p1, "innerRadius"    # I

    .line 1005
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 1006
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1007
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1008
    return-void
.end method

.method public whitelist setInnerRadiusRatio(F)V
    .registers 4
    .param p1, "innerRadiusRatio"    # F

    .line 980
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_10

    .line 983
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 984
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 985
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 986
    return-void

    .line 981
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ratio must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V
    .registers 3
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 694
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 696
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 697
    return-void
.end method

.method public whitelist setPadding(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1110
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_f

    .line 1111
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1114
    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1115
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 1116
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1117
    return-void
.end method

.method public whitelist setShape(I)V
    .registers 3
    .param p1, "shape"    # I

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 478
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setShape(I)V

    .line 479
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 480
    return-void
.end method

.method public whitelist setSize(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 459
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSize(II)V

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 461
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 462
    return-void
.end method

.method public whitelist setStroke(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "color"    # I

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 360
    return-void
.end method

.method public whitelist setStroke(IIFF)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "color"    # I
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    .line 395
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 396
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    .line 397
    return-void
.end method

.method public whitelist setStroke(ILandroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 377
    return-void
.end method

.method public whitelist setStroke(ILandroid/content/res/ColorStateList;FF)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    .line 417
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 419
    if-nez p2, :cond_9

    .line 420
    const/4 v0, 0x0

    .local v0, "color":I
    goto :goto_13

    .line 422
    .end local v0    # "color":I
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v0

    .line 423
    .local v0, "stateSet":[I
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    move v0, v1

    .line 425
    .local v0, "color":I
    :goto_13
    invoke-direct {p0, p1, v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    .line 426
    return-void
.end method

.method public blacklist setStrokeCap(I)V
    .registers 3
    .param p1, "strokeCapType"    # I

    .line 1093
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeCap:I

    .line 1094
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1095
    return-void
.end method

.method public whitelist setThickness(I)V
    .registers 3
    .param p1, "thickness"    # I

    .line 1052
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 1053
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1054
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1055
    return-void
.end method

.method public whitelist setThicknessRatio(F)V
    .registers 4
    .param p1, "thicknessRatio"    # F

    .line 1028
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_10

    .line 1031
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1033
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1034
    return-void

    .line 1029
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ratio must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 1349
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1350
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 1352
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1353
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 1341
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1342
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1343
    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 1344
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1345
    return-void
.end method

.method public whitelist setUseLevel(Z)V
    .registers 3
    .param p1, "useLevel"    # Z

    .line 648
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 650
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 651
    return-void
.end method

.method public greylist-max-o setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .line 950
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 951
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 952
    return-void
.end method
