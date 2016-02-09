.class public Lcom/android/internal/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$Cell;,
        Lcom/android/internal/widget/LockPatternView$CellState;,
        Lcom/android/internal/widget/LockPatternView$DisplayMode;,
        Lcom/android/internal/widget/LockPatternView$OnPatternListener;,
        Lcom/android/internal/widget/LockPatternView$SavedState;,
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field public static final DEBUG_A11Y:Z = false

.field private static final DRAG_THRESHHOLD:F = 0.0f

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field private static final TAG:Ljava/lang/String; = "LockPatternView"

.field public static final VIRTUAL_BASE_VIEW_ID:I = 0x1


# instance fields
.field private mAnimatingPeriodStart:J

.field private mAspect:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private final mDotSize:I

.field private final mDotSizeActivated:I

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mErrorColor:I

.field private mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPathWidth:I

.field private final mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field private final mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mRegularColor:I

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mSuccessColor:I

.field private final mTmpInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/LockPatternView;)Landroid/media/AudioManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mAudioManager:Landroid/media/AudioManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/widget/LockPatternView;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/LockPatternView;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/LockPatternView;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/internal/widget/LockPatternView;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/widget/LockPatternView;)Landroid/view/animation/Interpolator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/widget/LockPatternView;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/internal/widget/LockPatternView;)[[Z
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/widget/LockPatternView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/internal/widget/LockPatternView;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    #@2
    return v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/LockPatternView;I)F
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/LockPatternView;I)F
    .locals 1
    .param p1, "row"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/widget/LockPatternView;F)I
    .locals 1
    .param p1, "x"    # F

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getColumnHit(F)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/widget/LockPatternView;F)I
    .locals 1
    .param p1, "y"    # F

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getRowHit(F)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/widget/LockPatternView;FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p7, "endRunnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/LockPatternView;->startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 270
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/high16 v10, -0x40800000    # -1.0f

    #@3
    const/4 v9, 0x0

    #@4
    const/4 v8, 0x3

    #@5
    const/4 v7, 0x1

    #@6
    .line 274
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    .line 79
    iput-boolean v9, p0, Lcom/android/internal/widget/LockPatternView;->mDrawingProfilingStarted:Z

    #@b
    .line 81
    new-instance v5, Landroid/graphics/Paint;

    #@d
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    #@10
    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    #@12
    .line 82
    new-instance v5, Landroid/graphics/Paint;

    #@14
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    #@17
    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    #@19
    .line 101
    new-instance v5, Ljava/util/ArrayList;

    #@1b
    const/16 v6, 0x9

    #@1d
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@20
    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@22
    .line 109
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@24
    filled-new-array {v8, v8}, [I

    #@27
    move-result-object v6

    #@28
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@2b
    move-result-object v5

    #@2c
    check-cast v5, [[Z

    #@2e
    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    #@30
    .line 116
    iput v10, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    #@32
    .line 117
    iput v10, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    #@34
    .line 121
    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@36
    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@38
    .line 122
    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    #@3a
    .line 123
    iput-boolean v9, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    #@3c
    .line 124
    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    #@3e
    .line 125
    iput-boolean v9, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    #@40
    .line 127
    const v5, 0x3f19999a    # 0.6f

    #@43
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    #@45
    .line 132
    new-instance v5, Landroid/graphics/Path;

    #@47
    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    #@4a
    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    #@4c
    .line 133
    new-instance v5, Landroid/graphics/Rect;

    #@4e
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@51
    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    #@53
    .line 134
    new-instance v5, Landroid/graphics/Rect;

    #@55
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@58
    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    #@5a
    .line 276
    sget-object v5, Lcom/android/internal/R$styleable;->LockPatternView:[I

    #@5c
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5f
    move-result-object v0

    #@60
    .line 278
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    .line 280
    .local v1, "aspect":Ljava/lang/String;
    const-string/jumbo v5, "square"

    #@67
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v5

    #@6b
    if-eqz v5, :cond_0

    #@6d
    .line 281
    iput v9, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    #@6f
    .line 290
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->setClickable(Z)V

    #@72
    .line 293
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    #@74
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@77
    .line 294
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    #@79
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setDither(Z)V

    #@7c
    .line 296
    const v5, 0x106004a

    #@7f
    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    #@82
    move-result v5

    #@83
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    #@85
    .line 297
    const v5, 0x106004c

    #@88
    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    #@8b
    move-result v5

    #@8c
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    #@8e
    .line 298
    const v5, 0x106004b

    #@91
    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    #@94
    move-result v5

    #@95
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    #@97
    .line 299
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    #@99
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    #@9c
    move-result v5

    #@9d
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    #@9f
    .line 300
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    #@a1
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    #@a4
    move-result v5

    #@a5
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    #@a7
    .line 301
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    #@a9
    const/4 v6, 0x4

    #@aa
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    #@ad
    move-result v5

    #@ae
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    #@b0
    .line 303
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    #@b2
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    #@b5
    move-result v4

    #@b6
    .line 304
    .local v4, "pathColor":I
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    #@b8
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@bb
    .line 306
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    #@bd
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@bf
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@c2
    .line 307
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    #@c4
    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    #@c6
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@c9
    .line 308
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    #@cb
    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@cd
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@d0
    .line 310
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    #@d3
    move-result-object v5

    #@d4
    const v6, 0x105008c

    #@d7
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@da
    move-result v5

    #@db
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    #@dd
    .line 311
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    #@df
    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    #@e1
    int-to-float v6, v6

    #@e2
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@e5
    .line 313
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    #@e8
    move-result-object v5

    #@e9
    const v6, 0x105008d

    #@ec
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@ef
    move-result v5

    #@f0
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    #@f2
    .line 314
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    #@f5
    move-result-object v5

    #@f6
    .line 315
    const v6, 0x105008e

    #@f9
    .line 314
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@fc
    move-result v5

    #@fd
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    #@ff
    .line 317
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    #@101
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@104
    .line 318
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    #@106
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setDither(Z)V

    #@109
    .line 320
    const-class v5, Lcom/android/internal/widget/LockPatternView$CellState;

    #@10b
    filled-new-array {v8, v8}, [I

    #@10e
    move-result-object v6

    #@10f
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@112
    move-result-object v5

    #@113
    check-cast v5, [[Lcom/android/internal/widget/LockPatternView$CellState;

    #@115
    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    #@117
    .line 321
    const/4 v2, 0x0

    #@118
    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_4

    #@11a
    .line 322
    const/4 v3, 0x0

    #@11b
    .local v3, "j":I
    :goto_2
    if-ge v3, v8, :cond_3

    #@11d
    .line 323
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    #@11f
    aget-object v5, v5, v2

    #@121
    new-instance v6, Lcom/android/internal/widget/LockPatternView$CellState;

    #@123
    invoke-direct {v6}, Lcom/android/internal/widget/LockPatternView$CellState;-><init>()V

    #@126
    aput-object v6, v5, v3

    #@128
    .line 324
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    #@12a
    aget-object v5, v5, v2

    #@12c
    aget-object v5, v5, v3

    #@12e
    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    #@130
    div-int/lit8 v6, v6, 0x2

    #@132
    int-to-float v6, v6

    #@133
    iput v6, v5, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    #@135
    .line 325
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    #@137
    aget-object v5, v5, v2

    #@139
    aget-object v5, v5, v3

    #@13b
    iput v2, v5, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    #@13d
    .line 326
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    #@13f
    aget-object v5, v5, v2

    #@141
    aget-object v5, v5, v3

    #@143
    iput v3, v5, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    #@145
    .line 322
    add-int/lit8 v3, v3, 0x1

    #@147
    goto :goto_2

    #@148
    .line 282
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "pathColor":I
    :cond_0
    const-string/jumbo v5, "lock_width"

    #@14b
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14e
    move-result v5

    #@14f
    if-eqz v5, :cond_1

    #@151
    .line 283
    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    #@153
    goto/16 :goto_0

    #@155
    .line 284
    :cond_1
    const-string/jumbo v5, "lock_height"

    #@158
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15b
    move-result v5

    #@15c
    if-eqz v5, :cond_2

    #@15e
    .line 285
    iput v11, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    #@160
    goto/16 :goto_0

    #@162
    .line 287
    :cond_2
    iput v9, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    #@164
    goto/16 :goto_0

    #@166
    .line 321
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "pathColor":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@168
    goto :goto_1

    #@169
    .line 331
    .end local v3    # "j":I
    :cond_4
    const v5, 0x10c000d

    #@16c
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@16f
    move-result-object v5

    #@170
    .line 330
    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@172
    .line 333
    const v5, 0x10c000e

    #@175
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@178
    move-result-object v5

    #@179
    .line 332
    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@17b
    .line 334
    new-instance v5, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    #@17d
    invoke-direct {v5, p0, p0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V

    #@180
    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    #@182
    .line 335
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    #@184
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/LockPatternView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@187
    .line 336
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    #@189
    const-string/jumbo v6, "audio"

    #@18c
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18f
    move-result-object v5

    #@190
    check-cast v5, Landroid/media/AudioManager;

    #@192
    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mAudioManager:Landroid/media/AudioManager;

    #@194
    .line 273
    return-void
.end method

.method private addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3
    .param p1, "newCell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    #@0
    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    #@2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    #@5
    move-result v1

    #@6
    aget-object v0, v0, v1

    #@8
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    #@b
    move-result v1

    #@c
    const/4 v2, 0x1

    #@d
    aput-boolean v2, v0, v1

    #@f
    .line 715
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 716
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    #@16
    if-nez v0, :cond_0

    #@18
    .line 717
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    #@1b
    .line 719
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyCellAdded()V

    #@1e
    .line 713
    return-void
.end method

.method private calculateLastSegmentAlpha(FFFF)F
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "lastX"    # F
    .param p4, "lastY"    # F

    #@0
    .prologue
    .line 1163
    sub-float v0, p1, p3

    #@2
    .line 1164
    .local v0, "diffX":F
    sub-float v1, p2, p4

    #@4
    .line 1165
    .local v1, "diffY":F
    mul-float v4, v0, v0

    #@6
    mul-float v5, v1, v1

    #@8
    add-float/2addr v4, v5

    #@9
    float-to-double v4, v4

    #@a
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@d
    move-result-wide v4

    #@e
    double-to-float v2, v4

    #@f
    .line 1166
    .local v2, "dist":F
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    #@11
    div-float v3, v2, v4

    #@13
    .line 1167
    .local v3, "frac":F
    const v4, 0x3e99999a    # 0.3f

    #@16
    sub-float v4, v3, v4

    #@18
    const/high16 v5, 0x40800000    # 4.0f

    #@1a
    mul-float/2addr v4, v5

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    #@1f
    move-result v4

    #@20
    const/high16 v5, 0x3f800000    # 1.0f

    #@22
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    #@25
    move-result v4

    #@26
    return v4
.end method

.method private cancelLineAnimations()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x1

    #@2
    .line 987
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    #@5
    .line 988
    const/4 v1, 0x0

    #@6
    .local v1, "j":I
    :goto_1
    if-ge v1, v5, :cond_1

    #@8
    .line 989
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    #@a
    aget-object v3, v3, v0

    #@c
    aget-object v2, v3, v1

    #@e
    .line 990
    .local v2, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 991
    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    #@14
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    #@17
    .line 992
    iput v4, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    #@19
    .line 993
    iput v4, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    #@1b
    .line 988
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 987
    .end local v2    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 986
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 787
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternView;->getRowHit(F)I

    #@4
    move-result v1

    #@5
    .line 788
    .local v1, "rowHit":I
    if-gez v1, :cond_0

    #@7
    .line 789
    return-object v3

    #@8
    .line 791
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getColumnHit(F)I

    #@b
    move-result v0

    #@c
    .line 792
    .local v0, "columnHit":I
    if-gez v0, :cond_1

    #@e
    .line 793
    return-object v3

    #@f
    .line 796
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    #@11
    aget-object v2, v2, v1

    #@13
    aget-boolean v2, v2, v0

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 797
    return-object v3

    #@18
    .line 799
    :cond_2
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    #@1b
    move-result-object v2

    #@1c
    return-object v2
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 592
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    #@4
    .line 593
    const/4 v1, 0x0

    #@5
    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_0

    #@7
    .line 594
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    #@9
    aget-object v2, v2, v0

    #@b
    const/4 v3, 0x0

    #@c
    aput-boolean v3, v2, v1

    #@e
    .line 593
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_1

    #@11
    .line 592
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 591
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v10, -0x1

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v9, 0x1

    #@4
    .line 673
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    #@7
    move-result-object v0

    #@8
    .line 674
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_8

    #@a
    .line 677
    const/4 v4, 0x0

    #@b
    .line 678
    .local v4, "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@d
    .line 679
    .local v7, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@10
    move-result v8

    #@11
    if-nez v8, :cond_3

    #@13
    .line 680
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v8

    #@17
    add-int/lit8 v8, v8, -0x1

    #@19
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v6

    #@1d
    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    #@1f
    .line 681
    .local v6, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@21
    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@23
    sub-int v2, v8, v11

    #@25
    .line 682
    .local v2, "dRow":I
    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@27
    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@29
    sub-int v1, v8, v11

    #@2b
    .line 684
    .local v1, "dColumn":I
    iget v5, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@2d
    .line 685
    .local v5, "fillInRow":I
    iget v3, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@2f
    .line 687
    .local v3, "fillInColumn":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    #@32
    move-result v8

    #@33
    if-ne v8, v12, :cond_0

    #@35
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@38
    move-result v8

    #@39
    if-eq v8, v9, :cond_0

    #@3b
    .line 688
    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@3d
    if-lez v2, :cond_6

    #@3f
    move v8, v9

    #@40
    :goto_0
    add-int v5, v11, v8

    #@42
    .line 691
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@45
    move-result v8

    #@46
    if-ne v8, v12, :cond_2

    #@48
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    #@4b
    move-result v8

    #@4c
    if-eq v8, v9, :cond_2

    #@4e
    .line 692
    iget v8, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@50
    if-lez v1, :cond_1

    #@52
    move v10, v9

    #@53
    :cond_1
    add-int v3, v8, v10

    #@55
    .line 695
    :cond_2
    invoke-static {v5, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    #@58
    move-result-object v4

    #@59
    .line 698
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_3
    if-eqz v4, :cond_4

    #@5b
    .line 699
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    #@5d
    iget v10, v4, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@5f
    aget-object v8, v8, v10

    #@61
    iget v10, v4, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@63
    aget-boolean v8, v8, v10

    #@65
    if-eqz v8, :cond_7

    #@67
    .line 702
    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    #@6a
    .line 703
    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    #@6c
    if-eqz v8, :cond_5

    #@6e
    .line 705
    const/4 v8, 0x3

    #@6f
    .line 704
    invoke-virtual {p0, v9, v8}, Lcom/android/internal/widget/LockPatternView;->performHapticFeedback(II)Z

    #@72
    .line 708
    :cond_5
    return-object v0

    #@73
    .restart local v1    # "dColumn":I
    .restart local v2    # "dRow":I
    .restart local v3    # "fillInColumn":I
    .restart local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v5    # "fillInRow":I
    .restart local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_6
    move v8, v10

    #@74
    .line 688
    goto :goto_0

    #@75
    .line 700
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    #@78
    goto :goto_1

    #@79
    .line 710
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_8
    return-object v8
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFFZF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "radius"    # F
    .param p5, "partOfPattern"    # Z
    .param p6, "alpha"    # F

    #@0
    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-direct {p0, p5}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@9
    .line 1191
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    #@b
    const/high16 v1, 0x437f0000    # 255.0f

    #@d
    mul-float/2addr v1, p6

    #@e
    float-to-int v1, v1

    #@f
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@12
    .line 1192
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    #@14
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@17
    .line 1189
    return-void
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .param p1, "column"    # I

    #@0
    .prologue
    .line 1032
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    #@2
    int-to-float v0, v0

    #@3
    int-to-float v1, p1

    #@4
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    #@6
    mul-float/2addr v1, v2

    #@7
    add-float/2addr v0, v1

    #@8
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    #@a
    const/high16 v2, 0x40000000    # 2.0f

    #@c
    div-float/2addr v1, v2

    #@d
    add-float/2addr v0, v1

    #@e
    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .param p1, "row"    # I

    #@0
    .prologue
    .line 1036
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    #@2
    int-to-float v0, v0

    #@3
    int-to-float v1, p1

    #@4
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    #@6
    mul-float/2addr v1, v2

    #@7
    add-float/2addr v0, v1

    #@8
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    #@a
    const/high16 v2, 0x40000000    # 2.0f

    #@c
    div-float/2addr v1, v2

    #@d
    add-float/2addr v0, v1

    #@e
    return v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .param p1, "x"    # F

    #@0
    .prologue
    .line 829
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    #@2
    .line 830
    .local v4, "squareWidth":F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    #@4
    mul-float v1, v4, v5

    #@6
    .line 832
    .local v1, "hitSize":F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    #@8
    int-to-float v5, v5

    #@9
    sub-float v6, v4, v1

    #@b
    const/high16 v7, 0x40000000    # 2.0f

    #@d
    div-float/2addr v6, v7

    #@e
    add-float v3, v5, v6

    #@10
    .line 833
    .local v3, "offset":F
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    #@12
    if-ge v2, v5, :cond_1

    #@14
    .line 835
    int-to-float v5, v2

    #@15
    mul-float/2addr v5, v4

    #@16
    add-float v0, v3, v5

    #@18
    .line 836
    .local v0, "hitLeft":F
    cmpl-float v5, p1, v0

    #@1a
    if-ltz v5, :cond_0

    #@1c
    add-float v5, v0, v1

    #@1e
    cmpg-float v5, p1, v5

    #@20
    if-gtz v5, :cond_0

    #@22
    .line 837
    return v2

    #@23
    .line 833
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 840
    .end local v0    # "hitLeft":F
    :cond_1
    const/4 v5, -0x1

    #@27
    return v5
.end method

.method private getCurrentColor(Z)I
    .locals 3
    .param p1, "partOfPattern"    # Z

    #@0
    .prologue
    .line 1171
    if-eqz p1, :cond_0

    #@2
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    #@4
    if-nez v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1173
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    #@c
    return v0

    #@d
    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@f
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@11
    if-ne v0, v1, :cond_2

    #@13
    .line 1176
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    #@15
    return v0

    #@16
    .line 1177
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@18
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@1a
    if-eq v0, v1, :cond_3

    #@1c
    .line 1178
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@1e
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@20
    if-ne v0, v1, :cond_4

    #@22
    .line 1179
    :cond_3
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    #@24
    return v0

    #@25
    .line 1181
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "unknown display mode "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0
.end method

.method private getRowHit(F)I
    .locals 8
    .param p1, "y"    # F

    #@0
    .prologue
    .line 809
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    #@2
    .line 810
    .local v4, "squareHeight":F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    #@4
    mul-float v0, v4, v5

    #@6
    .line 812
    .local v0, "hitSize":F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    #@8
    int-to-float v5, v5

    #@9
    sub-float v6, v4, v0

    #@b
    const/high16 v7, 0x40000000    # 2.0f

    #@d
    div-float/2addr v6, v7

    #@e
    add-float v3, v5, v6

    #@10
    .line 813
    .local v3, "offset":F
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    #@12
    if-ge v2, v5, :cond_1

    #@14
    .line 815
    int-to-float v5, v2

    #@15
    mul-float/2addr v5, v4

    #@16
    add-float v1, v3, v5

    #@18
    .line 816
    .local v1, "hitTop":F
    cmpl-float v5, p1, v1

    #@1a
    if-ltz v5, :cond_0

    #@1c
    add-float v5, v1, v0

    #@1e
    cmpg-float v5, p1, v5

    #@20
    if-gtz v5, :cond_0

    #@22
    .line 817
    return v2

    #@23
    .line 813
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 820
    .end local v1    # "hitTop":F
    :cond_1
    const/4 v5, -0x1

    #@27
    return v5
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    #@2
    .line 999
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    #@5
    .line 1000
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@8
    move-result v5

    #@9
    .line 1001
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@c
    move-result v6

    #@d
    .line 1002
    .local v6, "y":F
    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    #@10
    move-result-object v1

    #@11
    .line 1003
    .local v1, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v1, :cond_2

    #@13
    .line 1004
    const/4 v7, 0x1

    #@14
    invoke-direct {p0, v7}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    #@17
    .line 1005
    sget-object v7, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@19
    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@1b
    .line 1006
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    #@1e
    .line 1011
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    #@20
    .line 1012
    iget v7, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@22
    invoke-direct {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    #@25
    move-result v2

    #@26
    .line 1013
    .local v2, "startX":F
    iget v7, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@28
    invoke-direct {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    #@2b
    move-result v3

    #@2c
    .line 1015
    .local v3, "startY":F
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    #@2e
    div-float v4, v7, v8

    #@30
    .line 1016
    .local v4, "widthOffset":F
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    #@32
    div-float v0, v7, v8

    #@34
    .line 1018
    .local v0, "heightOffset":F
    sub-float v7, v2, v4

    #@36
    float-to-int v7, v7

    #@37
    sub-float v8, v3, v0

    #@39
    float-to-int v8, v8

    #@3a
    .line 1019
    add-float v9, v2, v4

    #@3c
    float-to-int v9, v9

    #@3d
    add-float v10, v3, v0

    #@3f
    float-to-int v10, v10

    #@40
    .line 1018
    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/internal/widget/LockPatternView;->invalidate(IIII)V

    #@43
    .line 1021
    .end local v0    # "heightOffset":F
    .end local v2    # "startX":F
    .end local v3    # "startY":F
    .end local v4    # "widthOffset":F
    :cond_1
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    #@45
    .line 1022
    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    #@47
    .line 998
    return-void

    #@48
    .line 1007
    :cond_2
    iget-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    #@4a
    if-eqz v7, :cond_0

    #@4c
    .line 1008
    const/4 v7, 0x0

    #@4d
    invoke-direct {p0, v7}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    #@50
    .line 1009
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    #@53
    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 30
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 905
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    #@4
    move/from16 v25, v0

    #@6
    move/from16 v0, v25

    #@8
    int-to-float v0, v0

    #@9
    move/from16 v19, v0

    #@b
    .line 906
    .local v19, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    #@e
    move-result v7

    #@f
    .line 907
    .local v7, "historySize":I
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    #@13
    move-object/from16 v25, v0

    #@15
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->setEmpty()V

    #@18
    .line 908
    const/4 v12, 0x0

    #@19
    .line 909
    .local v12, "invalidateNow":Z
    const/4 v11, 0x0

    #@1a
    .local v11, "i":I
    :goto_0
    add-int/lit8 v25, v7, 0x1

    #@1c
    move/from16 v0, v25

    #@1e
    if-ge v11, v0, :cond_7

    #@20
    .line 910
    if-ge v11, v7, :cond_5

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    #@27
    move-result v23

    #@28
    .line 911
    .local v23, "x":F
    :goto_1
    if-ge v11, v7, :cond_6

    #@2a
    move-object/from16 v0, p1

    #@2c
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    #@2f
    move-result v24

    #@30
    .line 912
    .local v24, "y":F
    :goto_2
    move-object/from16 v0, p0

    #@32
    move/from16 v1, v23

    #@34
    move/from16 v2, v24

    #@36
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    #@39
    move-result-object v8

    #@3a
    .line 913
    .local v8, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@3e
    move-object/from16 v25, v0

    #@40
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v18

    #@44
    .line 914
    .local v18, "patternSize":I
    if-eqz v8, :cond_0

    #@46
    const/16 v25, 0x1

    #@48
    move/from16 v0, v18

    #@4a
    move/from16 v1, v25

    #@4c
    if-ne v0, v1, :cond_0

    #@4e
    .line 915
    const/16 v25, 0x1

    #@50
    move-object/from16 v0, p0

    #@52
    move/from16 v1, v25

    #@54
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    #@57
    .line 916
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    #@5a
    .line 919
    :cond_0
    move-object/from16 v0, p0

    #@5c
    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    #@5e
    move/from16 v25, v0

    #@60
    sub-float v25, v23, v25

    #@62
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    #@65
    move-result v4

    #@66
    .line 920
    .local v4, "dx":F
    move-object/from16 v0, p0

    #@68
    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    #@6a
    move/from16 v25, v0

    #@6c
    sub-float v25, v24, v25

    #@6e
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    #@71
    move-result v5

    #@72
    .line 921
    .local v5, "dy":F
    const/16 v25, 0x0

    #@74
    cmpl-float v25, v4, v25

    #@76
    if-gtz v25, :cond_1

    #@78
    const/16 v25, 0x0

    #@7a
    cmpl-float v25, v5, v25

    #@7c
    if-lez v25, :cond_2

    #@7e
    .line 922
    :cond_1
    const/4 v12, 0x1

    #@7f
    .line 925
    :cond_2
    move-object/from16 v0, p0

    #@81
    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    #@83
    move/from16 v25, v0

    #@85
    if-eqz v25, :cond_4

    #@87
    if-lez v18, :cond_4

    #@89
    .line 926
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@8d
    move-object/from16 v17, v0

    #@8f
    .line 927
    .local v17, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    add-int/lit8 v25, v18, -0x1

    #@91
    move-object/from16 v0, v17

    #@93
    move/from16 v1, v25

    #@95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@98
    move-result-object v13

    #@99
    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    #@9b
    .line 928
    .local v13, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v0, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@9d
    move/from16 v25, v0

    #@9f
    move-object/from16 v0, p0

    #@a1
    move/from16 v1, v25

    #@a3
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    #@a6
    move-result v14

    #@a7
    .line 929
    .local v14, "lastCellCenterX":F
    iget v0, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@a9
    move/from16 v25, v0

    #@ab
    move-object/from16 v0, p0

    #@ad
    move/from16 v1, v25

    #@af
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    #@b2
    move-result v15

    #@b3
    .line 932
    .local v15, "lastCellCenterY":F
    move/from16 v0, v23

    #@b5
    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    #@b8
    move-result v25

    #@b9
    sub-float v16, v25, v19

    #@bb
    .line 933
    .local v16, "left":F
    move/from16 v0, v23

    #@bd
    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    #@c0
    move-result v25

    #@c1
    add-float v20, v25, v19

    #@c3
    .line 934
    .local v20, "right":F
    move/from16 v0, v24

    #@c5
    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    #@c8
    move-result v25

    #@c9
    sub-float v21, v25, v19

    #@cb
    .line 935
    .local v21, "top":F
    move/from16 v0, v24

    #@cd
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    #@d0
    move-result v25

    #@d1
    add-float v3, v25, v19

    #@d3
    .line 938
    .local v3, "bottom":F
    if-eqz v8, :cond_3

    #@d5
    .line 939
    move-object/from16 v0, p0

    #@d7
    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    #@d9
    move/from16 v25, v0

    #@db
    const/high16 v26, 0x3f000000    # 0.5f

    #@dd
    mul-float v22, v25, v26

    #@df
    .line 940
    .local v22, "width":F
    move-object/from16 v0, p0

    #@e1
    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    #@e3
    move/from16 v25, v0

    #@e5
    const/high16 v26, 0x3f000000    # 0.5f

    #@e7
    mul-float v6, v25, v26

    #@e9
    .line 941
    .local v6, "height":F
    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@eb
    move/from16 v25, v0

    #@ed
    move-object/from16 v0, p0

    #@ef
    move/from16 v1, v25

    #@f1
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    #@f4
    move-result v9

    #@f5
    .line 942
    .local v9, "hitCellCenterX":F
    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@f7
    move/from16 v25, v0

    #@f9
    move-object/from16 v0, p0

    #@fb
    move/from16 v1, v25

    #@fd
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    #@100
    move-result v10

    #@101
    .line 944
    .local v10, "hitCellCenterY":F
    sub-float v25, v9, v22

    #@103
    move/from16 v0, v25

    #@105
    move/from16 v1, v16

    #@107
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@10a
    move-result v16

    #@10b
    .line 945
    add-float v25, v9, v22

    #@10d
    move/from16 v0, v25

    #@10f
    move/from16 v1, v20

    #@111
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@114
    move-result v20

    #@115
    .line 946
    sub-float v25, v10, v6

    #@117
    move/from16 v0, v25

    #@119
    move/from16 v1, v21

    #@11b
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@11e
    move-result v21

    #@11f
    .line 947
    add-float v25, v10, v6

    #@121
    move/from16 v0, v25

    #@123
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    #@126
    move-result v3

    #@127
    .line 951
    .end local v6    # "height":F
    .end local v9    # "hitCellCenterX":F
    .end local v10    # "hitCellCenterY":F
    .end local v22    # "width":F
    :cond_3
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    #@12b
    move-object/from16 v25, v0

    #@12d
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    #@130
    move-result v26

    #@131
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    #@134
    move-result v27

    #@135
    .line 952
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    #@138
    move-result v28

    #@139
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@13c
    move-result v29

    #@13d
    .line 951
    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Rect;->union(IIII)V

    #@140
    .line 909
    .end local v3    # "bottom":F
    .end local v13    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v16    # "left":F
    .end local v17    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v20    # "right":F
    .end local v21    # "top":F
    :cond_4
    add-int/lit8 v11, v11, 0x1

    #@142
    goto/16 :goto_0

    #@144
    .line 910
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v18    # "patternSize":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@147
    move-result v23

    #@148
    .restart local v23    # "x":F
    goto/16 :goto_1

    #@14a
    .line 911
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@14d
    move-result v24

    #@14e
    .restart local v24    # "y":F
    goto/16 :goto_2

    #@150
    .line 955
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@153
    move-result v25

    #@154
    move/from16 v0, v25

    #@156
    move-object/from16 v1, p0

    #@158
    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    #@15a
    .line 956
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@15d
    move-result v25

    #@15e
    move/from16 v0, v25

    #@160
    move-object/from16 v1, p0

    #@162
    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    #@164
    .line 959
    if-eqz v12, :cond_8

    #@166
    .line 960
    move-object/from16 v0, p0

    #@168
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    #@16a
    move-object/from16 v25, v0

    #@16c
    move-object/from16 v0, p0

    #@16e
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    #@170
    move-object/from16 v26, v0

    #@172
    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    #@175
    .line 961
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    #@179
    move-object/from16 v25, v0

    #@17b
    move-object/from16 v0, p0

    #@17d
    move-object/from16 v1, v25

    #@17f
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    #@182
    .line 962
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    #@186
    move-object/from16 v25, v0

    #@188
    move-object/from16 v0, p0

    #@18a
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    #@18c
    move-object/from16 v26, v0

    #@18e
    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@191
    .line 902
    :cond_8
    return-void
.end method

.method private handleActionUp()V
    .locals 1

    #@0
    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 973
    const/4 v0, 0x0

    #@9
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    #@c
    .line 974
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->cancelLineAnimations()V

    #@f
    .line 975
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternDetected()V

    #@12
    .line 976
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    #@15
    .line 970
    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    #@0
    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 534
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    #@6
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    #@b
    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    #@d
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    #@10
    .line 531
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    #@0
    .prologue
    .line 556
    const v0, 0x1040295

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    #@6
    .line 557
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 558
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    #@c
    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    #@f
    .line 555
    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    #@0
    .prologue
    .line 549
    const v0, 0x1040298

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    #@6
    .line 550
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    #@c
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@e
    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    #@11
    .line 548
    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    #@0
    .prologue
    .line 542
    const v0, 0x1040294

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    #@6
    .line 543
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 544
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    #@c
    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    #@f
    .line 541
    :cond_0
    return-void
.end method

.method private resetPattern()V
    .locals 1

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 583
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    #@8
    .line 584
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@a
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@c
    .line 585
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    #@f
    .line 581
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    #@0
    .prologue
    .line 627
    const/4 v0, 0x0

    #@1
    .line 628
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@4
    move-result v1

    #@5
    .line 629
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@8
    move-result v2

    #@9
    sparse-switch v2, :sswitch_data_0

    #@c
    .line 638
    move v0, v1

    #@d
    .line 640
    :goto_0
    return v0

    #@e
    .line 631
    :sswitch_0
    move v0, p2

    #@f
    .line 632
    goto :goto_0

    #@10
    .line 634
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    #@13
    move-result v0

    #@14
    goto :goto_0

    #@15
    .line 629
    nop

    #@16
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@9
    .line 966
    return-void
.end method

.method private setPatternInProgress(Z)V
    .locals 1
    .param p1, "progress"    # Z

    #@0
    .prologue
    .line 898
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    #@2
    .line 899
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    #@7
    .line 897
    return-void
.end method

.method private startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 12
    .param p1, "cell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    #@0
    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    #@2
    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@4
    aget-object v0, v0, v1

    #@6
    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@8
    aget-object v7, v0, v1

    #@a
    .line 724
    .local v7, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    #@c
    div-int/lit8 v0, v0, 0x2

    #@e
    int-to-float v2, v0

    #@f
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    #@11
    div-int/lit8 v0, v0, 0x2

    #@13
    int-to-float v3, v0

    #@14
    const-wide/16 v4, 0x60

    #@16
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@18
    .line 725
    new-instance v8, Lcom/android/internal/widget/LockPatternView$4;

    #@1a
    invoke-direct {v8, p0, v7}, Lcom/android/internal/widget/LockPatternView$4;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    #@1d
    move-object v1, p0

    #@1e
    .line 724
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/widget/LockPatternView;->startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    #@21
    .line 733
    iget v8, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    #@23
    iget v9, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    #@25
    .line 734
    iget v0, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@27
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    #@2a
    move-result v10

    #@2b
    iget v0, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@2d
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    #@30
    move-result v11

    #@31
    move-object v6, p0

    #@32
    .line 733
    invoke-direct/range {v6 .. v11}, Lcom/android/internal/widget/LockPatternView;->startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    #@35
    .line 722
    return-void
.end method

.method private startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 12
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

    #@0
    .prologue
    .line 478
    iput p3, p1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    #@2
    .line 479
    move/from16 v0, p5

    #@4
    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    #@6
    .line 480
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    #@8
    div-int/lit8 v2, v2, 0x2

    #@a
    int-to-float v2, v2

    #@b
    mul-float v2, v2, p7

    #@d
    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    #@f
    .line 481
    const/4 v2, 0x1

    #@10
    iput-boolean v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    #@12
    .line 483
    iget v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    #@14
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    #@17
    move-result v2

    #@18
    add-float v2, v2, p4

    #@1a
    .line 482
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    #@1d
    move-result-object v2

    #@1e
    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    #@20
    .line 484
    iget v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    #@22
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    #@25
    move-result v2

    #@26
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    #@29
    move-result-object v2

    #@2a
    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    #@2c
    .line 485
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    #@2e
    div-int/lit8 v2, v2, 0x2

    #@30
    int-to-float v2, v2

    #@31
    mul-float v2, v2, p6

    #@33
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    #@36
    move-result-object v2

    #@37
    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    #@39
    .line 486
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    #@3b
    const/4 v3, 0x0

    #@3c
    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    #@3f
    move-result v3

    #@40
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    #@43
    .line 487
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    #@45
    const/high16 v3, 0x437f0000    # 255.0f

    #@47
    mul-float/2addr v3, p2

    #@48
    float-to-int v3, v3

    #@49
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    #@4c
    .line 488
    new-instance v2, Landroid/graphics/Paint;

    #@4e
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    #@50
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@53
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    #@56
    move-result-object v2

    #@57
    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    #@59
    .line 490
    iget-object v4, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    #@5b
    .line 491
    iget v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    #@5d
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    #@60
    move-result v2

    #@61
    add-float v5, v2, p5

    #@63
    move-object v3, p0

    #@64
    move-wide/from16 v6, p8

    #@66
    move-wide/from16 v8, p10

    #@68
    move-object/from16 v10, p12

    #@6a
    .line 490
    invoke-direct/range {v3 .. v10}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    #@6d
    .line 492
    iget-object v4, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    #@6f
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    #@71
    div-int/lit8 v2, v2, 0x2

    #@73
    int-to-float v2, v2

    #@74
    mul-float v5, v2, p7

    #@76
    move-object v3, p0

    #@77
    move-wide/from16 v6, p8

    #@79
    move-wide/from16 v8, p10

    #@7b
    move-object/from16 v10, p12

    #@7d
    invoke-direct/range {v3 .. v10}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    #@80
    .line 495
    new-instance v11, Lcom/android/internal/widget/LockPatternView$3;

    #@82
    move-object/from16 v0, p13

    #@84
    invoke-direct {v11, p0, p1, v0}, Lcom/android/internal/widget/LockPatternView$3;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    #@87
    move-object v3, p0

    #@88
    move-object v4, p1

    #@89
    move v5, p3

    #@8a
    move-wide/from16 v6, p8

    #@8c
    move-wide/from16 v8, p10

    #@8e
    move-object/from16 v10, p12

    #@90
    .line 494
    invoke-direct/range {v3 .. v11}, Lcom/android/internal/widget/LockPatternView;->startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    #@93
    .line 505
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    #@96
    .line 477
    return-void
.end method

.method private startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 12
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

    #@0
    .prologue
    .line 445
    iput p2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    #@2
    .line 446
    move/from16 v0, p4

    #@4
    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    #@6
    .line 447
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    #@8
    div-int/lit8 v2, v2, 0x2

    #@a
    int-to-float v2, v2

    #@b
    mul-float v2, v2, p6

    #@d
    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    #@f
    .line 448
    const/4 v2, 0x2

    #@10
    new-array v2, v2, [F

    #@12
    fill-array-data v2, :array_0

    #@15
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@18
    move-result-object v11

    #@19
    .line 449
    .local v11, "animator":Landroid/animation/ValueAnimator;
    move-wide/from16 v0, p10

    #@1b
    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@1e
    .line 450
    move-wide/from16 v0, p8

    #@20
    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    #@23
    .line 451
    move-object/from16 v0, p12

    #@25
    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@28
    .line 452
    new-instance v2, Lcom/android/internal/widget/LockPatternView$1;

    #@2a
    move-object v3, p0

    #@2b
    move-object v4, p1

    #@2c
    move v5, p2

    #@2d
    move v6, p3

    #@2e
    move/from16 v7, p4

    #@30
    move/from16 v8, p5

    #@32
    move/from16 v9, p6

    #@34
    move/from16 v10, p7

    #@36
    invoke-direct/range {v2 .. v10}, Lcom/android/internal/widget/LockPatternView$1;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFFF)V

    #@39
    invoke-virtual {v11, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@3c
    .line 462
    new-instance v2, Lcom/android/internal/widget/LockPatternView$2;

    #@3e
    move-object/from16 v0, p13

    #@40
    invoke-direct {v2, p0, v0}, Lcom/android/internal/widget/LockPatternView$2;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    #@43
    invoke-virtual {v11, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@46
    .line 470
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    #@49
    .line 444
    return-void

    #@4a
    .line 448
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V
    .locals 8
    .param p1, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    #@0
    .prologue
    .line 739
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [F

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x0

    #@5
    aput v1, v0, v2

    #@7
    const/high16 v1, 0x3f800000    # 1.0f

    #@9
    const/4 v2, 0x1

    #@a
    aput v1, v0, v2

    #@c
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@f
    move-result-object v7

    #@10
    .line 740
    .local v7, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/internal/widget/LockPatternView$5;

    #@12
    move-object v1, p0

    #@13
    move-object v2, p1

    #@14
    move v3, p2

    #@15
    move v4, p4

    #@16
    move v5, p3

    #@17
    move v6, p5

    #@18
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternView$5;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    #@1b
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@1e
    .line 749
    new-instance v0, Lcom/android/internal/widget/LockPatternView$6;

    #@20
    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/LockPatternView$6;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    #@23
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@26
    .line 755
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@28
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@2b
    .line 756
    const-wide/16 v0, 0x64

    #@2d
    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@30
    .line 757
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    #@33
    .line 758
    iput-object v7, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    #@35
    .line 738
    return-void
.end method

.method private startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p7, "endRunnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 763
    const/4 v1, 0x2

    #@1
    new-array v1, v1, [F

    #@3
    const/4 v2, 0x0

    #@4
    aput p1, v1, v2

    #@6
    const/4 v2, 0x1

    #@7
    aput p2, v1, v2

    #@9
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@c
    move-result-object v0

    #@d
    .line 764
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/internal/widget/LockPatternView$7;

    #@f
    invoke-direct {v1, p0, p6}, Lcom/android/internal/widget/LockPatternView$7;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    #@12
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@15
    .line 771
    if-eqz p7, :cond_0

    #@17
    .line 772
    new-instance v1, Lcom/android/internal/widget/LockPatternView$8;

    #@19
    invoke-direct {v1, p0, p7}, Lcom/android/internal/widget/LockPatternView$8;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    #@1c
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@1f
    .line 779
    :cond_0
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@22
    .line 780
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@25
    .line 781
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    #@28
    .line 762
    return-void
.end method

.method private startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "endAlpha"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "listener"    # Landroid/animation/Animator$AnimatorListener;

    #@0
    .prologue
    .line 511
    new-instance v0, Landroid/view/RenderNodeAnimator;

    #@2
    iget-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    #@4
    .line 512
    const/high16 v2, 0x437f0000    # 255.0f

    #@6
    mul-float/2addr v2, p2

    #@7
    float-to-int v2, v2

    #@8
    int-to-float v2, v2

    #@9
    const/4 v3, 0x1

    #@a
    .line 511
    invoke-direct {v0, v1, v3, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    #@d
    .line 513
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    #@10
    .line 514
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    #@13
    .line 515
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@16
    .line 516
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    #@19
    .line 517
    invoke-virtual {v0, p8}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@1c
    .line 518
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    #@1f
    .line 510
    return-void
.end method

.method private startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p2, "endValue"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;FJJ",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 523
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    new-instance v0, Landroid/view/RenderNodeAnimator;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    #@5
    .line 524
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    #@8
    .line 525
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    #@b
    .line 526
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@e
    .line 527
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    #@11
    .line 528
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    #@14
    .line 522
    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    #@0
    .prologue
    .line 566
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    #@3
    .line 565
    return-void
.end method

.method public disableInput()V
    .locals 1

    #@0
    .prologue
    .line 604
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    #@3
    .line 603
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 573
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    .line 574
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    .line 575
    return v0
.end method

.method public enableInput()V
    .locals 1

    #@0
    .prologue
    .line 611
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    #@3
    .line 610
    return-void
.end method

.method public getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;
    .locals 1

    #@0
    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    #@2
    return-object v0
.end method

.method public isInStealthMode()Z
    .locals 1

    #@0
    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    #@2
    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    #@2
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 37
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1041
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@4
    move-object/from16 v32, v0

    #@6
    .line 1042
    .local v32, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v16

    #@a
    .line 1043
    .local v16, "count":I
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    #@e
    move-object/from16 v20, v0

    #@10
    .line 1045
    .local v20, "drawLookup":[[Z
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@14
    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@16
    if-ne v4, v5, :cond_2

    #@18
    .line 1050
    add-int/lit8 v4, v16, 0x1

    #@1a
    mul-int/lit16 v0, v4, 0x2bc

    #@1c
    move/from16 v31, v0

    #@1e
    .line 1051
    .local v31, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@21
    move-result-wide v4

    #@22
    .line 1052
    move-object/from16 v0, p0

    #@24
    iget-wide v6, v0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    #@26
    .line 1051
    sub-long/2addr v4, v6

    #@27
    long-to-int v4, v4

    #@28
    rem-int v34, v4, v31

    #@2a
    .line 1053
    .local v34, "spotInCycle":I
    move/from16 v0, v34

    #@2c
    div-int/lit16 v0, v0, 0x2bc

    #@2e
    move/from16 v30, v0

    #@30
    .line 1055
    .local v30, "numCircles":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    #@33
    .line 1056
    const/16 v24, 0x0

    #@35
    .local v24, "i":I
    :goto_0
    move/from16 v0, v24

    #@37
    move/from16 v1, v30

    #@39
    if-ge v0, v1, :cond_0

    #@3b
    .line 1057
    move-object/from16 v0, v32

    #@3d
    move/from16 v1, v24

    #@3f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v12

    #@43
    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    #@45
    .line 1058
    .local v12, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    #@48
    move-result v4

    #@49
    aget-object v4, v20, v4

    #@4b
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    #@4e
    move-result v5

    #@4f
    const/4 v6, 0x1

    #@50
    aput-boolean v6, v4, v5

    #@52
    .line 1056
    add-int/lit8 v24, v24, 0x1

    #@54
    goto :goto_0

    #@55
    .line 1063
    .end local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    if-lez v30, :cond_4

    #@57
    .line 1064
    move/from16 v0, v30

    #@59
    move/from16 v1, v16

    #@5b
    if-ge v0, v1, :cond_3

    #@5d
    const/16 v28, 0x1

    #@5f
    .line 1066
    .local v28, "needToUpdateInProgressPoint":Z
    :goto_1
    if-eqz v28, :cond_1

    #@61
    .line 1068
    move/from16 v0, v34

    #@63
    rem-int/lit16 v4, v0, 0x2bc

    #@65
    int-to-float v4, v4

    #@66
    .line 1069
    const/high16 v5, 0x442f0000    # 700.0f

    #@68
    .line 1068
    div-float v33, v4, v5

    #@6a
    .line 1071
    .local v33, "percentageOfNextCircle":F
    add-int/lit8 v4, v30, -0x1

    #@6c
    move-object/from16 v0, v32

    #@6e
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@71
    move-result-object v17

    #@72
    check-cast v17, Lcom/android/internal/widget/LockPatternView$Cell;

    #@74
    .line 1072
    .local v17, "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, v17

    #@76
    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@78
    move-object/from16 v0, p0

    #@7a
    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    #@7d
    move-result v14

    #@7e
    .line 1073
    .local v14, "centerX":F
    move-object/from16 v0, v17

    #@80
    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@82
    move-object/from16 v0, p0

    #@84
    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    #@87
    move-result v15

    #@88
    .line 1075
    .local v15, "centerY":F
    move-object/from16 v0, v32

    #@8a
    move/from16 v1, v30

    #@8c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8f
    move-result-object v29

    #@90
    check-cast v29, Lcom/android/internal/widget/LockPatternView$Cell;

    #@92
    .line 1077
    .local v29, "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, v29

    #@94
    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@96
    move-object/from16 v0, p0

    #@98
    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    #@9b
    move-result v4

    #@9c
    sub-float/2addr v4, v14

    #@9d
    .line 1076
    mul-float v22, v33, v4

    #@9f
    .line 1079
    .local v22, "dx":F
    move-object/from16 v0, v29

    #@a1
    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@a3
    move-object/from16 v0, p0

    #@a5
    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    #@a8
    move-result v4

    #@a9
    sub-float/2addr v4, v15

    #@aa
    .line 1078
    mul-float v23, v33, v4

    #@ac
    .line 1080
    .local v23, "dy":F
    add-float v4, v14, v22

    #@ae
    move-object/from16 v0, p0

    #@b0
    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    #@b2
    .line 1081
    add-float v4, v15, v23

    #@b4
    move-object/from16 v0, p0

    #@b6
    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    #@b8
    .line 1084
    .end local v14    # "centerX":F
    .end local v15    # "centerY":F
    .end local v17    # "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v22    # "dx":F
    .end local v23    # "dy":F
    .end local v29    # "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v33    # "percentageOfNextCircle":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    #@bb
    .line 1087
    .end local v24    # "i":I
    .end local v28    # "needToUpdateInProgressPoint":Z
    .end local v30    # "numCircles":I
    .end local v31    # "oneCycle":I
    .end local v34    # "spotInCycle":I
    :cond_2
    move-object/from16 v0, p0

    #@bd
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    #@bf
    move-object/from16 v18, v0

    #@c1
    .line 1088
    .local v18, "currentPath":Landroid/graphics/Path;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    #@c4
    .line 1091
    const/16 v24, 0x0

    #@c6
    .restart local v24    # "i":I
    :goto_2
    const/4 v4, 0x3

    #@c7
    move/from16 v0, v24

    #@c9
    if-ge v0, v4, :cond_7

    #@cb
    .line 1092
    move-object/from16 v0, p0

    #@cd
    move/from16 v1, v24

    #@cf
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    #@d2
    move-result v15

    #@d3
    .line 1093
    .restart local v15    # "centerY":F
    const/16 v25, 0x0

    #@d5
    .local v25, "j":I
    :goto_3
    const/4 v4, 0x3

    #@d6
    move/from16 v0, v25

    #@d8
    if-ge v0, v4, :cond_6

    #@da
    .line 1094
    move-object/from16 v0, p0

    #@dc
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    #@de
    aget-object v4, v4, v24

    #@e0
    aget-object v13, v4, v25

    #@e2
    .line 1095
    .local v13, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    move-object/from16 v0, p0

    #@e4
    move/from16 v1, v25

    #@e6
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    #@e9
    move-result v14

    #@ea
    .line 1096
    .restart local v14    # "centerX":F
    iget v0, v13, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    #@ec
    move/from16 v36, v0

    #@ee
    .line 1097
    .local v36, "translationY":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    #@f1
    move-result v4

    #@f2
    if-eqz v4, :cond_5

    #@f4
    iget-boolean v4, v13, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    #@f6
    if-eqz v4, :cond_5

    #@f8
    move-object/from16 v19, p1

    #@fa
    .line 1098
    check-cast v19, Landroid/view/DisplayListCanvas;

    #@fc
    .line 1099
    .local v19, "displayListCanvas":Landroid/view/DisplayListCanvas;
    iget-object v4, v13, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    #@fe
    iget-object v5, v13, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    #@100
    .line 1100
    iget-object v6, v13, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    #@102
    iget-object v7, v13, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    #@104
    .line 1099
    move-object/from16 v0, v19

    #@106
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    #@109
    .line 1093
    .end local v19    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    :goto_4
    add-int/lit8 v25, v25, 0x1

    #@10b
    goto :goto_3

    #@10c
    .line 1064
    .end local v13    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .end local v14    # "centerX":F
    .end local v15    # "centerY":F
    .end local v18    # "currentPath":Landroid/graphics/Path;
    .end local v25    # "j":I
    .end local v36    # "translationY":F
    .restart local v30    # "numCircles":I
    .restart local v31    # "oneCycle":I
    .restart local v34    # "spotInCycle":I
    :cond_3
    const/16 v28, 0x0

    #@10e
    .restart local v28    # "needToUpdateInProgressPoint":Z
    goto/16 :goto_1

    #@110
    .line 1063
    .end local v28    # "needToUpdateInProgressPoint":Z
    :cond_4
    const/16 v28, 0x0

    #@112
    .restart local v28    # "needToUpdateInProgressPoint":Z
    goto/16 :goto_1

    #@114
    .line 1102
    .end local v28    # "needToUpdateInProgressPoint":Z
    .end local v30    # "numCircles":I
    .end local v31    # "oneCycle":I
    .end local v34    # "spotInCycle":I
    .restart local v13    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .restart local v14    # "centerX":F
    .restart local v15    # "centerY":F
    .restart local v18    # "currentPath":Landroid/graphics/Path;
    .restart local v25    # "j":I
    .restart local v36    # "translationY":F
    :cond_5
    float-to-int v4, v14

    #@115
    int-to-float v6, v4

    #@116
    float-to-int v4, v15

    #@117
    int-to-float v4, v4

    #@118
    add-float v7, v4, v36

    #@11a
    .line 1103
    iget v8, v13, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    #@11c
    aget-object v4, v20, v24

    #@11e
    aget-boolean v9, v4, v25

    #@120
    iget v10, v13, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    #@122
    move-object/from16 v4, p0

    #@124
    move-object/from16 v5, p1

    #@126
    .line 1102
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;FFFZF)V

    #@129
    goto :goto_4

    #@12a
    .line 1091
    .end local v13    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .end local v14    # "centerX":F
    .end local v36    # "translationY":F
    :cond_6
    add-int/lit8 v24, v24, 0x1

    #@12c
    goto :goto_2

    #@12d
    .line 1112
    .end local v15    # "centerY":F
    .end local v25    # "j":I
    :cond_7
    move-object/from16 v0, p0

    #@12f
    iget-boolean v4, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    #@131
    if-eqz v4, :cond_b

    #@133
    const/16 v21, 0x0

    #@135
    .line 1114
    .local v21, "drawPath":Z
    :goto_5
    if-eqz v21, :cond_a

    #@137
    .line 1115
    move-object/from16 v0, p0

    #@139
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    #@13b
    const/4 v5, 0x1

    #@13c
    move-object/from16 v0, p0

    #@13e
    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    #@141
    move-result v5

    #@142
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    #@145
    .line 1117
    const/4 v11, 0x0

    #@146
    .line 1118
    .local v11, "anyCircles":Z
    const/16 v26, 0x0

    #@148
    .line 1119
    .local v26, "lastX":F
    const/16 v27, 0x0

    #@14a
    .line 1120
    .local v27, "lastY":F
    const/16 v24, 0x0

    #@14c
    :goto_6
    move/from16 v0, v24

    #@14e
    move/from16 v1, v16

    #@150
    if-ge v0, v1, :cond_8

    #@152
    .line 1121
    move-object/from16 v0, v32

    #@154
    move/from16 v1, v24

    #@156
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@159
    move-result-object v12

    #@15a
    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    #@15c
    .line 1126
    .restart local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v4, v12, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@15e
    aget-object v4, v20, v4

    #@160
    iget v5, v12, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@162
    aget-boolean v4, v4, v5

    #@164
    if-nez v4, :cond_c

    #@166
    .line 1149
    .end local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_8
    move-object/from16 v0, p0

    #@168
    iget-boolean v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    #@16a
    if-nez v4, :cond_9

    #@16c
    move-object/from16 v0, p0

    #@16e
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@170
    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@172
    if-ne v4, v5, :cond_a

    #@174
    :cond_9
    if-eqz v11, :cond_a

    #@176
    .line 1151
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    #@179
    .line 1152
    move-object/from16 v0, v18

    #@17b
    move/from16 v1, v26

    #@17d
    move/from16 v2, v27

    #@17f
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    #@182
    .line 1153
    move-object/from16 v0, p0

    #@184
    iget v4, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    #@186
    move-object/from16 v0, p0

    #@188
    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    #@18a
    move-object/from16 v0, v18

    #@18c
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    #@18f
    .line 1155
    move-object/from16 v0, p0

    #@191
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    #@193
    .line 1156
    move-object/from16 v0, p0

    #@195
    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    #@197
    move-object/from16 v0, p0

    #@199
    iget v6, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    #@19b
    .line 1155
    move-object/from16 v0, p0

    #@19d
    move/from16 v1, v26

    #@19f
    move/from16 v2, v27

    #@1a1
    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/internal/widget/LockPatternView;->calculateLastSegmentAlpha(FFFF)F

    #@1a4
    move-result v5

    #@1a5
    .line 1156
    const/high16 v6, 0x437f0000    # 255.0f

    #@1a7
    .line 1155
    mul-float/2addr v5, v6

    #@1a8
    float-to-int v5, v5

    #@1a9
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    #@1ac
    .line 1157
    move-object/from16 v0, p0

    #@1ae
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    #@1b0
    move-object/from16 v0, p1

    #@1b2
    move-object/from16 v1, v18

    #@1b4
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@1b7
    .line 1040
    .end local v11    # "anyCircles":Z
    .end local v26    # "lastX":F
    .end local v27    # "lastY":F
    :cond_a
    return-void

    #@1b8
    .line 1112
    .end local v21    # "drawPath":Z
    :cond_b
    const/16 v21, 0x1

    #@1ba
    .restart local v21    # "drawPath":Z
    goto/16 :goto_5

    #@1bc
    .line 1129
    .restart local v11    # "anyCircles":Z
    .restart local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v26    # "lastX":F
    .restart local v27    # "lastY":F
    :cond_c
    const/4 v11, 0x1

    #@1bd
    .line 1131
    iget v4, v12, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    #@1c4
    move-result v14

    #@1c5
    .line 1132
    .restart local v14    # "centerX":F
    iget v4, v12, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    #@1cc
    move-result v15

    #@1cd
    .line 1133
    .restart local v15    # "centerY":F
    if-eqz v24, :cond_d

    #@1cf
    .line 1134
    move-object/from16 v0, p0

    #@1d1
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    #@1d3
    iget v5, v12, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    #@1d5
    aget-object v4, v4, v5

    #@1d7
    iget v5, v12, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    #@1d9
    aget-object v35, v4, v5

    #@1db
    .line 1135
    .local v35, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    #@1de
    .line 1136
    move-object/from16 v0, v18

    #@1e0
    move/from16 v1, v26

    #@1e2
    move/from16 v2, v27

    #@1e4
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    #@1e7
    .line 1137
    move-object/from16 v0, v35

    #@1e9
    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    #@1eb
    const/4 v5, 0x1

    #@1ec
    cmpl-float v4, v4, v5

    #@1ee
    if-eqz v4, :cond_e

    #@1f0
    move-object/from16 v0, v35

    #@1f2
    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    #@1f4
    const/4 v5, 0x1

    #@1f5
    cmpl-float v4, v4, v5

    #@1f7
    if-eqz v4, :cond_e

    #@1f9
    .line 1138
    move-object/from16 v0, v35

    #@1fb
    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    #@1fd
    move-object/from16 v0, v35

    #@1ff
    iget v5, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    #@201
    move-object/from16 v0, v18

    #@203
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    #@206
    .line 1142
    :goto_7
    move-object/from16 v0, p0

    #@208
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    #@20a
    move-object/from16 v0, p1

    #@20c
    move-object/from16 v1, v18

    #@20e
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@211
    .line 1144
    .end local v35    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_d
    move/from16 v26, v14

    #@213
    .line 1145
    move/from16 v27, v15

    #@215
    .line 1120
    add-int/lit8 v24, v24, 0x1

    #@217
    goto/16 :goto_6

    #@219
    .line 1140
    .restart local v35    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_e
    move-object/from16 v0, v18

    #@21b
    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    #@21e
    goto :goto_7
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 845
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@f
    move-result v0

    #@10
    .line 847
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@13
    .line 858
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@16
    .line 859
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    #@19
    .line 861
    .end local v0    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@1c
    move-result v1

    #@1d
    return v1

    #@1e
    .line 849
    .restart local v0    # "action":I
    :pswitch_1
    const/4 v1, 0x0

    #@1f
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    #@22
    goto :goto_0

    #@23
    .line 852
    :pswitch_2
    const/4 v1, 0x2

    #@24
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    #@27
    goto :goto_0

    #@28
    .line 855
    :pswitch_3
    const/4 v1, 0x1

    #@29
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    #@2c
    goto :goto_0

    #@2d
    .line 847
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumWidth()I

    #@3
    move-result v1

    #@4
    .line 646
    .local v1, "minimumWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumHeight()I

    #@7
    move-result v0

    #@8
    .line 647
    .local v0, "minimumHeight":I
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    #@b
    move-result v3

    #@c
    .line 648
    .local v3, "viewWidth":I
    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    #@f
    move-result v2

    #@10
    .line 650
    .local v2, "viewHeight":I
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    #@12
    packed-switch v4, :pswitch_data_0

    #@15
    .line 662
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/LockPatternView;->setMeasuredDimension(II)V

    #@18
    .line 644
    return-void

    #@19
    .line 652
    :pswitch_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    #@1c
    move-result v2

    #@1d
    move v3, v2

    #@1e
    .line 653
    goto :goto_0

    #@1f
    .line 655
    :pswitch_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    #@22
    move-result v2

    #@23
    goto :goto_0

    #@24
    .line 658
    :pswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    #@27
    move-result v3

    #@28
    goto :goto_0

    #@29
    .line 650
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 1206
    check-cast v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    #@3
    .line 1207
    .local v0, "ss":Lcom/android/internal/widget/LockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 1209
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@c
    .line 1210
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    #@13
    move-result-object v2

    #@14
    .line 1208
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    #@17
    .line 1211
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getDisplayMode()I

    #@1e
    move-result v2

    #@1f
    aget-object v1, v1, v2

    #@21
    iput-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@23
    .line 1212
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInputEnabled()Z

    #@26
    move-result v1

    #@27
    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    #@29
    .line 1213
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInStealthMode()Z

    #@2c
    move-result v1

    #@2d
    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    #@2f
    .line 1214
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    #@32
    move-result v1

    #@33
    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    #@35
    .line 1205
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    #@0
    .prologue
    .line 1197
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 1198
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    #@6
    .line 1199
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@8
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 1200
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@e
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    #@11
    move-result v3

    #@12
    .line 1201
    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    #@14
    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    #@16
    iget-boolean v6, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    #@18
    .line 1198
    const/4 v7, 0x0

    #@19
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/internal/widget/LockPatternView$SavedState;)V

    #@1c
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    #@2
    .line 616
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    #@4
    sub-int v2, p1, v2

    #@6
    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingRight:I

    #@8
    sub-int v1, v2, v3

    #@a
    .line 617
    .local v1, "width":I
    int-to-float v2, v1

    #@b
    div-float/2addr v2, v4

    #@c
    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    #@e
    .line 620
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    #@10
    sub-int v2, p2, v2

    #@12
    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingBottom:I

    #@14
    sub-int v0, v2, v3

    #@16
    .line 621
    .local v0, "height":I
    int-to-float v2, v0

    #@17
    div-float/2addr v2, v4

    #@18
    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    #@1a
    .line 622
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    #@1c
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    #@1f
    .line 615
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 866
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 870
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@f
    move-result v0

    #@10
    packed-switch v0, :pswitch_data_0

    #@13
    .line 894
    return v2

    #@14
    .line 867
    :cond_0
    return v2

    #@15
    .line 872
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    #@18
    .line 873
    return v1

    #@19
    .line 875
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->handleActionUp()V

    #@1c
    .line 876
    return v1

    #@1d
    .line 878
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    #@20
    .line 879
    return v1

    #@21
    .line 881
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 882
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    #@28
    .line 883
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    #@2b
    .line 884
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    #@2e
    .line 892
    :cond_1
    return v1

    #@2f
    .line 870
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .locals 5
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 410
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@3
    .line 411
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@5
    if-ne p1, v1, :cond_1

    #@7
    .line 412
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 413
    new-instance v1, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v2, "you must have a pattern to animate if you want to set the display mode to animate"

    #@14
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 416
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1b
    move-result-wide v2

    #@1c
    iput-wide v2, p0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    #@1e
    .line 417
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    #@26
    .line 418
    .local v0, "first":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    #@29
    move-result v1

    #@2a
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    #@2d
    move-result v1

    #@2e
    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    #@30
    .line 419
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    #@33
    move-result v1

    #@34
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    #@37
    move-result v1

    #@38
    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    #@3a
    .line 420
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    #@3d
    .line 422
    .end local v0    # "first":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    #@40
    .line 409
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .param p1, "inStealthMode"    # Z

    #@0
    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    #@2
    .line 363
    return-void
.end method

.method public setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .locals 0
    .param p1, "onPatternListener"    # Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    #@0
    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    #@2
    .line 382
    return-void
.end method

.method public setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 393
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 394
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@a
    .line 395
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    #@d
    .line 396
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "cell$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    #@1d
    .line 397
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    #@1f
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    #@22
    move-result v3

    #@23
    aget-object v2, v2, v3

    #@25
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    #@28
    move-result v3

    #@29
    const/4 v4, 0x1

    #@2a
    aput-boolean v4, v2, v3

    #@2c
    goto :goto_0

    #@2d
    .line 400
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    #@30
    .line 392
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    #@0
    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    #@2
    .line 373
    return-void
.end method

.method public startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 2
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

    #@0
    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 430
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    #@9
    .line 428
    :goto_0
    return-void

    #@a
    .line 434
    :cond_0
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    #@d
    goto :goto_0
.end method
