.class Landroid/support/v4/widget/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/MaterialProgressDrawable$ProgressDrawableSize;,
        Landroid/support/v4/widget/MaterialProgressDrawable$Ring;,
        Landroid/support/v4/widget/MaterialProgressDrawable$1;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x534

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 5.0f

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final COLOR_START_DELAY_OFFSET:F = 0.75f

.field static final DEFAULT:I = 0x1

.field private static final END_TRIM_START_DELAY_OFFSET:F = 0.5f

.field private static final FULL_ROTATION:F = 1080.0f

.field static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final START_TRIM_DURATION_OFFSET:F = 0.5f

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private final COLORS:[I

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mWidth:D


# direct methods
.method static synthetic -get0()Landroid/view/animation/Interpolator;
    .locals 1

    #@0
    sget-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/widget/MaterialProgressDrawable;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/support/v4/widget/MaterialProgressDrawable;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F
    .locals 1
    .param p1, "ring"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->applyFinishTranslation(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 53
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@7
    .line 54
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    #@9
    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    #@c
    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@e
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 119
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    .line 75
    new-array v0, v3, [I

    #@6
    .line 76
    const/high16 v1, -0x1000000

    #@8
    const/4 v2, 0x0

    #@9
    aput v1, v0, v2

    #@b
    .line 75
    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->COLORS:[I

    #@d
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    #@14
    .line 450
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$1;

    #@16
    invoke-direct {v0, p0}, Landroid/support/v4/widget/MaterialProgressDrawable$1;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;)V

    #@19
    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    #@1b
    .line 120
    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    #@1d
    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    #@23
    .line 123
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@25
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    #@27
    invoke-direct {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    #@2a
    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2c
    .line 124
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2e
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->COLORS:[I

    #@30
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V

    #@33
    .line 126
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    #@36
    .line 127
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->setupAnimators()V

    #@39
    .line 119
    return-void
.end method

.method private applyFinishTranslation(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@0
    .prologue
    .line 348
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    #@3
    .line 349
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    #@6
    move-result v4

    #@7
    const v5, 0x3f4ccccd    # 0.8f

    #@a
    div-float/2addr v4, v5

    #@b
    float-to-double v4, v4

    #@c
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    #@f
    move-result-wide v4

    #@10
    .line 350
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@12
    .line 349
    add-double/2addr v4, v6

    #@13
    double-to-float v3, v4

    #@14
    .line 351
    .local v3, "targetRotation":F
    invoke-direct {p0, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    #@17
    move-result v0

    #@18
    .line 352
    .local v0, "minProgressArc":F
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    #@1b
    move-result v4

    #@1c
    .line 353
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    #@1f
    move-result v5

    #@20
    sub-float/2addr v5, v0

    #@21
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    #@24
    move-result v6

    #@25
    sub-float/2addr v5, v6

    #@26
    mul-float/2addr v5, p1

    #@27
    .line 352
    add-float v2, v4, v5

    #@29
    .line 355
    .local v2, "startTrim":F
    invoke-virtual {p2, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    #@2c
    .line 356
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    #@2f
    move-result v4

    #@30
    invoke-virtual {p2, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    #@33
    .line 357
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    #@36
    move-result v4

    #@37
    .line 358
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    #@3a
    move-result v5

    #@3b
    sub-float v5, v3, v5

    #@3d
    mul-float/2addr v5, p1

    #@3e
    .line 357
    add-float v1, v4, v5

    #@40
    .line 359
    .local v1, "rotation":F
    invoke-virtual {p2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    #@43
    .line 344
    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 12
    .param p1, "fraction"    # F
    .param p2, "startValue"    # I
    .param p3, "endValue"    # I

    #@0
    .prologue
    .line 310
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v10

    #@4
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@7
    move-result v8

    #@8
    .line 311
    .local v8, "startInt":I
    shr-int/lit8 v10, v8, 0x18

    #@a
    and-int/lit16 v5, v10, 0xff

    #@c
    .line 312
    .local v5, "startA":I
    shr-int/lit8 v10, v8, 0x10

    #@e
    and-int/lit16 v9, v10, 0xff

    #@10
    .line 313
    .local v9, "startR":I
    shr-int/lit8 v10, v8, 0x8

    #@12
    and-int/lit16 v7, v10, 0xff

    #@14
    .line 314
    .local v7, "startG":I
    and-int/lit16 v6, v8, 0xff

    #@16
    .line 316
    .local v6, "startB":I
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v10

    #@1a
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@1d
    move-result v3

    #@1e
    .line 317
    .local v3, "endInt":I
    shr-int/lit8 v10, v3, 0x18

    #@20
    and-int/lit16 v0, v10, 0xff

    #@22
    .line 318
    .local v0, "endA":I
    shr-int/lit8 v10, v3, 0x10

    #@24
    and-int/lit16 v4, v10, 0xff

    #@26
    .line 319
    .local v4, "endR":I
    shr-int/lit8 v10, v3, 0x8

    #@28
    and-int/lit16 v2, v10, 0xff

    #@2a
    .line 320
    .local v2, "endG":I
    and-int/lit16 v1, v3, 0xff

    #@2c
    .line 322
    .local v1, "endB":I
    sub-int v10, v0, v5

    #@2e
    int-to-float v10, v10

    #@2f
    mul-float/2addr v10, p1

    #@30
    float-to-int v10, v10

    #@31
    add-int/2addr v10, v5

    #@32
    shl-int/lit8 v10, v10, 0x18

    #@34
    .line 323
    sub-int v11, v4, v9

    #@36
    int-to-float v11, v11

    #@37
    mul-float/2addr v11, p1

    #@38
    float-to-int v11, v11

    #@39
    add-int/2addr v11, v9

    #@3a
    shl-int/lit8 v11, v11, 0x10

    #@3c
    .line 322
    or-int/2addr v10, v11

    #@3d
    .line 324
    sub-int v11, v2, v7

    #@3f
    int-to-float v11, v11

    #@40
    mul-float/2addr v11, p1

    #@41
    float-to-int v11, v11

    #@42
    add-int/2addr v11, v7

    #@43
    shl-int/lit8 v11, v11, 0x8

    #@45
    .line 322
    or-int/2addr v10, v11

    #@46
    .line 325
    sub-int v11, v1, v6

    #@48
    int-to-float v11, v11

    #@49
    mul-float/2addr v11, p1

    #@4a
    float-to-int v11, v11

    #@4b
    add-int/2addr v11, v6

    #@4c
    .line 322
    or-int/2addr v10, v11

    #@4d
    return v10
.end method

.method private getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F
    .locals 6
    .param p1, "ring"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@0
    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    #@3
    move-result v0

    #@4
    float-to-double v0, v0

    #@5
    invoke-virtual {p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getCenterRadius()D

    #@8
    move-result-wide v2

    #@9
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    #@e
    mul-double/2addr v2, v4

    #@f
    div-double/2addr v0, v2

    #@10
    .line 304
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@13
    move-result-wide v0

    #@14
    double-to-float v0, v0

    #@15
    return v0
.end method

.method private getRotation()F
    .locals 1

    #@0
    .prologue
    .line 256
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F

    #@2
    return v0
.end method

.method private setSizeParameters(DDDDFF)V
    .locals 7
    .param p1, "progressCircleWidth"    # D
    .param p3, "progressCircleHeight"    # D
    .param p5, "centerRadius"    # D
    .param p7, "strokeWidth"    # D
    .param p9, "arrowWidth"    # F
    .param p10, "arrowHeight"    # F

    #@0
    .prologue
    .line 132
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2
    .line 133
    .local v1, "ring":Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    #@4
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    .line 134
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    #@a
    .line 136
    .local v2, "screenDensity":F
    float-to-double v4, v2

    #@b
    mul-double/2addr v4, p1

    #@c
    iput-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D

    #@e
    .line 137
    float-to-double v4, v2

    #@f
    mul-double/2addr v4, p3

    #@10
    iput-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D

    #@12
    .line 138
    double-to-float v3, p7

    #@13
    mul-float/2addr v3, v2

    #@14
    invoke-virtual {v1, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    #@17
    .line 139
    float-to-double v4, v2

    #@18
    mul-double/2addr v4, p5

    #@19
    invoke-virtual {v1, v4, v5}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    #@1c
    .line 140
    const/4 v3, 0x0

    #@1d
    invoke-virtual {v1, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    #@20
    .line 141
    mul-float v3, p9, v2

    #@22
    mul-float v4, p10, v2

    #@24
    invoke-virtual {v1, v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    #@27
    .line 142
    iget-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D

    #@29
    double-to-int v3, v4

    #@2a
    iget-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D

    #@2c
    double-to-int v4, v4

    #@2d
    invoke-virtual {v1, v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setInsets(II)V

    #@30
    .line 131
    return-void
.end method

.method private setupAnimators()V
    .locals 3

    #@0
    .prologue
    .line 363
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2
    .line 364
    .local v1, "ring":Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$2;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$2;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    #@7
    .line 416
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v2, -0x1

    #@8
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    #@b
    .line 417
    const/4 v2, 0x1

    #@c
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    #@f
    .line 418
    sget-object v2, Landroid/support/v4/widget/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@11
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@14
    .line 419
    new-instance v2, Landroid/support/v4/widget/MaterialProgressDrawable$3;

    #@16
    invoke-direct {v2, p0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$3;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    #@19
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@1c
    .line 447
    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    #@1e
    .line 362
    return-void
.end method

.method private updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@0
    .prologue
    const/high16 v1, 0x3f400000    # 0.75f

    #@2
    .line 334
    cmpl-float v0, p1, v1

    #@4
    if-lez v0, :cond_0

    #@6
    .line 338
    sub-float v0, p1, v1

    #@8
    .line 339
    const/high16 v1, 0x3e800000    # 0.25f

    #@a
    .line 338
    div-float/2addr v0, v1

    #@b
    .line 339
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingColor()I

    #@e
    move-result v1

    #@f
    .line 340
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getNextColor()I

    #@12
    move-result v2

    #@13
    .line 338
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->evaluateColorChange(FII)I

    #@16
    move-result v0

    #@17
    invoke-virtual {p2, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColor(I)V

    #@1a
    .line 333
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    .line 228
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@7
    move-result v1

    #@8
    .line 229
    .local v1, "saveCount":I
    iget v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F

    #@a
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    #@d
    move-result v3

    #@e
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    #@11
    move-result v4

    #@12
    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@15
    .line 230
    iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@17
    invoke-virtual {v2, p1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    #@1a
    .line 231
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@1d
    .line 226
    return-void
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getAlpha()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    #@0
    .prologue
    .line 217
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D

    #@2
    double-to-int v0, v0

    #@3
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    #@0
    .prologue
    .line 222
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D

    #@2
    double-to-int v0, v0

    #@3
    return v0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 261
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public isRunning()Z
    .locals 5

    #@0
    .prologue
    .line 266
    iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    #@2
    .line 267
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 268
    .local v0, "N":I
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    #@9
    .line 269
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/view/animation/Animation;

    #@f
    .line 270
    .local v1, "animator":Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 268
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 271
    :cond_1
    const/4 v4, 0x1

    #@1f
    return v4

    #@20
    .line 274
    .end local v1    # "animator":Landroid/view/animation/Animation;
    :cond_2
    const/4 v4, 0x0

    #@21
    return v4
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setAlpha(I)V

    #@5
    .line 235
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    #@5
    .line 172
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    #@5
    .line 199
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@5
    .line 244
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V

    #@5
    .line 212
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    #@b
    .line 210
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    #@5
    .line 192
    return-void
.end method

.method setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    #@0
    .prologue
    .line 250
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F

    #@2
    .line 251
    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->invalidateSelf()V

    #@5
    .line 249
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1
    .param p1, "startAngle"    # F
    .param p2, "endAngle"    # F

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    #@5
    .line 184
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@7
    invoke-virtual {v0, p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    #@a
    .line 182
    return-void
.end method

.method public showArrow(Z)V
    .locals 1
    .param p1, "show"    # Z

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    #@5
    .line 165
    return-void
.end method

.method public start()V
    .locals 4

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    #@2
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    #@5
    .line 280
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@7
    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->storeOriginals()V

    #@a
    .line 282
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@c
    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getEndTrim()F

    #@f
    move-result v0

    #@10
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@12
    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartTrim()F

    #@15
    move-result v1

    #@16
    cmpl-float v0, v0, v1

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 283
    const/4 v0, 0x1

    #@1b
    iput-boolean v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    #@1d
    .line 284
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    #@1f
    const-wide/16 v2, 0x29a

    #@21
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@24
    .line 285
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    #@26
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    #@28
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@2b
    .line 278
    :goto_0
    return-void

    #@2c
    .line 287
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@2e
    const/4 v1, 0x0

    #@2f
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    #@32
    .line 288
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@34
    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V

    #@37
    .line 289
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    #@39
    const-wide/16 v2, 0x534

    #@3b
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@3e
    .line 290
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    #@40
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    #@42
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@45
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 296
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    #@3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@6
    .line 297
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    #@a
    .line 298
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@c
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    #@f
    .line 299
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@11
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    #@14
    .line 300
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    #@16
    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V

    #@19
    .line 295
    return-void
.end method

.method public updateSizes(I)V
    .locals 14
    .param p1, "size"    # I
        .annotation build Landroid/support/v4/widget/MaterialProgressDrawable$ProgressDrawableSize;
        .end annotation
    .end param

    #@0
    .prologue
    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    #@2
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    #@4
    .line 153
    if-nez p1, :cond_0

    #@6
    .line 154
    const-wide/high16 v6, 0x4029000000000000L    # 12.5

    #@8
    .line 155
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    #@a
    const/high16 v10, 0x41400000    # 12.0f

    #@c
    const/high16 v11, 0x40c00000    # 6.0f

    #@e
    move-object v1, p0

    #@f
    move-wide v4, v2

    #@10
    .line 154
    invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    #@13
    .line 152
    :goto_0
    return-void

    #@14
    .line 157
    :cond_0
    const-wide v6, 0x4021800000000000L    # 8.75

    #@19
    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    #@1b
    .line 158
    const/high16 v10, 0x41200000    # 10.0f

    #@1d
    const/high16 v11, 0x40a00000    # 5.0f

    #@1f
    move-object v1, p0

    #@20
    move-wide v2, v12

    #@21
    move-wide v4, v12

    #@22
    .line 157
    invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    #@25
    goto :goto_0
.end method
