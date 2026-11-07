.class public Lcom/android/internal/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$DisplayMode;,
        Lcom/android/internal/widget/LockPatternView$CellState;,
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;,
        Lcom/android/internal/widget/LockPatternView$OnPatternListener;,
        Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;,
        Lcom/android/internal/widget/LockPatternView$Cell;,
        Lcom/android/internal/widget/LockPatternView$SavedState;
    }
.end annotation


# static fields
.field private static final blacklist ALPHA_MAX_VALUE:I = 0xff

.field private static final blacklist ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final blacklist ASPECT_LOCK_WIDTH:I = 0x1

.field private static final blacklist ASPECT_SQUARE:I = 0x0

.field private static final blacklist CELL_ACTIVATE:I = 0x0

.field private static final blacklist CELL_DEACTIVATE:I = 0x1

.field public static final blacklist DEBUG_A11Y:Z = false

.field private static final blacklist DOT_ACTIVATION_DURATION_MILLIS:I = 0x32

.field private static final blacklist DOT_RADIUS_DECREASE_DURATION_MILLIS:I = 0xc0

.field private static final blacklist DOT_RADIUS_INCREASE_DURATION_MILLIS:I = 0x60

.field private static final blacklist DRAG_THRESHHOLD:F = 0.0f

.field private static final blacklist LINE_END_ANIMATION_DURATION_MILLIS:I = 0x32

.field private static final blacklist MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final blacklist MIN_DOT_HIT_FACTOR:F = 0.2f

.field private static final blacklist PROFILE_DRAWING:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "LockPatternView"

.field public static final blacklist VIRTUAL_BASE_VIEW_ID:I = 0x1


# instance fields
.field private blacklist mAnimatingPeriodStart:J

.field private blacklist mAspect:I

.field private final blacklist mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

.field private final blacklist mCurrentPath:Landroid/graphics/Path;

.field private blacklist mDotActivatedColor:I

.field private blacklist mDotColor:I

.field private final blacklist mDotHitFactor:F

.field private blacklist mDotHitMaxRadius:F

.field private blacklist mDotHitRadius:F

.field private blacklist mDotSize:I

.field private blacklist mDotSizeActivated:I

.field private blacklist mDrawingProfilingStarted:Z

.field private blacklist mEnlargeVertex:Z

.field private blacklist mErrorColor:I

.field private final blacklist mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

.field private blacklist mExternalHapticsPlayer:Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;

.field private blacklist mFadeAnimationAlpha:I

.field private blacklist mFadeClear:Z

.field private final blacklist mFadeOutGradientShader:Landroid/graphics/LinearGradient;

.field private blacklist mFadePattern:Z

.field private final blacklist mFadePatternAnimationDelayMs:I

.field private final blacklist mFadePatternAnimationDurationMs:I

.field private final blacklist mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mInProgressX:F

.field private blacklist mInProgressY:F

.field private greylist mInStealthMode:Z

.field private blacklist mInputEnabled:Z

.field private final blacklist mInvalidate:Landroid/graphics/Rect;

.field private blacklist mKeepDotActivated:Z

.field private final blacklist mLineFadeOutAnimationDelayMs:I

.field private final blacklist mLineFadeOutAnimationDurationMs:I

.field private blacklist mLineFadeStart:[J

.field private final blacklist mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final greylist mPaint:Landroid/graphics/Paint;

.field private final greylist mPathPaint:Landroid/graphics/Paint;

.field private blacklist mPathWidth:I

.field private final greylist mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field private final blacklist mPatternDrawLookup:[[Z

.field private greylist mPatternInProgress:Z

.field private final blacklist mPatternPath:Landroid/graphics/Path;

.field private blacklist mRegularColor:I

.field private blacklist mSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist mSquareHeight:F

.field private greylist mSquareWidth:F

.field private final blacklist mStandardAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mSuccessColor:I

.field private final blacklist mTmpInvalidateRect:Landroid/graphics/Rect;

.field private blacklist mUseLockPatternDrawable:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$1p7c1z0e6_J5Y9SXs1wkVl8Hzig(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->lambda$createDotActivationColorAnimation$1(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JZpXCsCkFuuVqh7jRi9sEhjBiQU(Lcom/android/internal/widget/LockPatternView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->lambda$createLineDisappearingAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MFqzMAhlEv8Tvsad0E1aJPdwdrM(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->lambda$createDotRadiusAnimation$4(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RPYxufAqLTe9AmQCY_DGPjKv9sU(Lcom/android/internal/widget/LockPatternView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->lambda$createFadePatternAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$t5G2IjsRpY6s0HgwZGOaUwLZ-fY(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFLandroid/animation/ValueAnimator;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/LockPatternView;->lambda$createLineEndAnimation$2(Lcom/android/internal/widget/LockPatternView$CellState;FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDotHitRadius(Lcom/android/internal/widget/LockPatternView;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDotSize(Lcom/android/internal/widget/LockPatternView;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPatternDrawLookup(Lcom/android/internal/widget/LockPatternView;)[[Z
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPatternInProgress(Lcom/android/internal/widget/LockPatternView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadeAnimationAlpha(Lcom/android/internal/widget/LockPatternView;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mFadeAnimationAlpha:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadeClear(Lcom/android/internal/widget/LockPatternView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdetectCellHit(Lcom/android/internal/widget/LockPatternView;FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->detectCellHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCenterXForColumn(Lcom/android/internal/widget/LockPatternView;I)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCenterYForRow(Lcom/android/internal/widget/LockPatternView;I)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetPattern(Lcom/android/internal/widget/LockPatternView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 330
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 334
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mDrawingProfilingStarted:Z

    .line 101
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 103
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 133
    const/4 v3, 0x2

    new-array v5, v3, [I

    const/4 v6, 0x1

    const/4 v7, 0x3

    aput v7, v5, v6

    aput v7, v5, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    iput-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 140
    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 141
    iput v5, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 144
    new-array v4, v4, [J

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    .line 146
    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 148
    iput-boolean v6, v0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 149
    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 151
    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 153
    iput-boolean v6, v0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    .line 155
    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    .line 156
    const/16 v4, 0xff

    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mFadeAnimationAlpha:I

    .line 157
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternPath:Landroid/graphics/Path;

    .line 167
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 168
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 169
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 336
    sget-object v4, Lcom/android/internal/R$styleable;->LockPatternView:[I

    const v5, 0x1120087

    const v8, 0x10304f4

    move-object/from16 v9, p2

    invoke-virtual {v1, v9, v4, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 339
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "aspect":Ljava/lang/String;
    const-string/jumbo v8, "square"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 342
    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_a2

    .line 343
    :cond_8a
    const-string v8, "lock_width"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 344
    iput v6, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_a2

    .line 345
    :cond_95
    const-string v8, "lock_height"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 346
    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_a2

    .line 348
    :cond_a0
    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    .line 351
    :goto_a2
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternView;->setClickable(Z)V

    .line 354
    iget-object v8, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 355
    iget-object v8, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 357
    const/4 v8, 0x7

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, v0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    .line 358
    const/4 v8, 0x4

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, v0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    .line 359
    const/16 v8, 0x8

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, v0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    .line 360
    iget v8, v0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, v0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    .line 361
    iget v8, v0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, v0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    .line 362
    const/4 v8, 0x5

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    .line 363
    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/internal/widget/LockPatternView;->mEnlargeVertex:Z

    .line 365
    const/4 v8, 0x6

    iget v10, v0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {v4, v8, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 366
    .local v8, "pathColor":I
    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 369
    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 370
    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 372
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105024a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    .line 373
    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v11, v0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 375
    nop

    .line 376
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e01ad

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    .line 377
    nop

    .line 378
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e01ac

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    .line 380
    nop

    .line 381
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e01ab

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mFadePatternAnimationDurationMs:I

    .line 382
    nop

    .line 383
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e01aa

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mFadePatternAnimationDelayMs:I

    .line 385
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105024b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    .line 386
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105024c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    .line 388
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 389
    .local v10, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1050249

    invoke-virtual {v11, v12, v10, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 390
    invoke-virtual {v10}, Landroid/util/TypedValue;->getFloat()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const v12, 0x3e4ccccd    # 0.2f

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iput v11, v0, Lcom/android/internal/widget/LockPatternView;->mDotHitFactor:F

    .line 392
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x11102ce

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, v0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    .line 393
    iget-boolean v11, v0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v11, :cond_1b7

    .line 394
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10806d8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 395
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10806d6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 398
    :cond_1b7
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 399
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 401
    new-array v11, v3, [I

    aput v7, v11, v6

    aput v7, v11, v2

    const-class v2, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-static {v2, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/internal/widget/LockPatternView$CellState;

    iput-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    .line 402
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d2
    if-ge v2, v7, :cond_204

    .line 403
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1d5
    if-ge v6, v7, :cond_201

    .line 404
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v11, v11, v2

    new-instance v12, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {v12}, Lcom/android/internal/widget/LockPatternView$CellState;-><init>()V

    aput-object v12, v11, v6

    .line 405
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v11, v11, v2

    aget-object v11, v11, v6

    iget v12, v0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/2addr v12, v3

    int-to-float v12, v12

    iput v12, v11, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 406
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v11, v11, v2

    aget-object v11, v11, v6

    iput v2, v11, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 407
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v11, v11, v2

    aget-object v11, v11, v6

    iput v6, v11, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    .line 403
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d5

    .line 402
    .end local v6    # "j":I
    :cond_201
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d2

    .line 411
    .end local v2    # "i":I
    :cond_204
    nop

    .line 412
    const v2, 0x10c000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 413
    nop

    .line 414
    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 415
    nop

    .line 416
    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mStandardAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 417
    new-instance v2, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-direct {v2, v0, v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V

    iput-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    .line 418
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 420
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105024d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 423
    .local v2, "fadeAwayGradientWidth":I
    new-instance v11, Landroid/graphics/LinearGradient;

    neg-int v3, v2

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float v12, v3, v6

    int-to-float v3, v2

    div-float v14, v3, v6

    const/16 v16, 0x0

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v17, v8

    .end local v8    # "pathColor":I
    .local v17, "pathColor":I
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mFadeOutGradientShader:Landroid/graphics/LinearGradient;

    .line 427
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 428
    return-void
.end method

.method private blacklist addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 5
    .param p1, "newCell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .line 875
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 876
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_1b

    .line 878
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 880
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyCellAdded()V

    .line 881
    return-void
.end method

.method private blacklist calculateLastSegmentAlpha(FFFF)F
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "lastX"    # F
    .param p4, "lastY"    # F

    .line 1580
    sub-float v0, p1, p3

    .line 1581
    .local v0, "diffX":F
    sub-float v1, p2, p4

    .line 1582
    .local v1, "diffY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1583
    .local v2, "dist":F
    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    div-float v3, v2, v3

    .line 1584
    .local v3, "frac":F
    const v4, 0x3e99999a    # 0.3f

    sub-float v4, v3, v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method

.method private blacklist cancelLineAnimations()V
    .registers 7

    .line 1276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2f

    .line 1277
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    if-ge v2, v1, :cond_2c

    .line 1278
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    .line 1279
    .local v3, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_29

    .line 1280
    iget-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1281
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    .line 1282
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 1283
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 1284
    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 1285
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    .line 1277
    .end local v3    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1276
    .end local v2    # "j":I
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1289
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method

.method private blacklist checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1076
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->detectCellHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 1077
    .local v0, "cellHit":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_13

    .line 1078
    return-object v0

    .line 1080
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist clearPatternDrawLookup()V
    .registers 8

    .line 723
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1d

    .line 724
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    if-ge v2, v1, :cond_1a

    .line 725
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    .line 726
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    .line 724
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 723
    .end local v2    # "j":I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 729
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method private blacklist createDotActivationColorAnimation(Lcom/android/internal/widget/LockPatternView$CellState;IZ)Landroid/animation/Animator;
    .registers 11
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "activate"    # I
    .param p3, "fillInGap"    # Z

    .line 976
    new-instance v0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    .line 982
    .local v0, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_58

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 983
    .local v2, "activateAnimator":Landroid/animation/ValueAnimator;
    new-array v1, v1, [F

    fill-array-data v1, :array_60

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 984
    .local v1, "deactivateAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 985
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 986
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 987
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 990
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 991
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 992
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 994
    .local v3, "set":Landroid/animation/AnimatorSet;
    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v4, :cond_44

    if-nez p3, :cond_44

    .line 995
    if-nez p2, :cond_3f

    move-object v4, v2

    goto :goto_40

    :cond_3f
    move-object v4, v1

    :goto_40
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_57

    .line 998
    :cond_44
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x64

    int-to-long v5, v5

    .line 999
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 1001
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1004
    :goto_57
    return-object v3

    :array_58
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_60
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private blacklist createDotRadiusAnimation(Lcom/android/internal/widget/LockPatternView$CellState;IZ)Landroid/animation/Animator;
    .registers 14
    .param p1, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "activate"    # I
    .param p3, "fillInGap"    # Z

    .line 1038
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1039
    .local v0, "defaultRadius":F
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 1041
    .local v2, "activatedRadius":F
    new-instance v1, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    .line 1047
    .local v1, "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v2, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1048
    .local v4, "activationAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1049
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1050
    const-wide/16 v7, 0x60

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1052
    new-array v7, v3, [F

    aput v2, v7, v5

    aput v0, v7, v6

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 1053
    .local v7, "deactivationAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1054
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1055
    const-wide/16 v8, 0xc0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1057
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1058
    .local v8, "set":Landroid/animation/AnimatorSet;
    iget-boolean v9, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v9, :cond_68

    .line 1059
    iget-boolean v9, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v9, :cond_62

    .line 1060
    if-eqz p3, :cond_59

    .line 1061
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, v5

    aput-object v7, v3, v6

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_71

    .line 1063
    :cond_59
    if-nez p2, :cond_5d

    move-object v3, v4

    goto :goto_5e

    :cond_5d
    move-object v3, v7

    :goto_5e
    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_71

    .line 1065
    :cond_62
    if-nez p2, :cond_71

    .line 1066
    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_71

    .line 1069
    :cond_68
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, v5

    aput-object v7, v3, v6

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1071
    :cond_71
    :goto_71
    return-object v8
.end method

.method private blacklist createFadePatternAnimation()Landroid/animation/Animator;
    .registers 4

    .line 899
    const/16 v0, 0xff

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 900
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/widget/LockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 904
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mStandardAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 905
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePatternAnimationDelayMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 906
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePatternAnimationDurationMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 907
    return-object v0
.end method

.method private blacklist createLineDisappearingAnimation()Landroid/animation/Animator;
    .registers 4

    .line 1030
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_20

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1031
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/LockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1032
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1033
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1034
    return-object v0

    nop

    :array_20
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist createLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)Landroid/animation/Animator;
    .registers 14
    .param p1, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .line 1013
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1014
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    move v5, p4

    move v7, p5

    .end local p1    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    .end local p2    # "startX":F
    .end local p3    # "startY":F
    .end local p4    # "targetX":F
    .end local p5    # "targetY":F
    .local v3, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    .local v4, "startX":F
    .local v5, "targetX":F
    .local v6, "startY":F
    .local v7, "targetY":F
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1020
    iget-object p1, v2, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1021
    const-wide/16 p1, 0x32

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1022
    return-object v0

    nop

    :array_24
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist deactivateLastCell()V
    .registers 3

    .line 1271
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1272
    .local v0, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternView;->startCellDeactivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;Z)V

    .line 1273
    return-void
.end method

.method private blacklist detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 16
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 814
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 815
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_8a

    .line 818
    const/4 v1, 0x0

    .line 819
    .local v1, "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 820
    .local v2, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v3, 0x0

    .line 821
    .local v3, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_59

    .line 822
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 823
    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v6, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    sub-int/2addr v4, v6

    .line 824
    .local v4, "dRow":I
    iget v6, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v7, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    sub-int/2addr v6, v7

    .line 826
    .local v6, "dColumn":I
    iget v7, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 827
    .local v7, "fillInRow":I
    iget v8, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 829
    .local v8, "fillInColumn":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x2

    if-ne v9, v11, :cond_42

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v5, :cond_42

    .line 830
    iget v9, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    if-lez v4, :cond_3f

    move v12, v5

    goto :goto_40

    :cond_3f
    move v12, v10

    :goto_40
    add-int v7, v9, v12

    .line 833
    :cond_42
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ne v9, v11, :cond_55

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v5, :cond_55

    .line 834
    iget v9, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    if-lez v6, :cond_53

    move v10, v5

    :cond_53
    add-int v8, v9, v10

    .line 837
    :cond_55
    invoke-static {v7, v8}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    .line 840
    .end local v4    # "dRow":I
    .end local v6    # "dColumn":I
    .end local v7    # "fillInRow":I
    .end local v8    # "fillInColumn":I
    :cond_59
    if-eqz v1, :cond_79

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v6, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v4, v4, v6

    iget v6, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v4, v4, v6

    if-nez v4, :cond_79

    .line 842
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 843
    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v4, :cond_79

    .line 844
    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v4, :cond_76

    .line 845
    invoke-direct {p0, v1, v5}, Lcom/android/internal/widget/LockPatternView;->startCellDeactivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;Z)V

    goto :goto_79

    .line 847
    :cond_76
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 852
    :cond_79
    :goto_79
    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v4, :cond_83

    if-eqz v3, :cond_83

    .line 853
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/LockPatternView;->startCellDeactivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;Z)V

    .line 856
    :cond_83
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 857
    invoke-virtual {p0, v5, v5}, Lcom/android/internal/widget/LockPatternView;->performHapticFeedback(II)Z

    .line 859
    return-object v0

    .line 861
    .end local v1    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v2    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v3    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_8a
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist detectCellHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1086
    const/4 v0, 0x0

    .local v0, "row":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_45

    .line 1087
    const/4 v2, 0x0

    .local v2, "column":I
    :goto_5
    if-ge v2, v1, :cond_42

    .line 1088
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 1089
    .local v3, "centerY":F
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v4

    .line 1092
    .local v4, "centerX":F
    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mEnlargeVertex:Z

    if-eqz v5, :cond_26

    .line 1097
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/LockPatternView;->isVertex(II)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1098
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitMaxRadius:F

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitMaxRadius:F

    mul-float/2addr v5, v6

    goto :goto_24

    .line 1099
    :cond_1f
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    mul-float/2addr v5, v6

    :goto_24
    nop

    .local v5, "hitRadiusSquared":F
    goto :goto_2b

    .line 1101
    .end local v5    # "hitRadiusSquared":F
    :cond_26
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    mul-float/2addr v5, v6

    .line 1104
    .restart local v5    # "hitRadiusSquared":F
    :goto_2b
    sub-float v6, p1, v4

    sub-float v7, p1, v4

    mul-float/2addr v6, v7

    sub-float v7, p2, v3

    sub-float v8, p2, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    cmpg-float v6, v6, v5

    if-gez v6, :cond_3f

    .line 1106
    invoke-static {v0, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    return-object v1

    .line 1087
    .end local v3    # "centerY":F
    .end local v4    # "centerX":F
    .end local v5    # "hitRadiusSquared":F
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1086
    .end local v2    # "column":I
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1110
    .end local v0    # "row":I
    :cond_45
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "radius"    # F
    .param p5, "partOfPattern"    # Z

    .line 1636
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v2, v2

    int-to-float v3, p2

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v3, v3

    add-int/lit8 v4, p3, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v4, v4

    add-int/lit8 v5, p2, 0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1641
    .local v0, "dst":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float v1, p4, v1

    .line 1644
    .local v1, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1645
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1646
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1647
    if-eqz p5, :cond_56

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_50

    goto :goto_56

    .line 1650
    :cond_50
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5b

    .line 1648
    :cond_56
    :goto_56
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1652
    :goto_5b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1653
    return-void
.end method

.method private blacklist drawCircle(Landroid/graphics/Canvas;FFFZFF)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "radius"    # F
    .param p5, "partOfPattern"    # Z
    .param p6, "alpha"    # F
    .param p7, "activationAnimationProgress"    # F

    .line 1618
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_16

    .line 1619
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    invoke-static {v0, v1, p7}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 1621
    .local v0, "resultColor":I
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1622
    .end local v0    # "resultColor":I
    goto :goto_2d

    :cond_16
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-nez v0, :cond_24

    if-eqz p5, :cond_24

    .line 1623
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2d

    .line 1625
    :cond_24
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->getDotColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1627
    :goto_2d
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1628
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1629
    return-void
.end method

.method private blacklist drawFadingAwayLineSegment(Landroid/graphics/Canvas;FFFFF)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "endX"    # F
    .param p5, "endY"    # F
    .param p6, "fadeAwayProgress"    # F

    .line 1546
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p6

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1550
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mFadeOutGradientShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1551
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1554
    mul-float v1, p4, p6

    sub-float v3, v2, p6

    mul-float/2addr v3, p2

    add-float v6, v1, v3

    .line 1555
    .local v6, "gradientMidX":F
    mul-float v1, p5, p6

    sub-float v3, v2, p6

    mul-float v3, v3, p3

    add-float v7, v1, v3

    .line 1556
    .local v7, "gradientMidY":F
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1559
    sub-float v1, p5, p3

    sub-float v3, p4, p2

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    .line 1560
    .local v8, "segmentAngleRad":D
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 1561
    .local v1, "segmentAngleDegrees":F
    sub-float v3, p4, p2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_44

    .line 1564
    const/high16 v3, 0x43340000    # 180.0f

    add-float/2addr v1, v3

    move v10, v1

    goto :goto_45

    .line 1561
    :cond_44
    move v10, v1

    .line 1566
    .end local v1    # "segmentAngleDegrees":F
    .local v10, "segmentAngleDegrees":F
    :goto_45
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1569
    sub-float v1, p4, p2

    float-to-double v3, v1

    sub-float v1, p5, p3

    float-to-double v11, v1

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v11, v3

    .line 1572
    .local v11, "segmentLength":F
    neg-float v1, v11

    mul-float v1, v1, p6

    sub-float v2, v2, p6

    mul-float v3, v11, v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1575
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1576
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1577
    return-void
.end method

.method private blacklist drawLineSegment(Landroid/graphics/Canvas;FFFFJJ)V
    .registers 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "endX"    # F
    .param p5, "endY"    # F
    .param p6, "lineFadeStart"    # J
    .param p8, "elapsedRealtime"    # J

    .line 1527
    iget-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v1, :cond_2b

    .line 1528
    sub-long v1, p8, p6

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_11

    .line 1531
    return-void

    .line 1534
    :cond_11
    sub-long v1, p8, p6

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1537
    .local v6, "fadeAwayProgress":F
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternView;->drawFadingAwayLineSegment(Landroid/graphics/Canvas;FFFFF)V

    goto :goto_3c

    .line 1539
    .end local v6    # "fadeAwayProgress":F
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1540
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1542
    :goto_3c
    return-void
.end method

.method private blacklist getCenterXForColumn(I)F
    .registers 5
    .param p1, "column"    # I

    .line 1370
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private blacklist getCenterYForRow(I)F
    .registers 5
    .param p1, "row"    # I

    .line 1374
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private blacklist getCurrentColor(Z)I
    .registers 5
    .param p1, "partOfPattern"    # Z

    .line 1599
    if-eqz p1, :cond_40

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_40

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_b

    goto :goto_40

    .line 1602
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_14

    .line 1604
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    return v0

    .line 1605
    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_3d

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_21

    goto :goto_3d

    .line 1609
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1607
    :cond_3d
    :goto_3d
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    return v0

    .line 1601
    :cond_40
    :goto_40
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    return v0
.end method

.method private blacklist getDotColor()I
    .registers 3

    .line 1588
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v0, :cond_7

    .line 1590
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    return v0

    .line 1591
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_10

    .line 1593
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    return v0

    .line 1595
    :cond_10
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    return v0
.end method

.method private blacklist handleActionDown(Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1291
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 1292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1293
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1294
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    .line 1295
    .local v2, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v2, :cond_1d

    .line 1296
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1297
    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1298
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    goto :goto_28

    .line 1299
    :cond_1d
    iget-boolean v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v3, :cond_28

    .line 1300
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1301
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    .line 1303
    :cond_28
    :goto_28
    if-eqz v2, :cond_4d

    .line 1304
    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v3

    .line 1305
    .local v3, "startX":F
    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v4

    .line 1307
    .local v4, "startY":F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 1308
    .local v5, "widthOffset":F
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    div-float/2addr v7, v6

    .line 1310
    .local v7, "heightOffset":F
    sub-float v6, v3, v5

    float-to-int v6, v6

    sub-float v8, v4, v7

    float-to-int v8, v8

    add-float v9, v3, v5

    float-to-int v9, v9

    add-float v10, v4, v7

    float-to-int v10, v10

    invoke-virtual {p0, v6, v8, v9, v10}, Lcom/android/internal/widget/LockPatternView;->invalidate(IIII)V

    .line 1313
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    .end local v5    # "widthOffset":F
    .end local v7    # "heightOffset":F
    :cond_4d
    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 1314
    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 1321
    return-void
.end method

.method private blacklist handleActionMove(Landroid/view/MotionEvent;)V
    .registers 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1179
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    int-to-float v2, v2

    .line 1180
    .local v2, "radius":F
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 1181
    .local v3, "historySize":I
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1182
    const/4 v4, 0x0

    .line 1183
    .local v4, "invalidateNow":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_12
    add-int/lit8 v6, v3, 0x1

    if-ge v5, v6, :cond_104

    .line 1184
    if-ge v5, v3, :cond_1d

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    goto :goto_21

    :cond_1d
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 1185
    .local v6, "x":F
    :goto_21
    if-ge v5, v3, :cond_28

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1186
    .local v7, "y":F
    :goto_2c
    invoke-direct {v0, v6, v7}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    .line 1187
    .local v8, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v9, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1188
    .local v9, "patternSize":I
    if-eqz v8, :cond_41

    const/4 v10, 0x1

    if-ne v9, v10, :cond_41

    .line 1189
    invoke-direct {v0, v10}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1190
    invoke-direct {v0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    .line 1193
    :cond_41
    iget v10, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1194
    .local v10, "dx":F
    iget v11, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    sub-float v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1195
    .local v11, "dy":F
    const/4 v12, 0x0

    cmpl-float v13, v10, v12

    if-gtz v13, :cond_5a

    cmpl-float v12, v11, v12

    if-lez v12, :cond_5b

    .line 1196
    :cond_5a
    const/4 v4, 0x1

    .line 1199
    :cond_5b
    iget-boolean v12, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v12, :cond_f0

    if-lez v9, :cond_f0

    .line 1200
    iget-object v12, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1201
    .local v12, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    add-int/lit8 v13, v9, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1202
    .local v13, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v14, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v14}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 1203
    .local v14, "lastCellCenterX":F
    iget v15, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v15}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 1206
    .local v15, "lastCellCenterY":F
    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v16

    sub-float v1, v16, v2

    .line 1207
    .local v1, "left":F
    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v17, v2

    .end local v2    # "radius":F
    .local v17, "radius":F
    add-float v2, v16, v17

    .line 1208
    .local v2, "right":F
    invoke-static {v15, v7}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v18, v3

    .end local v3    # "historySize":I
    .local v18, "historySize":I
    sub-float v3, v16, v17

    .line 1209
    .local v3, "top":F
    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v19, v4

    .end local v4    # "invalidateNow":Z
    .local v19, "invalidateNow":Z
    add-float v4, v16, v17

    .line 1212
    .local v4, "bottom":F
    if-eqz v8, :cond_d0

    .line 1213
    move/from16 v16, v5

    .end local v5    # "i":I
    .local v16, "i":I
    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v20, 0x3f000000    # 0.5f

    mul-float v5, v5, v20

    .line 1214
    .local v5, "width":F
    move/from16 v21, v5

    .end local v5    # "width":F
    .local v21, "width":F
    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float v5, v5, v20

    .line 1215
    .local v5, "height":F
    move/from16 v20, v5

    .end local v5    # "height":F
    .local v20, "height":F
    iget v5, v8, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v5

    .line 1216
    .local v5, "hitCellCenterX":F
    move/from16 v22, v5

    .end local v5    # "hitCellCenterX":F
    .local v22, "hitCellCenterX":F
    iget v5, v8, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v5

    .line 1218
    .local v5, "hitCellCenterY":F
    move/from16 v23, v5

    .end local v5    # "hitCellCenterY":F
    .local v23, "hitCellCenterY":F
    sub-float v5, v22, v21

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1219
    add-float v5, v22, v21

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1220
    sub-float v5, v23, v20

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1221
    add-float v5, v23, v20

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_d2

    .line 1212
    .end local v16    # "i":I
    .end local v20    # "height":F
    .end local v21    # "width":F
    .end local v22    # "hitCellCenterX":F
    .end local v23    # "hitCellCenterY":F
    .local v5, "i":I
    :cond_d0
    move/from16 v16, v5

    .line 1225
    .end local v5    # "i":I
    .restart local v16    # "i":I
    :goto_d2
    iget-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move/from16 v20, v1

    .end local v1    # "left":F
    .local v20, "left":F
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v1

    move/from16 v21, v2

    .end local v2    # "right":F
    .local v21, "right":F
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1226
    move/from16 v22, v3

    .end local v3    # "top":F
    .local v22, "top":F
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v3

    move/from16 v23, v4

    .end local v4    # "bottom":F
    .local v23, "bottom":F
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1225
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_f8

    .line 1199
    .end local v12    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v13    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v16    # "i":I
    .end local v17    # "radius":F
    .end local v18    # "historySize":I
    .end local v19    # "invalidateNow":Z
    .end local v20    # "left":F
    .end local v21    # "right":F
    .end local v22    # "top":F
    .end local v23    # "bottom":F
    .local v2, "radius":F
    .local v3, "historySize":I
    .local v4, "invalidateNow":Z
    .restart local v5    # "i":I
    :cond_f0
    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v16, v5

    .line 1183
    .end local v2    # "radius":F
    .end local v3    # "historySize":I
    .end local v4    # "invalidateNow":Z
    .end local v5    # "i":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v9    # "patternSize":I
    .end local v10    # "dx":F
    .end local v11    # "dy":F
    .restart local v16    # "i":I
    .restart local v17    # "radius":F
    .restart local v18    # "historySize":I
    .restart local v19    # "invalidateNow":Z
    :goto_f8
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    .end local v16    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_12

    .end local v17    # "radius":F
    .end local v18    # "historySize":I
    .end local v19    # "invalidateNow":Z
    .restart local v2    # "radius":F
    .restart local v3    # "historySize":I
    .restart local v4    # "invalidateNow":Z
    :cond_104
    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v16, v5

    .line 1229
    .end local v2    # "radius":F
    .end local v3    # "historySize":I
    .end local v5    # "i":I
    .restart local v17    # "radius":F
    .restart local v18    # "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 1230
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 1233
    if-eqz v4, :cond_12b

    .line 1234
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1235
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 1236
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1238
    :cond_12b
    return-void
.end method

.method private blacklist handleActionUp()V
    .registers 2

    .line 1242
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1244
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v0, :cond_14

    .line 1248
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->deactivateLastCell()V

    goto :goto_17

    .line 1252
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->cancelLineAnimations()V

    .line 1254
    :goto_17
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternDetected()V

    .line 1256
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v0, :cond_25

    .line 1257
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 1258
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1260
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1268
    :cond_28
    return-void
.end method

.method private blacklist isVertex(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 1114
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    if-eq p2, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private synthetic blacklist lambda$createDotActivationColorAnimation$1(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 978
    nop

    .line 979
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    .line 980
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 981
    return-void
.end method

.method private synthetic blacklist lambda$createDotRadiusAnimation$4(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 1043
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 1044
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1045
    return-void
.end method

.method private synthetic blacklist lambda$createFadePatternAnimation$0(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 901
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mFadeAnimationAlpha:I

    .line 902
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 903
    return-void
.end method

.method private synthetic blacklist lambda$createLineDisappearingAnimation$3(Landroid/animation/ValueAnimator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1031
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private synthetic blacklist lambda$createLineEndAnimation$2(Lcom/android/internal/widget/LockPatternView$CellState;FFFFLandroid/animation/ValueAnimator;)V
    .registers 11
    .param p1, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startX"    # F
    .param p3, "targetX"    # F
    .param p4, "startY"    # F
    .param p5, "targetY"    # F
    .param p6, "animation"    # Landroid/animation/ValueAnimator;

    .line 1015
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1016
    .local v0, "t":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    mul-float/2addr v2, p2

    mul-float v3, v0, p3

    add-float/2addr v2, v3

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 1017
    sub-float/2addr v1, v0

    mul-float/2addr v1, p4

    mul-float v2, v0, p5

    add-float/2addr v1, v2

    iput v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 1018
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1019
    return-void
.end method

.method private blacklist notifyCellAdded()V
    .registers 3

    .line 628
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_b

    .line 629
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 633
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 634
    return-void
.end method

.method private blacklist notifyPatternCleared()V
    .registers 2

    .line 650
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_9

    .line 651
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 653
    :cond_9
    return-void
.end method

.method private greylist notifyPatternDetected()V
    .registers 3

    .line 644
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_b

    .line 645
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 647
    :cond_b
    return-void
.end method

.method private blacklist notifyPatternStarted()V
    .registers 2

    .line 637
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_9

    .line 638
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 640
    :cond_9
    return-void
.end method

.method private blacklist resetPattern()V
    .registers 2

    .line 685
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 686
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPatternCellSize()V

    .line 688
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 689
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 690
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 691
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 692
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 693
    return-void
.end method

.method private blacklist resetPatternCellSize()V
    .registers 6

    .line 696
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    array-length v1, v1

    if-ge v0, v1, :cond_37

    .line 697
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_34

    .line 698
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    .line 699
    .local v2, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_1d

    .line 700
    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 702
    :cond_1d
    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->deactivationAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_26

    .line 703
    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->deactivationAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 705
    :cond_26
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    .line 706
    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 697
    .end local v2    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 696
    .end local v1    # "j":I
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    .end local v0    # "i":I
    :cond_37
    return-void
.end method

.method private blacklist resolveMeasured(II)I
    .registers 6
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .line 768
    const/4 v0, 0x0

    .line 769
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 770
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_16

    .line 779
    move v0, v1

    goto :goto_15

    .line 772
    :sswitch_e
    move v0, p2

    .line 773
    goto :goto_15

    .line 775
    :sswitch_10
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 776
    nop

    .line 781
    :goto_15
    return v0

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method

.method private blacklist setPatternInProgress(Z)V
    .registers 3
    .param p1, "progress"    # Z

    .line 1172
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 1173
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 1174
    return-void
.end method

.method private blacklist startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 3
    .param p1, "cell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .line 911
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/widget/LockPatternView;->startCellActivationAnimation(Lcom/android/internal/widget/LockPatternView$Cell;IZ)V

    .line 912
    return-void
.end method

.method private blacklist startCellActivationAnimation(Lcom/android/internal/widget/LockPatternView$Cell;IZ)V
    .registers 12
    .param p1, "cell"    # Lcom/android/internal/widget/LockPatternView$Cell;
    .param p2, "activate"    # I
    .param p3, "fillInGap"    # Z

    .line 925
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v3, v0, v1

    .line 929
    .local v3, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v0, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-nez v0, :cond_17

    .line 930
    iget-object v0, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 932
    :cond_17
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 938
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    if-nez p2, :cond_21

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    goto :goto_23

    :cond_21
    iget v1, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    :goto_23
    move v4, v1

    .line 939
    .local v4, "startX":F
    if-nez p2, :cond_29

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    goto :goto_2b

    :cond_29
    iget v1, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    :goto_2b
    move v5, v1

    .line 940
    .local v5, "startY":F
    nop

    .line 941
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->createLineDisappearingAnimation()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 943
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v6

    iget v2, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v7

    .line 942
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternView;->createLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 944
    .local v1, "animatorSetBuilder":Landroid/animation/AnimatorSet$Builder;
    iget v6, v2, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    iget v7, v2, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    if-eq v6, v7, :cond_57

    .line 945
    invoke-direct {p0, v3, p2, p3}, Lcom/android/internal/widget/LockPatternView;->createDotRadiusAnimation(Lcom/android/internal/widget/LockPatternView$CellState;IZ)Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 947
    :cond_57
    iget v6, v2, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    iget v7, v2, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    if-eq v6, v7, :cond_65

    .line 948
    nop

    .line 949
    invoke-direct {p0, v3, p2, p3}, Lcom/android/internal/widget/LockPatternView;->createDotActivationColorAnimation(Lcom/android/internal/widget/LockPatternView$CellState;IZ)Landroid/animation/Animator;

    move-result-object v6

    .line 948
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 952
    :cond_65
    if-nez p2, :cond_72

    .line 953
    new-instance v6, Lcom/android/internal/widget/LockPatternView$5;

    invoke-direct {v6, p0, v3}, Lcom/android/internal/widget/LockPatternView$5;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 960
    iput-object v0, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    goto :goto_7c

    .line 962
    :cond_72
    new-instance v6, Lcom/android/internal/widget/LockPatternView$6;

    invoke-direct {v6, p0, v3}, Lcom/android/internal/widget/LockPatternView$6;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 969
    iput-object v0, v3, Lcom/android/internal/widget/LockPatternView$CellState;->deactivationAnimator:Landroid/animation/Animator;

    .line 971
    :goto_7c
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 972
    return-void
.end method

.method private blacklist startCellDeactivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;Z)V
    .registers 4
    .param p1, "cell"    # Lcom/android/internal/widget/LockPatternView$Cell;
    .param p2, "fillInGap"    # Z

    .line 915
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/LockPatternView;->startCellActivationAnimation(Lcom/android/internal/widget/LockPatternView$Cell;IZ)V

    .line 916
    return-void
.end method

.method private blacklist startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 25
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "startTranslationY"    # F
    .param p5, "endTranslationY"    # F
    .param p6, "startScale"    # F
    .param p7, "endScale"    # F
    .param p8, "delay"    # J
    .param p10, "duration"    # J
    .param p12, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p13, "finishRunnable"    # Ljava/lang/Runnable;

    .line 573
    move/from16 v9, p5

    iput p3, p1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 574
    iput v9, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 575
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v1, v1, p7

    iput v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 576
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    .line 577
    iget v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 578
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    add-float/2addr v1, p4

    .line 577
    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    .line 579
    iget v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    .line 580
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v1, v1, p6

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    .line 581
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->getDotColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 582
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 583
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    .line 585
    iget-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 586
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    add-float/2addr v2, v9

    .line 585
    move-object v0, p0

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    .line 587
    iget-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    .line 589
    new-instance v1, Lcom/android/internal/widget/LockPatternView$3;

    move-object/from16 v10, p13

    invoke-direct {v1, p0, p1, v10}, Lcom/android/internal/widget/LockPatternView$3;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    move v2, p3

    move-object v8, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/LockPatternView;->startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 600
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 601
    return-void
.end method

.method private blacklist startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 29
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "startTranslationY"    # F
    .param p5, "endTranslationY"    # F
    .param p6, "startScale"    # F
    .param p7, "endScale"    # F
    .param p8, "delay"    # J
    .param p10, "duration"    # J
    .param p12, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p13, "finishRunnable"    # Ljava/lang/Runnable;

    .line 540
    move-object/from16 v2, p1

    move/from16 v3, p2

    iput v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 541
    move/from16 v5, p4

    iput v5, v2, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 542
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p6

    iput v0, v2, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 543
    new-array v0, v1, [F

    fill-array-data v0, :array_4a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 544
    .local v9, "animator":Landroid/animation/ValueAnimator;
    move-wide/from16 v10, p10

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 545
    move-wide/from16 v12, p8

    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 546
    move-object/from16 v14, p12

    invoke-virtual {v9, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 547
    new-instance v0, Lcom/android/internal/widget/LockPatternView$1;

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/LockPatternView$1;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFFF)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 557
    new-instance v0, Lcom/android/internal/widget/LockPatternView$2;

    move-object/from16 v2, p13

    invoke-direct {v0, p0, v2}, Lcom/android/internal/widget/LockPatternView$2;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 565
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 566
    return-void

    :array_4a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist startFadePatternAnimation()V
    .registers 3

    .line 884
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 885
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->createFadePatternAnimation()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 886
    new-instance v1, Lcom/android/internal/widget/LockPatternView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternView$4;-><init>(Lcom/android/internal/widget/LockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 894
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 896
    return-void
.end method

.method private blacklist startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .registers 13
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "endAlpha"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 606
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 608
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 609
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 610
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 611
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 612
    invoke-virtual {v0, p8}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 613
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 614
    return-void
.end method

.method private blacklist startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V
    .registers 9
    .param p2, "endValue"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;FJJ",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    .line 618
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {v0, p1, p2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 619
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 620
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 621
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 622
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 623
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 624
    return-void
.end method


# virtual methods
.method public greylist clearPattern()V
    .registers 1

    .line 660
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 661
    return-void
.end method

.method public greylist disableInput()V
    .registers 2

    .line 737
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 738
    return-void
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 676
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 677
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 678
    return v0
.end method

.method public greylist enableInput()V
    .registers 2

    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 746
    return-void
.end method

.method public greylist fadeClearPattern()V
    .registers 2

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    .line 669
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->startFadePatternAnimation()V

    .line 670
    return-void
.end method

.method public greylist getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    return-object v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 715
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist isInStealthMode()Z
    .registers 2

    .line 439
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1379
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1380
    .local v10, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1381
    .local v11, "count":I
    iget-object v12, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 1383
    .local v12, "drawLookup":[[Z
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_85

    .line 1388
    add-int/lit8 v1, v11, 0x1

    mul-int/lit16 v1, v1, 0x2bc

    .line 1389
    .local v1, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    rem-int/2addr v2, v1

    .line 1391
    .local v2, "spotInCycle":I
    div-int/lit16 v4, v2, 0x2bc

    .line 1393
    .local v4, "numCircles":I
    invoke-direct {v0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 1394
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    if-ge v5, v4, :cond_3b

    .line 1395
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1396
    .local v6, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    aget-object v7, v12, v7

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    aput-boolean v3, v7, v8

    .line 1394
    .end local v6    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 1401
    .end local v5    # "i":I
    :cond_3b
    if-lez v4, :cond_41

    if-ge v4, v11, :cond_41

    move v5, v3

    goto :goto_42

    :cond_41
    const/4 v5, 0x0

    .line 1404
    .local v5, "needToUpdateInProgressPoint":Z
    :goto_42
    if-eqz v5, :cond_7f

    .line 1405
    rem-int/lit16 v6, v2, 0x2bc

    int-to-float v6, v6

    const/high16 v7, 0x442f0000    # 700.0f

    div-float/2addr v6, v7

    .line 1409
    .local v6, "percentageOfNextCircle":F
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1410
    .local v7, "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v8, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v8}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v8

    .line 1411
    .local v8, "centerX":F
    iget v9, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v9}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v9

    .line 1413
    .local v9, "centerY":F
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1414
    .local v13, "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v14, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 1415
    invoke-direct {v0, v14}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    sub-float/2addr v14, v8

    mul-float/2addr v14, v6

    .line 1416
    .local v14, "dx":F
    iget v15, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 1417
    invoke-direct {v0, v15}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    sub-float/2addr v15, v9

    mul-float/2addr v15, v6

    .line 1418
    .local v15, "dy":F
    move/from16 v16, v3

    add-float v3, v8, v14

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 1419
    add-float v3, v9, v15

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    goto :goto_81

    .line 1404
    .end local v6    # "percentageOfNextCircle":F
    .end local v7    # "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v8    # "centerX":F
    .end local v9    # "centerY":F
    .end local v13    # "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "dx":F
    .end local v15    # "dy":F
    :cond_7f
    move/from16 v16, v3

    .line 1422
    :goto_81
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    goto :goto_87

    .line 1383
    .end local v1    # "oneCycle":I
    .end local v2    # "spotInCycle":I
    .end local v4    # "numCircles":I
    .end local v5    # "needToUpdateInProgressPoint":Z
    :cond_85
    move/from16 v16, v3

    .line 1425
    :goto_87
    iget-object v13, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 1426
    .local v13, "currentPath":Landroid/graphics/Path;
    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    .line 1431
    iget-boolean v1, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    xor-int/lit8 v1, v1, 0x1

    move v14, v1

    .line 1433
    .local v14, "drawPath":Z
    if-eqz v14, :cond_197

    iget-boolean v1, v0, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    if-nez v1, :cond_197

    .line 1434
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v2, v16

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1436
    const/4 v1, 0x0

    .line 1437
    .local v1, "anyCircles":Z
    const/4 v2, 0x0

    .line 1438
    .local v2, "lastX":F
    const/4 v3, 0x0

    .line 1439
    .local v3, "lastY":F
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1440
    .local v8, "elapsedRealtime":J
    const/4 v4, 0x0

    move v15, v4

    .local v15, "i":I
    :goto_ab
    if-ge v15, v11, :cond_15f

    .line 1441
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1446
    .local v4, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v5, v4, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v5, v12, v5

    iget v6, v4, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v5, v5, v6

    if-nez v5, :cond_c7

    .line 1447
    move v4, v3

    move-object/from16 v18, v10

    move/from16 v19, v11

    move v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_167

    .line 1449
    :cond_c7
    const/16 v16, 0x1

    .line 1451
    .end local v1    # "anyCircles":Z
    .local v16, "anyCircles":Z
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    aget-wide v5, v1, v15

    const-wide/16 v17, 0x0

    cmp-long v1, v5, v17

    if-nez v1, :cond_db

    .line 1452
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    aput-wide v5, v1, v15

    .line 1455
    :cond_db
    iget v1, v4, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    .line 1456
    .local v1, "centerX":F
    iget v5, v4, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v5

    .line 1457
    .local v5, "centerY":F
    if-eqz v15, :cond_146

    .line 1458
    iget-object v6, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v7, v4, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v6, v6, v7

    iget v7, v4, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v6, v6, v7

    .line 1459
    .local v6, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    .line 1462
    iget v7, v6, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/16 v17, 0x1

    cmpl-float v7, v7, v17

    if-eqz v7, :cond_10b

    iget v7, v6, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    cmpl-float v7, v7, v17

    if-eqz v7, :cond_10b

    .line 1463
    iget v7, v6, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 1464
    .local v7, "endX":F
    move/from16 v17, v1

    .end local v1    # "centerX":F
    .local v17, "centerX":F
    iget v1, v6, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .local v1, "endY":F
    goto :goto_110

    .line 1462
    .end local v7    # "endX":F
    .end local v17    # "centerX":F
    .local v1, "centerX":F
    :cond_10b
    move/from16 v17, v1

    .line 1466
    .end local v1    # "centerX":F
    .restart local v17    # "centerX":F
    move/from16 v7, v17

    .line 1467
    .restart local v7    # "endX":F
    move v1, v5

    .line 1469
    .local v1, "endY":F
    :goto_110
    move/from16 v18, v1

    .end local v1    # "endY":F
    .local v18, "endY":F
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    aget-wide v19, v1, v15

    move-object/from16 v1, p1

    move/from16 v21, v17

    move-object/from16 v17, v4

    move v4, v7

    move/from16 v22, v11

    move v11, v5

    move/from16 v5, v18

    move-object/from16 v18, v10

    move/from16 v10, v21

    move-wide/from16 v23, v19

    move-object/from16 v20, v6

    move/from16 v19, v22

    move-wide/from16 v6, v23

    .end local v6    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    .end local v7    # "endX":F
    .local v4, "endX":F
    .local v5, "endY":F
    .local v10, "centerX":F
    .local v11, "centerY":F
    .local v17, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v18, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .local v19, "count":I
    .local v20, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/widget/LockPatternView;->drawLineSegment(Landroid/graphics/Canvas;FFFFJJ)V

    .line 1472
    move v7, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    .end local v2    # "lastX":F
    .local v3, "lastX":F
    .local v4, "lastY":F
    .restart local v7    # "endX":F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1473
    .local v1, "tempPath":Landroid/graphics/Path;
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1474
    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1475
    iget-object v6, v0, Lcom/android/internal/widget/LockPatternView;->mPatternPath:Landroid/graphics/Path;

    invoke-virtual {v6, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_152

    .line 1457
    .end local v7    # "endX":F
    .end local v17    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v18    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v19    # "count":I
    .end local v20    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    .local v1, "centerX":F
    .restart local v2    # "lastX":F
    .local v3, "lastY":F
    .local v4, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v5, "centerY":F
    .local v10, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .local v11, "count":I
    :cond_146
    move-object/from16 v17, v4

    move-object/from16 v18, v10

    move/from16 v19, v11

    move v10, v1

    move v4, v3

    move v11, v5

    move v3, v2

    move-object/from16 v2, p1

    .line 1477
    .end local v1    # "centerX":F
    .end local v2    # "lastX":F
    .end local v5    # "centerY":F
    .local v3, "lastX":F
    .local v4, "lastY":F
    .local v10, "centerX":F
    .local v11, "centerY":F
    .restart local v17    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v18    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .restart local v19    # "count":I
    :goto_152
    move v1, v10

    .line 1478
    .end local v3    # "lastX":F
    .local v1, "lastX":F
    move v3, v11

    .line 1440
    .end local v4    # "lastY":F
    .end local v10    # "centerX":F
    .end local v11    # "centerY":F
    .end local v17    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v3, "lastY":F
    add-int/lit8 v15, v15, 0x1

    move v2, v1

    move/from16 v1, v16

    move-object/from16 v10, v18

    move/from16 v11, v19

    goto/16 :goto_ab

    .end local v16    # "anyCircles":Z
    .end local v18    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v19    # "count":I
    .local v1, "anyCircles":Z
    .restart local v2    # "lastX":F
    .local v10, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .local v11, "count":I
    :cond_15f
    move v4, v3

    move-object/from16 v18, v10

    move/from16 v19, v11

    move v3, v2

    move-object/from16 v2, p1

    .line 1482
    .end local v2    # "lastX":F
    .end local v10    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v11    # "count":I
    .end local v15    # "i":I
    .local v3, "lastX":F
    .restart local v4    # "lastY":F
    .restart local v18    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .restart local v19    # "count":I
    :goto_167
    iget-boolean v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v5, :cond_171

    iget-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v5, v6, :cond_19d

    :cond_171
    if-eqz v1, :cond_19d

    .line 1484
    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    .line 1485
    invoke-virtual {v13, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1486
    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v6, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1488
    iget-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v7, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-direct {v0, v6, v7, v3, v4}, Lcom/android/internal/widget/LockPatternView;->calculateLastSegmentAlpha(FFFF)F

    move-result v6

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1490
    iget-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_19d

    .line 1433
    .end local v1    # "anyCircles":Z
    .end local v3    # "lastX":F
    .end local v4    # "lastY":F
    .end local v8    # "elapsedRealtime":J
    .end local v18    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v19    # "count":I
    .restart local v10    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .restart local v11    # "count":I
    :cond_197
    move-object/from16 v2, p1

    move-object/from16 v18, v10

    move/from16 v19, v11

    .line 1494
    .end local v10    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v11    # "count":I
    .restart local v18    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .restart local v19    # "count":I
    :cond_19d
    :goto_19d
    iget-boolean v1, v0, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    if-eqz v1, :cond_1af

    .line 1495
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mFadeAnimationAlpha:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1496
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mPatternPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1500
    :cond_1af
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b0
    const/4 v8, 0x3

    if-ge v1, v8, :cond_226

    .line 1501
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v9

    .line 1502
    .restart local v9    # "centerY":F
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1b8
    if-ge v3, v8, :cond_21b

    .line 1503
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v4, v4, v1

    aget-object v10, v4, v3

    .line 1504
    .local v10, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v11

    .line 1505
    .local v11, "centerX":F
    iget v15, v10, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 1507
    .local v15, "translationY":F
    iget-boolean v4, v0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v4, :cond_1dd

    .line 1508
    iget v4, v10, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v5, v12, v1

    aget-boolean v5, v5, v3

    move-object/from16 v21, v2

    move v2, v1

    move-object/from16 v1, v21

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternView;->drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V

    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "i":I
    .end local v3    # "j":I
    .local v16, "i":I
    .local v17, "j":I
    goto :goto_212

    .line 1510
    .end local v16    # "i":I
    .end local v17    # "j":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :cond_1dd
    move/from16 v16, v1

    move/from16 v17, v3

    .end local v1    # "i":I
    .end local v3    # "j":I
    .restart local v16    # "i":I
    .restart local v17    # "j":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1fb

    iget-boolean v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    if-eqz v0, :cond_1fb

    .line 1511
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    .line 1512
    .local v0, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    iget-object v2, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget-object v3, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget-object v4, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 1514
    .end local v0    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    goto :goto_212

    .line 1515
    :cond_1fb
    float-to-int v0, v11

    int-to-float v2, v0

    float-to-int v0, v9

    int-to-float v0, v0

    add-float v3, v0, v15

    iget v4, v10, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v0, v12, v16

    aget-boolean v5, v0, v17

    iget v6, v10, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    iget v7, v10, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;FFFZFF)V

    .line 1502
    .end local v10    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .end local v11    # "centerX":F
    .end local v15    # "translationY":F
    :goto_212
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v1, v16

    .end local v17    # "j":I
    .restart local v3    # "j":I
    goto :goto_1b8

    .end local v16    # "i":I
    .restart local v1    # "i":I
    :cond_21b
    move/from16 v16, v1

    move/from16 v17, v3

    .line 1500
    .end local v1    # "i":I
    .end local v3    # "j":I
    .end local v9    # "centerY":F
    .restart local v16    # "i":I
    add-int/lit8 v1, v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .end local v16    # "i":I
    .restart local v1    # "i":I
    goto :goto_1b0

    .line 1522
    .end local v1    # "i":I
    :cond_226
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1119
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1121
    .local v0, "action":I
    packed-switch v0, :pswitch_data_2e

    :pswitch_13
    goto :goto_23

    .line 1129
    :pswitch_14
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_23

    .line 1123
    :pswitch_19
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1124
    goto :goto_23

    .line 1126
    :pswitch_1e
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1127
    nop

    .line 1132
    :goto_23
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1133
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1135
    .end local v0    # "action":I
    :cond_29
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_2e
    .packed-switch 0x7
        :pswitch_1e
        :pswitch_13
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1680
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1682
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "bottom":I
    .local p2, "changed":Z
    .local p3, "left":I
    .local p4, "top":I
    .local p5, "right":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p3, p4, p5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 1683
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 786
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 787
    .local v0, "minimumWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 788
    .local v1, "minimumHeight":I
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 789
    .local v2, "viewWidth":I
    invoke-direct {p0, p2, v1}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 791
    .local v3, "viewHeight":I
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_2c

    goto :goto_27

    .line 799
    :pswitch_16
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_27

    .line 796
    :pswitch_1b
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 797
    goto :goto_27

    .line 793
    :pswitch_20
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v4

    move v2, v4

    .line 794
    nop

    .line 803
    :goto_27
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setMeasuredDimension(II)V

    .line 804
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1668
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    .line 1669
    .local v0, "ss":Lcom/android/internal/widget/LockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1670
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1672
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v2

    .line 1670
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1673
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1674
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 1675
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 1676
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    .line 1657
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1658
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v7

    .line 1659
    .local v7, "patternBytes":[B
    if-eqz v7, :cond_12

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    move-object v2, v0

    .line 1660
    .local v2, "patternString":Ljava/lang/String;
    new-instance v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1662
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZLcom/android/internal/widget/LockPatternView-IA;)V

    .line 1660
    return-object v0
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 750
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 751
    .local v0, "width":I
    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 754
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    sub-int v1, p2, v1

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingBottom:I

    sub-int/2addr v1, v3

    .line 755
    .local v1, "height":I
    int-to-float v3, v1

    div-float/2addr v3, v2

    iput v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 756
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 757
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    div-float/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitMaxRadius:F

    .line 758
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitMaxRadius:F

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitFactor:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    .line 760
    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v2, :cond_48

    .line 761
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 762
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 764
    :cond_48
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1140
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2f

    .line 1144
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_30

    .line 1168
    return v1

    .line 1155
    :pswitch_15
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_22

    .line 1156
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1157
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 1158
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    .line 1166
    :cond_22
    return v2

    .line 1152
    :pswitch_23
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    .line 1153
    return v2

    .line 1149
    :pswitch_27
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->handleActionUp()V

    .line 1150
    return v2

    .line 1146
    :pswitch_2b
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 1147
    return v2

    .line 1141
    :cond_2f
    :goto_2f
    return v1

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_15
    .end packed-switch
.end method

.method public whitelist performHapticFeedback(II)Z
    .registers 4
    .param p1, "feedbackConstant"    # I
    .param p2, "flags"    # I

    .line 866
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExternalHapticsPlayer:Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;

    if-eqz v0, :cond_b

    .line 867
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExternalHapticsPlayer:Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;->performCellAddedFeedback()V

    .line 868
    const/4 v0, 0x1

    return v0

    .line 870
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public blacklist setColors(III)V
    .registers 5
    .param p1, "regularColor"    # I
    .param p2, "successColor"    # I
    .param p3, "errorColor"    # I

    .line 1330
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    .line 1331
    iput p3, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    .line 1332
    iput p2, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    .line 1333
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1334
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1335
    return-void
.end method

.method public greylist setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .registers 4
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 505
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 506
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_3e

    .line 507
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_35

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    .line 512
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 513
    .local v0, "first":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 514
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 515
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    goto :goto_3e

    .line 508
    .end local v0    # "first":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 518
    return-void
.end method

.method public blacklist setDotColors(II)V
    .registers 3
    .param p1, "dotColor"    # I
    .param p2, "dotActivatedColor"    # I

    .line 1341
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    .line 1342
    iput p2, p0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    .line 1343
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1344
    return-void
.end method

.method public blacklist setDotSizes(II)V
    .registers 3
    .param p1, "dotSizeDp"    # I
    .param p2, "dotSizeActivatedDp"    # I

    .line 1357
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    .line 1358
    iput p2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    .line 1359
    return-void
.end method

.method public greylist setExternalHapticsPlayer(Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;)V
    .registers 2
    .param p1, "player"    # Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;

    .line 477
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mExternalHapticsPlayer:Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;

    .line 478
    return-void
.end method

.method public blacklist setFadePattern(Z)V
    .registers 2
    .param p1, "fadePattern"    # Z

    .line 458
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    .line 459
    return-void
.end method

.method public greylist setInStealthMode(Z)V
    .registers 2
    .param p1, "inStealthMode"    # Z

    .line 450
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 451
    return-void
.end method

.method public blacklist setKeepDotActivated(Z)V
    .registers 2
    .param p1, "keepDotActivated"    # Z

    .line 1350
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    .line 1351
    return-void
.end method

.method public greylist setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .registers 2
    .param p1, "onPatternListener"    # Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 468
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 469
    return-void
.end method

.method public blacklist setPathWidth(I)V
    .registers 4
    .param p1, "pathWidthDp"    # I

    .line 1365
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    .line 1366
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1367
    return-void
.end method

.method public blacklist setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .registers 8
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 487
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 488
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 489
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 490
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 491
    .local v1, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 492
    .end local v1    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    goto :goto_11

    .line 494
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 495
    return-void
.end method

.method public blacklist startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 15
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "startTranslationY"    # F
    .param p5, "endTranslationY"    # F
    .param p6, "startScale"    # F
    .param p7, "endScale"    # F
    .param p8, "delay"    # J
    .param p10, "duration"    # J
    .param p12, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p13, "finishRunnable"    # Ljava/lang/Runnable;

    .line 524
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 525
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_d

    .line 529
    :cond_a
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 533
    :goto_d
    return-void
.end method
