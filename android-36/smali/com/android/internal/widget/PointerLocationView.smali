.class public Lcom/android/internal/widget/PointerLocationView;
.super Landroid/view/View;
.source "PointerLocationView.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;,
        Lcom/android/internal/widget/PointerLocationView$PointerState;
    }
.end annotation


# static fields
.field private static final blacklist ALT_STRATEGY_PROPERY_KEY:Ljava/lang/String; = "debug.velocitytracker.alt"

.field private static final blacklist EMPTY_POINTER_STATE:Lcom/android/internal/widget/PointerLocationView$PointerState;

.field private static final blacklist GESTURE_EXCLUSION_PROP:Ljava/lang/String; = "debug.pointerlocation.showexclusion"

.field private static final blacklist TAG:Ljava/lang/String; = "Pointer"


# instance fields
.field private blacklist mActivePointerId:I

.field private final blacklist mAltVelocity:Landroid/view/VelocityTracker;

.field private greylist mCurDown:Z

.field private greylist mCurNumPointers:I

.field private final blacklist mCurrentPointPaint:Landroid/graphics/Paint;

.field private blacklist mDensity:F

.field private blacklist mHeaderBottom:I

.field private blacklist mHeaderPaddingTop:I

.field private final blacklist mIm:Landroid/hardware/input/InputManager;

.field private greylist mMaxNumPointers:I

.field private final blacklist mPaint:Landroid/graphics/Paint;

.field private final blacklist mPathPaint:Landroid/graphics/Paint;

.field private final greylist mPointers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/widget/PointerLocationView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPrintCoords:Z

.field private final blacklist mReusableOvalRect:Landroid/graphics/RectF;

.field private final blacklist mSystemGestureExclusion:Landroid/graphics/Region;

.field private final blacklist mSystemGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private final blacklist mSystemGestureExclusionPaint:Landroid/graphics/Paint;

.field private final blacklist mSystemGestureExclusionPath:Landroid/graphics/Path;

.field private final blacklist mSystemGestureExclusionRejected:Landroid/graphics/Region;

.field private final blacklist mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

.field private final blacklist mTargetPaint:Landroid/graphics/Paint;

.field private final blacklist mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final blacklist mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

.field private final blacklist mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final blacklist mTextLevelPaint:Landroid/graphics/Paint;

.field private final blacklist mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final blacklist mTextPaint:Landroid/graphics/Paint;

.field private blacklist mTraceBitmap:Landroid/graphics/Bitmap;

.field private final blacklist mTraceCanvas:Landroid/graphics/Canvas;

.field private final blacklist mVC:Landroid/view/ViewConfiguration;

.field private final blacklist mVelocity:Landroid/view/VelocityTracker;

.field private blacklist mWaterfallInsets:Landroid/graphics/Insets;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSystemGestureExclusion(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemGestureExclusionRejected(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejected:Landroid/graphics/Region;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    sput-object v0, Lcom/android/internal/widget/PointerLocationView;->EMPTY_POINTER_STATE:Lcom/android/internal/widget/PointerLocationView$PointerState;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "c"    # Landroid/content/Context;

    .line 174
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    .line 138
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 146
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    .line 148
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 157
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    .line 158
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejected:Landroid/graphics/Region;

    .line 159
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    .line 166
    new-instance v1, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-direct {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 279
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    .line 990
    new-instance v2, Lcom/android/internal/widget/PointerLocationView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/PointerLocationView$1;-><init>(Lcom/android/internal/widget/PointerLocationView;)V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 175
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/PointerLocationView;->setFocusableInTouchMode(Z)V

    .line 177
    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    .line 179
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    .line 180
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 181
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 183
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 184
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 185
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    invoke-virtual {v2, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 186
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 187
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    const/16 v4, 0xc0

    invoke-virtual {v2, v4, v3, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 189
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 190
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 191
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 192
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    .line 194
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v3, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 196
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 198
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 199
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v0, v0, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 200
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    .line 201
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 202
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v2, 0x60

    invoke-virtual {v1, v3, v0, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 203
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceCanvas:Landroid/graphics/Canvas;

    .line 206
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->configureTraceBitmap()V

    .line 208
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->configureDensityDependentFactors()V

    .line 210
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPaint:Landroid/graphics/Paint;

    .line 211
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPaint:Landroid/graphics/Paint;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 212
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

    .line 215
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 216
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 220
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    .line 222
    const-string v0, "debug.velocitytracker.alt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "altStrategy":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_15b

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comparing default velocity tracker strategy with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Pointer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {v0}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    goto :goto_15e

    .line 227
    :cond_15b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    .line 229
    :goto_15e
    return-void
.end method

.method private blacklist configureDensityDependentFactors()V
    .registers 4

    .line 1023
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    .line 1024
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1025
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1026
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1027
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1028
    return-void
.end method

.method private blacklist configureTraceBitmap()V
    .registers 7

    .line 1031
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1032
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    .line 1033
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_15

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    nop

    .line 1034
    .local v2, "rotated":Z
    :goto_18
    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    goto :goto_23

    :cond_1f
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1035
    .local v1, "unrotatedWidth":I
    :goto_23
    if-eqz v2, :cond_2a

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    goto :goto_2e

    :cond_2a
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 1037
    .local v3, "unrotatedHeight":I
    :goto_2e
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v1, :cond_43

    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    .line 1038
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v4, v3, :cond_43

    .line 1039
    return-void

    .line 1041
    :cond_43
    if-lez v1, :cond_47

    if-gtz v3, :cond_6e

    .line 1042
    :cond_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring configuration: invalid display size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Pointer"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const/16 v1, 0x64

    .line 1047
    const/16 v3, 0x64

    .line 1049
    :cond_6e
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    .line 1051
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1052
    return-void
.end method

.method private blacklist drawLabels(Landroid/graphics/Canvas;)V
    .registers 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 407
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    sub-int v7, v2, v3

    .line 408
    .local v7, "w":I
    div-int/lit8 v8, v7, 0x7

    .line 409
    .local v8, "itemW":I
    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v3

    const/4 v9, 0x1

    add-int/lit8 v10, v2, 0x1

    .line 410
    .local v10, "base":I
    iget v11, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 412
    .local v11, "bottom":I
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 413
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->left:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 414
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    sget-object v4, Lcom/android/internal/widget/PointerLocationView;->EMPTY_POINTER_STATE:Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 416
    .local v12, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v2

    add-int/lit8 v2, v8, -0x1

    int-to-float v4, v2

    int-to-float v5, v11

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 417
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 418
    const-string v3, "P: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 419
    const-string v3, " / "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 420
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v10

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 417
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 422
    iget-boolean v2, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v2, :cond_7b

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_85

    :cond_7b
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 423
    :cond_85
    int-to-float v2, v8

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v4, v8, 0x2

    sub-int/2addr v4, v9

    int-to-float v4, v4

    int-to-float v5, v11

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 425
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 426
    const-string v3, "X: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3, v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 427
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v8, 0x1

    int-to-float v3, v3

    int-to-float v4, v10

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 425
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 428
    mul-int/lit8 v2, v8, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v4, v8, 0x3

    sub-int/2addr v4, v9

    int-to-float v4, v4

    int-to-float v5, v11

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 430
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 431
    const-string v3, "Y: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3, v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 432
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v8, 0x2

    add-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v4, v10

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 430
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move/from16 v16, v13

    goto/16 :goto_181

    .line 434
    :cond_ee
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmFirstX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    sub-float v14, v2, v3

    .line 435
    .local v14, "dx":F
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentY(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmFirstY(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    sub-float v15, v2, v3

    .line 436
    .local v15, "dy":F
    int-to-float v2, v8

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v4, v8, 0x2

    sub-int/2addr v4, v9

    int-to-float v4, v4

    int-to-float v5, v11

    .line 437
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move/from16 v16, v13

    iget-object v13, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v6, v6, v13

    if-gez v6, :cond_11f

    .line 438
    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    goto :goto_121

    :cond_11f
    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 436
    :goto_121
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 439
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 440
    const-string v3, "dX: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 441
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v8, 0x1

    int-to-float v3, v3

    int-to-float v4, v10

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 439
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 442
    mul-int/lit8 v2, v8, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v4, v8, 0x3

    sub-int/2addr v4, v9

    int-to-float v4, v4

    int-to-float v5, v11

    .line 443
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v13, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v6, v6, v13

    if-gez v6, :cond_15e

    .line 444
    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    goto :goto_160

    :cond_15e
    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 442
    :goto_160
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 445
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 446
    const-string v3, "dY: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15, v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 447
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v8, 0x2

    add-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v4, v10

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 445
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 450
    .end local v14    # "dx":F
    .end local v15    # "dy":F
    :goto_181
    mul-int/lit8 v2, v8, 0x3

    int-to-float v2, v2

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v4, v8, 0x4

    sub-int/2addr v4, v9

    int-to-float v4, v4

    int-to-float v5, v11

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 452
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 453
    const-string v3, "Xv: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    const/4 v13, 0x3

    invoke-virtual {v2, v3, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 454
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v8, 0x3

    add-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v4, v10

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 452
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 456
    mul-int/lit8 v2, v8, 0x4

    int-to-float v2, v2

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v4, v8, 0x5

    sub-int/2addr v4, v9

    int-to-float v4, v4

    int-to-float v5, v11

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 458
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 459
    const-string v3, "Yv: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    invoke-virtual {v2, v3, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v8, 0x4

    add-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v4, v10

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 458
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 462
    mul-int/lit8 v2, v8, 0x5

    int-to-float v2, v2

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v4, v8, 0x6

    sub-int/2addr v4, v9

    int-to-float v4, v4

    int-to-float v5, v11

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 464
    mul-int/lit8 v1, v8, 0x5

    int-to-float v2, v1

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    mul-int/lit8 v1, v8, 0x5

    int-to-float v1, v1

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    int-to-float v5, v8

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    sub-float v4, v1, v16

    int-to-float v5, v11

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 466
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 467
    const-string v3, "Prs: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v13, 0x2

    invoke-virtual {v2, v3, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 468
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v8, 0x5

    add-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v4, v10

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 466
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 470
    mul-int/lit8 v2, v8, 0x6

    int-to-float v2, v2

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    int-to-float v4, v7

    int-to-float v5, v11

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 471
    mul-int/lit8 v1, v8, 0x6

    int-to-float v2, v1

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    mul-int/lit8 v1, v8, 0x6

    int-to-float v1, v1

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->size:F

    int-to-float v5, v8

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    sub-float v4, v1, v16

    int-to-float v5, v11

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 473
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 474
    const-string v3, "Size: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    invoke-virtual {v2, v3, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 475
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v8, 0x6

    add-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v4, v10

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 473
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 476
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 477
    return-void
.end method

.method private blacklist drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "major"    # F
    .param p5, "minor"    # F
    .param p6, "angle"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 283
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 284
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p6

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p5, v1

    sub-float v2, p2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v2, p5, v1

    add-float/2addr v2, p2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v2, p4, v1

    sub-float v2, p3, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v1

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 291
    return-void
.end method

.method private static blacklist inverseRotation(I)I
    .registers 4
    .param p0, "rotation"    # I

    .line 1055
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_26

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected surface rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Pointer"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    goto :goto_24

    .line 1059
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_24

    .line 1058
    :pswitch_1f
    const/4 v0, 0x2

    goto :goto_24

    .line 1057
    :pswitch_21
    const/4 v0, 0x3

    goto :goto_24

    .line 1056
    :pswitch_23
    nop

    .line 1055
    :goto_24
    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V
    .registers 26
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "index"    # I
    .param p4, "coords"    # Landroid/view/MotionEvent$PointerCoords;
    .param p5, "id"    # I
    .param p6, "event"    # Landroid/view/MotionEvent;

    .line 499
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    .line 500
    .local v4, "toolType":I
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    .line 502
    .local v5, "buttonState":I
    and-int/lit16 v6, v0, 0xff

    const v7, 0xff00

    packed-switch v6, :pswitch_data_1b0

    .line 547
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "prefix":Ljava/lang/String;
    goto :goto_50

    .line 541
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_1d
    const-string v6, "HOVER EXIT"

    .line 542
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_50

    .line 538
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_20
    const-string v6, "HOVER ENTER"

    .line 539
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_50

    .line 544
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_23
    const-string v6, "SCROLL"

    .line 545
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_50

    .line 535
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_26
    const-string v6, "HOVER MOVE"

    .line 536
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_50

    .line 527
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_29
    and-int v6, v0, v7

    shr-int/lit8 v6, v6, 0x8

    if-ne v1, v6, :cond_32

    .line 529
    const-string v6, "UP"

    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_50

    .line 531
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_32
    const-string v6, "MOVE"

    .line 533
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_50

    .line 519
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_35
    and-int v6, v0, v7

    shr-int/lit8 v6, v6, 0x8

    if-ne v1, v6, :cond_3e

    .line 521
    const-string v6, "DOWN"

    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_50

    .line 523
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_3e
    const-string v6, "MOVE"

    .line 525
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_50

    .line 516
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_41
    const-string v6, "OUTSIDE"

    .line 517
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_50

    .line 513
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_44
    const-string v6, "CANCEL"

    .line 514
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_50

    .line 510
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_47
    const-string v6, "MOVE"

    .line 511
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_50

    .line 507
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_4a
    const-string v6, "UP"

    .line 508
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_50

    .line 504
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_4d
    const-string v6, "DOWN"

    .line 505
    .restart local v6    # "prefix":Ljava/lang/String;
    nop

    .line 551
    :goto_50
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 552
    move-object/from16 v9, p1

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const-string v10, " id "

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    add-int/lit8 v10, p5, 0x1

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 553
    const-string v10, ": "

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 554
    invoke-virtual {v8, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 555
    const-string v10, " ("

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v10, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v11, 0x3

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const-string v10, ", "

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 556
    const-string v12, ") Pressure="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 557
    const-string v12, " Size="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 558
    const-string v12, " TouchMajor="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 559
    const-string v12, " TouchMinor="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 560
    const-string v12, " ToolMajor="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 561
    const-string v12, " ToolMinor="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 562
    const-string v12, " Orientation="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/high16 v13, 0x43340000    # 180.0f

    mul-float/2addr v12, v13

    float-to-double v14, v12

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    div-double v14, v14, v16

    double-to-float v12, v14

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 563
    const-string v12, "deg"

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 564
    const-string v15, " Tilt="

    invoke-virtual {v8, v15}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 565
    const/16 v15, 0x19

    invoke-virtual {v2, v15}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v15

    mul-float/2addr v15, v13

    move-object/from16 v18, v12

    float-to-double v11, v15

    div-double v11, v11, v16

    double-to-float v11, v11

    .line 564
    invoke-virtual {v8, v11, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 566
    move-object/from16 v11, v18

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 567
    const-string v11, " Distance="

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v11, 0x18

    invoke-virtual {v2, v11}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v11

    invoke-virtual {v8, v11, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 568
    const-string v11, " VScroll="

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v11, 0x9

    invoke-virtual {v2, v11}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v11

    invoke-virtual {v8, v11, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 569
    const-string v11, " HScroll="

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v11, 0xa

    invoke-virtual {v2, v11}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v11

    invoke-virtual {v8, v11, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 570
    const-string v11, " BoundingBox=[("

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 571
    const/16 v11, 0x20

    invoke-virtual {v3, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    const/4 v13, 0x3

    invoke-virtual {v8, v11, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 572
    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v11, 0x21

    invoke-virtual {v3, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    invoke-virtual {v8, v11, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const-string v11, ")"

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 573
    const-string v11, ", ("

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v11, 0x22

    invoke-virtual {v3, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    invoke-virtual {v8, v11, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 574
    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v10, 0x23

    invoke-virtual {v3, v10}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v10

    invoke-virtual {v8, v10, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 575
    const-string v10, ")]"

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 576
    const-string v10, " ToolType="

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 577
    const-string v10, " ButtonState="

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    invoke-static {v5}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 578
    invoke-virtual {v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 551
    const-string v10, "Pointer"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_35
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist logInputDeviceState(ILjava/lang/String;)V
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .line 856
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 857
    .local v0, "device":Landroid/view/InputDevice;
    const-string v1, ": "

    const-string v2, "Pointer"

    if-eqz v0, :cond_25

    .line 858
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 860
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :goto_3d
    return-void
.end method

.method private blacklist logInputDevices()V
    .registers 5

    .line 849
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 850
    .local v0, "deviceIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_12

    .line 851
    aget v2, v0, v1

    const-string v3, "Device Enumerated"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 853
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

.method private blacklist logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 480
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 481
    .local v2, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 482
    .local v7, "N":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 483
    .local v8, "NI":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "historyPos":I
    :goto_e
    if-ge v9, v7, :cond_2e

    .line 484
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_12
    if-ge v3, v8, :cond_28

    .line 485
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 486
    .local v5, "id":I
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v3, v9, v0}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 487
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "event":Landroid/view/MotionEvent;
    .local v1, "type":Ljava/lang/String;
    .local v6, "event":Landroid/view/MotionEvent;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 484
    .end local v5    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .end local v1    # "type":Ljava/lang/String;
    .end local v6    # "event":Landroid/view/MotionEvent;
    .restart local p1    # "type":Ljava/lang/String;
    .restart local p2    # "event":Landroid/view/MotionEvent;
    :cond_28
    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 483
    .end local v3    # "i":I
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "event":Landroid/view/MotionEvent;
    .restart local v1    # "type":Ljava/lang/String;
    .restart local v6    # "event":Landroid/view/MotionEvent;
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .end local v1    # "type":Ljava/lang/String;
    .end local v6    # "event":Landroid/view/MotionEvent;
    .restart local p1    # "type":Ljava/lang/String;
    .restart local p2    # "event":Landroid/view/MotionEvent;
    :cond_2e
    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 490
    .end local v9    # "historyPos":I
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "event":Landroid/view/MotionEvent;
    .restart local v1    # "type":Ljava/lang/String;
    .restart local v6    # "event":Landroid/view/MotionEvent;
    const/4 p1, 0x0

    move v3, p1

    .restart local v3    # "i":I
    :goto_33
    if-ge v3, v8, :cond_47

    .line 491
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 492
    .restart local v5    # "id":I
    iget-object p1, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v6, v3, p1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 493
    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 490
    .end local v5    # "id":I
    add-int/lit8 v3, v3, 0x1

    move-object v0, p0

    goto :goto_33

    .line 495
    .end local v3    # "i":I
    :cond_47
    return-void
.end method

.method private blacklist rotateCanvasToUnrotatedDisplay(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1068
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView;->inverseRotation(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_50

    goto :goto_4e

    .line 1078
    :pswitch_13
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1079
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4e

    .line 1074
    :pswitch_24
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1075
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1076
    goto :goto_4e

    .line 1070
    :pswitch_3d
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1071
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1072
    nop

    .line 1082
    :goto_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_24
        :pswitch_13
    .end packed-switch
.end method

.method private static blacklist shouldLogKey(I)Z
    .registers 3
    .param p0, "keyCode"    # I

    .line 777
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_16

    .line 785
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 786
    invoke-static {p0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_14

    .line 783
    :pswitch_11
    return v0

    .line 786
    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    nop

    .line 785
    :goto_15
    return v0

    :pswitch_data_16
    .packed-switch 0x13
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method private static blacklist shouldShowSystemGestureExclusion()Z
    .registers 1

    .line 865
    invoke-static {}, Lcom/android/internal/widget/PointerLocationView;->systemGestureExclusionOpacity()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist systemGestureExclusionOpacity()I
    .registers 3

    .line 869
    const-string v0, "debug.pointerlocation.showexclusion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 870
    .local v0, "x":I
    if-ltz v0, :cond_e

    const/16 v2, 0xff

    if-gt v0, v2, :cond_e

    move v1, v0

    :cond_e
    return v1
.end method

.method private blacklist updateDrawTrace(Lcom/android/internal/widget/PointerLocationView$PointerState;)V
    .registers 11
    .param p1, "ps"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 715
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 716
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v6

    .line 717
    .local v6, "x":F
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentY(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v7

    .line 718
    .local v7, "y":F
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmPreviousX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v4

    .line 719
    .local v4, "lastX":F
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmPreviousY(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v5

    .line 720
    .local v5, "lastY":F
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_4a

    .line 723
    :cond_32
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 724
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmPreviousPointIsHistorical(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    goto :goto_44

    :cond_42
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    .line 725
    .local v0, "paint":Landroid/graphics/Paint;
    :goto_44
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v4, v5, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 726
    return-void

    .line 721
    .end local v0    # "paint":Landroid/graphics/Paint;
    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 7
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "headerPaddingTop":I
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 240
    .local v1, "waterfallInsets":Landroid/graphics/Insets;
    nop

    .line 241
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v2

    .line 242
    .local v2, "topLeftRounded":Landroid/view/RoundedCorner;
    if-eqz v2, :cond_f

    .line 243
    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    .line 246
    :cond_f
    nop

    .line 247
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    .line 248
    .local v3, "topRightRounded":Landroid/view/RoundedCorner;
    if-eqz v3, :cond_1f

    .line 249
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 252
    :cond_1f
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 253
    nop

    .line 254
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 255
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 258
    :cond_3a
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    .line 259
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 260
    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v4

    return-object v4
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 798
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 800
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 801
    invoke-static {}, Lcom/android/internal/widget/PointerLocationView;->shouldShowSystemGestureExclusion()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 803
    :try_start_12
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mContext:Landroid/content/Context;

    .line 805
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 804
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_21} :catch_31

    .line 808
    nop

    .line 809
    invoke-static {}, Lcom/android/internal/widget/PointerLocationView;->systemGestureExclusionOpacity()I

    move-result v0

    .line 810
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 811
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 812
    .end local v0    # "alpha":I
    goto :goto_3c

    .line 806
    :catch_31
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 813
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 815
    :goto_3c
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->logInputDevices()V

    .line 816
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1016
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1017
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->configureTraceBitmap()V

    .line 1018
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->configureDensityDependentFactors()V

    .line 1019
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 4

    .line 820
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 822
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 824
    :try_start_8
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mContext:Landroid/content/Context;

    .line 825
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 824
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_17} :catch_18

    .line 830
    goto :goto_20

    .line 828
    :catch_18
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Pointer"

    const-string v2, "Failed to unregister window manager callbacks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_20
    return-void

    .line 826
    :catch_21
    move-exception v0

    .line 827
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 295
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 298
    .local v8, "NP":I
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 299
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/PointerLocationView;->rotateCanvasToUnrotatedDisplay(Landroid/graphics/Canvas;)V

    .line 300
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 301
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 303
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    .line 304
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 305
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 306
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 309
    :cond_35
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejected:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    .line 310
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 311
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejected:Landroid/graphics/Region;

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 312
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 316
    :cond_50
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/PointerLocationView;->drawLabels(Landroid/graphics/Canvas;)V

    .line 319
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 320
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/PointerLocationView;->rotateCanvasToUnrotatedDisplay(Landroid/graphics/Canvas;)V

    .line 321
    const/4 v2, 0x0

    move v9, v2

    .local v9, "p":I
    :goto_5b
    if-ge v9, v8, :cond_270

    .line 322
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 323
    .local v10, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    .local v2, "lastX":F
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentY(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    .line 325
    .local v3, "lastY":F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const/16 v11, 0x80

    const/16 v12, 0xff

    if-nez v4, :cond_c5

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_c5

    .line 327
    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0x40

    invoke-virtual {v4, v12, v12, v7, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 328
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v4

    const/high16 v13, 0x41800000    # 16.0f

    mul-float v14, v4, v13

    .line 329
    .local v14, "xVel":F
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v4

    mul-float v15, v4, v13

    .line 330
    .local v15, "yVel":F
    add-float v4, v2, v14

    add-float v5, v3, v15

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 333
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_c0

    .line 334
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v7, v12, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 335
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v1

    mul-float v7, v1, v13

    .line 336
    .end local v14    # "xVel":F
    .local v7, "xVel":F
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v1

    mul-float/2addr v13, v1

    .line 337
    .end local v15    # "yVel":F
    .local v13, "yVel":F
    add-float v4, v2, v7

    add-float v5, v3, v13

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "lastX":F
    .end local v3    # "lastY":F
    .local v16, "lastX":F
    .local v17, "lastY":F
    goto :goto_c9

    .line 333
    .end local v7    # "xVel":F
    .end local v13    # "yVel":F
    .end local v16    # "lastX":F
    .end local v17    # "lastY":F
    .restart local v2    # "lastX":F
    .restart local v3    # "lastY":F
    .restart local v14    # "xVel":F
    .restart local v15    # "yVel":F
    :cond_c0
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "lastX":F
    .end local v3    # "lastY":F
    .restart local v16    # "lastX":F
    .restart local v17    # "lastY":F
    goto :goto_c9

    .line 325
    .end local v14    # "xVel":F
    .end local v15    # "yVel":F
    .end local v16    # "lastX":F
    .end local v17    # "lastY":F
    .restart local v2    # "lastX":F
    .restart local v3    # "lastY":F
    :cond_c5
    move/from16 v16, v2

    move/from16 v17, v3

    .line 341
    .end local v2    # "lastX":F
    .end local v3    # "lastY":F
    .restart local v16    # "lastX":F
    .restart local v17    # "lastY":F
    :goto_c9
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v1, :cond_268

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v1

    if-eqz v1, :cond_268

    .line 343
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v3, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v5, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 346
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v3, v1

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v4, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 347
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 346
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 350
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v13, v2

    .line 351
    .local v13, "pressureLevel":I
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    rsub-int v3, v13, 0xff

    invoke-virtual {v2, v12, v13, v12, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 352
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 355
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    rsub-int v3, v13, 0xff

    invoke-virtual {v2, v12, v13, v3, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 356
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 360
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    rsub-int v2, v13, 0xff

    invoke-virtual {v1, v12, v13, v11, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 361
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v3, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v4, v1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v5, v1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v6, v1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 365
    move-object v6, v0

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41c00000    # 24.0f

    iget v2, v6, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    mul-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 366
    .local v7, "arrowSize":F
    iget-object v0, v6, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v13, v12, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 367
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v2, v7

    mul-double/2addr v0, v2

    double-to-float v11, v0

    .line 369
    .local v11, "orientationVectorX":F
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    float-to-double v2, v7

    mul-double/2addr v0, v2

    double-to-float v12, v0

    .line 371
    .local v12, "orientationVectorY":F
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1fa

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d0

    goto :goto_1fa

    .line 380
    :cond_1d0
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v1, v0, v11

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v2, v0, v12

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v3, v0, v11

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v4, v0, v12

    iget-object v5, v6, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v1, p1

    goto :goto_21e

    .line 374
    :cond_1fa
    :goto_1fa
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v3, v0, v11

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v4, v0, v12

    iget-object v5, v6, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v1, v0

    .line 389
    :goto_21e
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    .line 390
    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v0

    float-to-double v2, v0

    .line 389
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v14, v2

    .line 391
    .local v14, "tiltScale":F
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v2, v11, v14

    add-float/2addr v0, v2

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v3, v12, v14

    add-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    iget v4, v6, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    mul-float/2addr v4, v3

    iget-object v3, v6, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 397
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v0

    if-eqz v0, :cond_269

    .line 398
    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v1

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    invoke-static {v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v4

    iget-object v5, v6, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_269

    .line 341
    .end local v7    # "arrowSize":F
    .end local v11    # "orientationVectorX":F
    .end local v12    # "orientationVectorY":F
    .end local v13    # "pressureLevel":I
    .end local v14    # "tiltScale":F
    :cond_268
    move-object v6, v0

    .line 321
    .end local v10    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v16    # "lastX":F
    .end local v17    # "lastY":F
    :cond_269
    :goto_269
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object v0, v6

    goto/16 :goto_5b

    :cond_270
    move-object v6, v0

    .line 403
    .end local v9    # "p":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 404
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 741
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_c

    .line 742
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    goto :goto_25

    .line 743
    :cond_c
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_16

    .line 744
    const-string v1, "Joystick"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_25

    .line 745
    :cond_16
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_20

    .line 746
    const-string v1, "Position"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_25

    .line 748
    :cond_20
    const-string v1, "Generic"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 750
    :goto_25
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist onInputDeviceAdded(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .line 835
    const-string v0, "Device Added"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 836
    return-void
.end method

.method public whitelist onInputDeviceChanged(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .line 840
    const-string v0, "Device Changed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 841
    return-void
.end method

.method public whitelist onInputDeviceRemoved(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .line 845
    const-string v0, "Device Removed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 846
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 755
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 756
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 757
    .local v0, "repeatCount":I
    const-string v1, "Pointer"

    if-nez v0, :cond_25

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Down: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 760
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Repeat #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :goto_45
    const/4 v1, 0x1

    return v1

    .line 764
    .end local v0    # "repeatCount":I
    :cond_47
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 769
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key Up: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pointer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v0, 0x1

    return v0

    .line 773
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 265
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 267
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 275
    return-void
.end method

.method public blacklist onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 585
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getSurfaceRotation()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/PointerLocationView;->inverseRotation(I)I

    move-result v1

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    .line 586
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 585
    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->createRotateMatrix(III)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 588
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 590
    .local v2, "action":I
    const/16 v7, 0x20

    const v8, 0xff00

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_31

    and-int/lit16 v1, v2, 0xff

    const/4 v3, 0x5

    if-ne v1, v3, :cond_b4

    .line 592
    :cond_31
    and-int v1, v2, v8

    shr-int/lit8 v1, v1, 0x8

    .line 594
    .local v1, "index":I
    if-nez v2, :cond_57

    .line 595
    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 596
    iput-boolean v10, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 597
    iput v9, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 598
    iput v9, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 599
    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 600
    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mTraceCanvas:Landroid/graphics/Canvas;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v9, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 601
    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_57

    .line 602
    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 606
    :cond_57
    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    add-int/2addr v3, v10

    iput v3, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 607
    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    iget v4, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    if-ge v3, v4, :cond_66

    .line 608
    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    iput v3, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 611
    :cond_66
    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 612
    .local v3, "id":I
    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 613
    .local v4, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    if-nez v4, :cond_7f

    .line 614
    new-instance v5, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v5}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    move-object v4, v5

    .line 615
    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    :cond_7f
    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    iget v11, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_99

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    iget v11, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 619
    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-static {v5}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v5

    if-nez v5, :cond_9b

    .line 620
    :cond_99
    iput v3, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 623
    :cond_9b
    invoke-static {v4, v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V

    .line 624
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 625
    .local v5, "device":Landroid/view/InputDevice;
    if-eqz v5, :cond_b0

    .line 626
    invoke-virtual {v5, v7}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v11

    if-eqz v11, :cond_b0

    move v11, v10

    goto :goto_b1

    :cond_b0
    move v11, v9

    :goto_b1
    invoke-static {v4, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V

    .line 629
    .end local v1    # "index":I
    .end local v3    # "id":I
    .end local v4    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v5    # "device":Landroid/view/InputDevice;
    :cond_b4
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 631
    .local v11, "NI":I
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 632
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 633
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_d0

    .line 634
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 635
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 638
    :cond_d0
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 639
    .local v12, "N":I
    const/4 v1, 0x0

    move v13, v1

    .local v13, "historyPos":I
    :goto_d6
    const/4 v14, 0x0

    if-ge v13, v12, :cond_121

    .line 640
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_db
    if-ge v3, v11, :cond_11c

    .line 641
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 642
    .local v5, "id":I
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v1, :cond_ee

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    goto :goto_ef

    :cond_ee
    move-object v1, v14

    :goto_ef
    move-object v15, v1

    .line 643
    .local v15, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    if-eqz v15, :cond_f7

    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    goto :goto_f9

    :cond_f7
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_f9
    move-object v4, v1

    .line 644
    .local v4, "coords":Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual {v6, v3, v13, v4}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 645
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v1, :cond_106

    .line 646
    const-string v1, "Pointer"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 648
    :cond_106
    if-eqz v15, :cond_115

    .line 649
    iget v1, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v16, v8

    iget v8, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v15, v1, v8, v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 650
    invoke-direct {v0, v15}, Lcom/android/internal/widget/PointerLocationView;->updateDrawTrace(Lcom/android/internal/widget/PointerLocationView$PointerState;)V

    goto :goto_117

    .line 648
    :cond_115
    move/from16 v16, v8

    .line 640
    .end local v4    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v5    # "id":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :goto_117
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v16

    goto :goto_db

    :cond_11c
    move/from16 v16, v8

    .line 639
    .end local v3    # "i":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_d6

    :cond_121
    move/from16 v16, v8

    .line 654
    .end local v13    # "historyPos":I
    const/4 v1, 0x0

    move v3, v1

    .restart local v3    # "i":I
    :goto_125
    if-ge v3, v11, :cond_1b7

    .line 655
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 656
    .restart local v5    # "id":I
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v1, :cond_138

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    goto :goto_139

    :cond_138
    move-object v1, v14

    :goto_139
    move-object v8, v1

    .line 657
    .local v8, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    if-eqz v8, :cond_141

    invoke-static {v8}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    goto :goto_143

    :cond_141
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_143
    move-object v4, v1

    .line 658
    .restart local v4    # "coords":Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual {v6, v3, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 659
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v1, :cond_150

    .line 660
    const-string v1, "Pointer"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 662
    :cond_150
    if-eqz v8, :cond_1b3

    .line 663
    iget v1, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v13, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v8, v1, v13, v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 664
    invoke-direct {v0, v8}, Lcom/android/internal/widget/PointerLocationView;->updateDrawTrace(Lcom/android/internal/widget/PointerLocationView$PointerState;)V

    .line 665
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    invoke-static {v8, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 666
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    invoke-static {v8, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 667
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_184

    .line 668
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    invoke-static {v8, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 669
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    invoke-static {v8, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 671
    :cond_184
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    invoke-static {v8, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;I)V

    .line 673
    invoke-static {v8}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v1

    if-eqz v1, :cond_1b3

    .line 674
    invoke-virtual {v6, v7, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v8, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 675
    const/16 v1, 0x21

    invoke-virtual {v6, v1, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v8, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 676
    const/16 v1, 0x22

    invoke-virtual {v6, v1, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v8, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 677
    const/16 v1, 0x23

    invoke-virtual {v6, v1, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v8, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 654
    .end local v4    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v5    # "id":I
    .end local v8    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_1b3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_125

    .line 682
    .end local v3    # "i":I
    :cond_1b7
    const/4 v1, 0x3

    if-eq v2, v10, :cond_1c1

    if-eq v2, v1, :cond_1c1

    and-int/lit16 v3, v2, 0xff

    const/4 v4, 0x6

    if-ne v3, v4, :cond_238

    .line 685
    :cond_1c1
    and-int v3, v2, v16

    shr-int/lit8 v3, v3, 0x8

    .line 688
    .local v3, "index":I
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 689
    .local v4, "id":I
    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 690
    .local v5, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    if-nez v5, :cond_214

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find pointer id="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " in mPointers map, size="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    .line 692
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " pointerindex="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " action=0x"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 693
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 691
    const-string v7, "Pointer"

    invoke-static {v7, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void

    .line 696
    :cond_214
    invoke-static {v5, v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V

    .line 698
    if-eq v2, v10, :cond_234

    if-ne v2, v1, :cond_21c

    goto :goto_234

    .line 703
    :cond_21c
    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    sub-int/2addr v1, v10

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 704
    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ne v1, v4, :cond_22e

    .line 705
    if-nez v3, :cond_228

    move v9, v10

    :cond_228
    invoke-virtual {v6, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 707
    :cond_22e
    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {v5, v1, v1, v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    goto :goto_238

    .line 700
    :cond_234
    :goto_234
    iput-boolean v9, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 701
    iput v9, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 711
    .end local v3    # "index":I
    .end local v4    # "id":I
    .end local v5    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_238
    :goto_238
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->invalidate()V

    .line 712
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 730
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 732
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_12

    .line 733
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->requestFocus()Z

    .line 735
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 792
    const-string v0, "Trackball"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 793
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setPrintCoords(Z)V
    .registers 2
    .param p1, "state"    # Z

    .line 232
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 233
    return-void
.end method
