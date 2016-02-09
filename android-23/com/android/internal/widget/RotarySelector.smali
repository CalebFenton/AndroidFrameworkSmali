.class public Lcom/android/internal/widget/RotarySelector;
.super Landroid/view/View;
.source "RotarySelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;
    }
.end annotation


# static fields
.field private static final ARROW_SCRUNCH_DIP:I = 0x6

.field private static final DBG:Z = false

.field private static final EDGE_PADDING_DIP:I = 0x9

.field private static final EDGE_TRIGGER_DIP:I = 0x64

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT_HANDLE_GRABBED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "RotarySelector"

.field public static final NOTHING_GRABBED:I = 0x0

.field static final OUTER_ROTARY_RADIUS_DIP:I = 0x186

.field public static final RIGHT_HANDLE_GRABBED:I = 0x2

.field static final ROTARY_STROKE_WIDTH_DIP:I = 0x53

.field static final SNAP_BACK_ANIMATION_DURATION_MILLIS:I = 0x12c

.field static final SPIN_ANIMATION_DURATION_MILLIS:I = 0x320

.field public static final VERTICAL:I = 0x1

.field private static final VIBRATE_LONG:J = 0x14L

.field private static final VIBRATE_SHORT:J = 0x14L

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final VISUAL_DEBUG:Z


# instance fields
.field private mAnimating:Z

.field private mAnimatingDeltaXEnd:I

.field private mAnimatingDeltaXStart:I

.field private mAnimationDuration:J

.field private mAnimationStartTime:J

.field private mArrowLongLeft:Landroid/graphics/Bitmap;

.field private mArrowLongRight:Landroid/graphics/Bitmap;

.field final mArrowMatrix:Landroid/graphics/Matrix;

.field private mArrowShortLeftAndRight:Landroid/graphics/Bitmap;

.field private mBackground:Landroid/graphics/Bitmap;

.field private mBackgroundHeight:I

.field private mBackgroundWidth:I

.field final mBgMatrix:Landroid/graphics/Matrix;

.field private mDensity:F

.field private mDimple:Landroid/graphics/Bitmap;

.field private mDimpleDim:Landroid/graphics/Bitmap;

.field private mDimpleSpacing:I

.field private mDimpleWidth:I

.field private mDimplesOfFling:I

.field private mEdgeTriggerThresh:I

.field private mGrabbedState:I

.field private final mInnerRadius:I

.field private mInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mLeftHandleIcon:Landroid/graphics/Bitmap;

.field private mLeftHandleX:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

.field private mOrientation:I

.field private final mOuterRadius:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRightHandleIcon:Landroid/graphics/Bitmap;

.field private mRightHandleX:I

.field private mRotaryOffsetX:I

.field private mTriggered:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 57
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@5
    .line 58
    const/4 v1, 0x4

    #@6
    .line 57
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@9
    move-result-object v0

    #@a
    .line 59
    const/16 v1, 0xd

    #@c
    .line 57
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lcom/android/internal/widget/RotarySelector;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    #@16
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 171
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/RotarySelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 178
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 84
    iput v4, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@6
    .line 88
    iput-boolean v4, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    #@8
    .line 96
    new-instance v3, Landroid/graphics/Paint;

    #@a
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    #@d
    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    #@f
    .line 99
    new-instance v3, Landroid/graphics/Matrix;

    #@11
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    #@14
    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    #@16
    .line 100
    new-instance v3, Landroid/graphics/Matrix;

    #@18
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    #@1b
    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    #@1d
    .line 105
    iput v4, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    #@1f
    .line 114
    iput-boolean v4, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    #@21
    .line 162
    iput v4, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    #@23
    .line 181
    sget-object v3, Lcom/android/internal/R$styleable;->RotarySelector:[I

    #@25
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@28
    move-result-object v0

    #@29
    .line 182
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2c
    move-result v3

    #@2d
    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mOrientation:I

    #@2f
    .line 183
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@32
    .line 185
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->getResources()Landroid/content/res/Resources;

    #@35
    move-result-object v2

    #@36
    .line 186
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@39
    move-result-object v3

    #@3a
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    #@3c
    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    #@3e
    .line 190
    const v3, 0x1080454

    #@41
    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    #@44
    move-result-object v3

    #@45
    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackground:Landroid/graphics/Bitmap;

    #@47
    .line 191
    const v3, 0x1080455

    #@4a
    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    #@4d
    move-result-object v3

    #@4e
    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimple:Landroid/graphics/Bitmap;

    #@50
    .line 192
    const v3, 0x1080456

    #@53
    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    #@56
    move-result-object v3

    #@57
    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    #@59
    .line 194
    const v3, 0x108044c

    #@5c
    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    #@5f
    move-result-object v3

    #@60
    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mArrowLongLeft:Landroid/graphics/Bitmap;

    #@62
    .line 195
    const v3, 0x108044f

    #@65
    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    #@68
    move-result-object v3

    #@69
    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mArrowLongRight:Landroid/graphics/Bitmap;

    #@6b
    .line 196
    const v3, 0x1080452

    #@6e
    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    #@71
    move-result-object v3

    #@72
    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mArrowShortLeftAndRight:Landroid/graphics/Bitmap;

    #@74
    .line 198
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    #@76
    const/high16 v4, 0x3f800000    # 1.0f

    #@78
    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #@7b
    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    #@7d
    .line 200
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    #@7f
    const/high16 v4, 0x42c80000    # 100.0f

    #@81
    mul-float/2addr v3, v4

    #@82
    float-to-int v3, v3

    #@83
    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mEdgeTriggerThresh:I

    #@85
    .line 202
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimple:Landroid/graphics/Bitmap;

    #@87
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    #@8a
    move-result v3

    #@8b
    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    #@8d
    .line 204
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackground:Landroid/graphics/Bitmap;

    #@8f
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    #@92
    move-result v3

    #@93
    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    #@95
    .line 205
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackground:Landroid/graphics/Bitmap;

    #@97
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    #@9a
    move-result v3

    #@9b
    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    #@9d
    .line 206
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    #@9f
    const/high16 v4, 0x43c30000    # 390.0f

    #@a1
    mul-float/2addr v3, v4

    #@a2
    float-to-int v3, v3

    #@a3
    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    #@a5
    .line 207
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    #@a7
    const v4, 0x43998000    # 307.0f

    #@aa
    mul-float/2addr v3, v4

    #@ab
    float-to-int v3, v3

    #@ac
    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    #@ae
    .line 209
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mContext:Landroid/content/Context;

    #@b0
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@b3
    move-result-object v1

    #@b4
    .line 210
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@b7
    move-result v3

    #@b8
    mul-int/lit8 v3, v3, 0x2

    #@ba
    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mMinimumVelocity:I

    #@bc
    .line 211
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@bf
    move-result v3

    #@c0
    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mMaximumVelocity:I

    #@c2
    .line 177
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    #@0
    .prologue
    .line 718
    const-wide/16 v0, 0x14

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/RotarySelector;->vibrate(J)V

    #@5
    .line 719
    iget-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 720
    iget-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    #@b
    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;->onDialTrigger(Landroid/view/View;I)V

    #@e
    .line 717
    :cond_0
    return-void
.end method

.method private drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/Bitmap;
    .param p2, "c"    # Landroid/graphics/Canvas;
    .param p3, "x"    # I
    .param p4, "y"    # I

    #@0
    .prologue
    .line 697
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v1

    #@4
    .line 698
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@7
    move-result v0

    #@8
    .line 700
    .local v0, "h":I
    div-int/lit8 v2, v1, 0x2

    #@a
    sub-int v2, p3, v2

    #@c
    int-to-float v2, v2

    #@d
    div-int/lit8 v3, v0, 0x2

    #@f
    sub-int v3, p4, v3

    #@11
    int-to-float v3, v3

    #@12
    iget-object v4, p0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    #@14
    invoke-virtual {p2, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@17
    .line 696
    return-void
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private getYOnArc(IIII)I
    .locals 6
    .param p1, "backgroundWidth"    # I
    .param p2, "innerRadius"    # I
    .param p3, "outerRadius"    # I
    .param p4, "x"    # I

    #@0
    .prologue
    .line 475
    sub-int v4, p3, p2

    #@2
    div-int/lit8 v0, v4, 0x2

    #@4
    .line 476
    .local v0, "halfWidth":I
    add-int v1, p2, v0

    #@6
    .line 479
    .local v1, "middleRadius":I
    div-int/lit8 v4, p1, 0x2

    #@8
    sub-int v2, v4, p4

    #@a
    .line 483
    .local v2, "triangleBottom":I
    mul-int v4, v1, v1

    #@c
    mul-int v5, v2, v2

    #@e
    sub-int/2addr v4, v5

    #@f
    int-to-double v4, v4

    #@10
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@13
    move-result-wide v4

    #@14
    double-to-int v3, v4

    #@15
    .line 489
    .local v3, "triangleY":I
    sub-int v4, v1, v3

    #@17
    add-int/2addr v4, v0

    #@18
    return v4
.end method

.method private isHoriz()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 242
    iget v1, p0, Lcom/android/internal/widget/RotarySelector;->mOrientation:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 778
    const-string/jumbo v0, "RotarySelector"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 777
    return-void
.end method

.method private reset()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 668
    iput-boolean v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    #@3
    .line 669
    iput v0, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@5
    .line 670
    iput v0, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    #@7
    .line 671
    invoke-direct {p0, v0}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    #@a
    .line 672
    iput-boolean v0, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    #@c
    .line 667
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .param p1, "newState"    # I

    #@0
    .prologue
    .line 729
    iget v0, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 730
    iput p1, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    #@6
    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 732
    iget-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    #@c
    iget v1, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    #@e
    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    #@11
    .line 728
    :cond_0
    return-void
.end method

.method private startAnimation(III)V
    .locals 3
    .param p1, "startX"    # I
    .param p2, "endX"    # I
    .param p3, "duration"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 616
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    #@4
    .line 617
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@7
    move-result-wide v0

    #@8
    iput-wide v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationStartTime:J

    #@a
    .line 618
    int-to-long v0, p3

    #@b
    iput-wide v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationDuration:J

    #@d
    .line 619
    iput p1, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXStart:I

    #@f
    .line 620
    iput p2, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXEnd:I

    #@11
    .line 621
    invoke-direct {p0, v2}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    #@14
    .line 622
    iput v2, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    #@16
    .line 623
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    #@19
    .line 615
    return-void
.end method

.method private startAnimationWithVelocity(III)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "endX"    # I
    .param p3, "pixelsPerSecond"    # I

    #@0
    .prologue
    .line 627
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    #@3
    .line 628
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationStartTime:J

    #@9
    .line 629
    sub-int v0, p2, p1

    #@b
    mul-int/lit16 v0, v0, 0x3e8

    #@d
    div-int/2addr v0, p3

    #@e
    int-to-long v0, v0

    #@f
    iput-wide v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationDuration:J

    #@11
    .line 630
    iput p1, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXStart:I

    #@13
    .line 631
    iput p2, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXEnd:I

    #@15
    .line 632
    const/4 v0, 0x0

    #@16
    invoke-direct {p0, v0}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    #@19
    .line 633
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    #@1c
    .line 626
    return-void
.end method

.method private updateAnimation()V
    .locals 12

    #@0
    .prologue
    .line 637
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v8

    #@4
    iget-wide v10, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationStartTime:J

    #@6
    sub-long v6, v8, v10

    #@8
    .line 638
    .local v6, "millisSoFar":J
    iget-wide v8, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationDuration:J

    #@a
    sub-long v4, v8, v6

    #@c
    .line 639
    .local v4, "millisLeft":J
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXStart:I

    #@e
    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXEnd:I

    #@10
    sub-int v3, v8, v9

    #@12
    .line 640
    .local v3, "totalDeltaX":I
    if-gez v3, :cond_0

    #@14
    const/4 v1, 0x1

    #@15
    .line 642
    .local v1, "goingRight":Z
    :goto_0
    const-wide/16 v8, 0x0

    #@17
    cmp-long v8, v4, v8

    #@19
    if-gtz v8, :cond_1

    #@1b
    .line 643
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->reset()V

    #@1e
    .line 644
    return-void

    #@1f
    .line 640
    .end local v1    # "goingRight":Z
    :cond_0
    const/4 v1, 0x0

    #@20
    .restart local v1    # "goingRight":Z
    goto :goto_0

    #@21
    .line 648
    :cond_1
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    #@23
    long-to-float v9, v6

    #@24
    iget-wide v10, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationDuration:J

    #@26
    long-to-float v10, v10

    #@27
    div-float/2addr v9, v10

    #@28
    invoke-virtual {v8, v9}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    #@2b
    move-result v2

    #@2c
    .line 649
    .local v2, "interpolation":F
    int-to-float v8, v3

    #@2d
    const/high16 v9, 0x3f800000    # 1.0f

    #@2f
    sub-float/2addr v9, v2

    #@30
    mul-float/2addr v8, v9

    #@31
    float-to-int v0, v8

    #@32
    .line 650
    .local v0, "dx":I
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXEnd:I

    #@34
    add-int/2addr v8, v0

    #@35
    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@37
    .line 655
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    #@39
    if-lez v8, :cond_2

    #@3b
    .line 656
    if-nez v1, :cond_3

    #@3d
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@3f
    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    #@41
    mul-int/lit8 v9, v9, -0x3

    #@43
    if-ge v8, v9, :cond_3

    #@45
    .line 658
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@47
    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    #@49
    iget v10, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    #@4b
    mul-int/2addr v9, v10

    #@4c
    add-int/2addr v8, v9

    #@4d
    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@4f
    .line 664
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    #@52
    .line 636
    return-void

    #@53
    .line 659
    :cond_3
    if-eqz v1, :cond_2

    #@55
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@57
    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    #@59
    mul-int/lit8 v9, v9, 0x3

    #@5b
    if-le v8, v9, :cond_2

    #@5d
    .line 661
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@5f
    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    #@61
    iget v10, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    #@63
    mul-int/2addr v9, v10

    #@64
    sub-int/2addr v8, v9

    #@65
    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@67
    goto :goto_1
.end method

.method private declared-synchronized vibrate(J)V
    .locals 5
    .param p1, "duration"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/RotarySelector;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "haptic_feedback_enabled"

    #@a
    const/4 v3, 0x1

    #@b
    .line 681
    const/4 v4, -0x2

    #@c
    .line 679
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    const/4 v0, 0x1

    #@13
    .line 682
    .local v0, "hapticEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    #@15
    .line 683
    iget-object v1, p0, Lcom/android/internal/widget/RotarySelector;->mVibrator:Landroid/os/Vibrator;

    #@17
    if-nez v1, :cond_0

    #@19
    .line 684
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v1

    #@1d
    .line 685
    const-string/jumbo v2, "vibrator"

    #@20
    .line 684
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Landroid/os/Vibrator;

    #@26
    iput-object v1, p0, Lcom/android/internal/widget/RotarySelector;->mVibrator:Landroid/os/Vibrator;

    #@28
    .line 687
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RotarySelector;->mVibrator:Landroid/os/Vibrator;

    #@2a
    sget-object v2, Lcom/android/internal/widget/RotarySelector;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    #@2c
    invoke-virtual {v1, p1, p2, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :cond_1
    monitor-exit p0

    #@30
    .line 678
    return-void

    #@31
    .line 679
    .end local v0    # "hapticEnabled":Z
    :cond_2
    const/4 v0, 0x0

    #@32
    .restart local v0    # "hapticEnabled":Z
    goto :goto_0

    #@33
    .end local v0    # "hapticEnabled":Z
    :catchall_0
    move-exception v1

    #@34
    monitor-exit p0

    #@35
    throw v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 299
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->getWidth()I

    #@6
    move-result v13

    #@7
    .line 310
    .local v13, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->getHeight()I

    #@a
    move-result v11

    #@b
    .line 313
    .local v11, "height":I
    move-object/from16 v0, p0

    #@d
    iget-boolean v0, v0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    #@f
    move/from16 v17, v0

    #@11
    if-eqz v17, :cond_0

    #@13
    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->updateAnimation()V

    #@16
    .line 318
    :cond_0
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackground:Landroid/graphics/Bitmap;

    #@1a
    move-object/from16 v17, v0

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    #@20
    move-object/from16 v18, v0

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    #@26
    move-object/from16 v19, v0

    #@28
    move-object/from16 v0, p1

    #@2a
    move-object/from16 v1, v17

    #@2c
    move-object/from16 v2, v18

    #@2e
    move-object/from16 v3, v19

    #@30
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    #@33
    .line 321
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    #@37
    move-object/from16 v17, v0

    #@39
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Matrix;->reset()V

    #@3c
    .line 322
    move-object/from16 v0, p0

    #@3e
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    #@40
    move/from16 v17, v0

    #@42
    packed-switch v17, :pswitch_data_0

    #@45
    .line 344
    new-instance v17, Ljava/lang/IllegalStateException;

    #@47
    new-instance v18, Ljava/lang/StringBuilder;

    #@49
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v19, "invalid mGrabbedState: "

    #@4f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v18

    #@53
    move-object/from16 v0, p0

    #@55
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    #@57
    move/from16 v19, v0

    #@59
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v18

    #@5d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v18

    #@61
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@64
    throw v17

    #@65
    .line 327
    :pswitch_0
    move-object/from16 v0, p0

    #@67
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    #@69
    move-object/from16 v17, v0

    #@6b
    const/16 v18, 0x0

    #@6d
    const/16 v19, 0x0

    #@6f
    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@72
    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@75
    move-result v17

    #@76
    if-nez v17, :cond_1

    #@78
    .line 329
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    #@7c
    move-object/from16 v17, v0

    #@7e
    const/high16 v18, -0x3d4c0000    # -90.0f

    #@80
    const/16 v19, 0x0

    #@82
    const/16 v20, 0x0

    #@84
    invoke-virtual/range {v17 .. v20}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    #@87
    .line 330
    move-object/from16 v0, p0

    #@89
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    #@8b
    move-object/from16 v17, v0

    #@8d
    const/16 v18, 0x0

    #@8f
    int-to-float v0, v11

    #@90
    move/from16 v19, v0

    #@92
    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@95
    .line 332
    :cond_1
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowLongLeft:Landroid/graphics/Bitmap;

    #@99
    move-object/from16 v17, v0

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    #@9f
    move-object/from16 v18, v0

    #@a1
    move-object/from16 v0, p0

    #@a3
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    #@a5
    move-object/from16 v19, v0

    #@a7
    move-object/from16 v0, p1

    #@a9
    move-object/from16 v1, v17

    #@ab
    move-object/from16 v2, v18

    #@ad
    move-object/from16 v3, v19

    #@af
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    #@b2
    .line 347
    :goto_0
    :pswitch_1
    move-object/from16 v0, p0

    #@b4
    iget v5, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    #@b6
    .line 348
    .local v5, "bgHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@b9
    move-result v17

    #@ba
    if-eqz v17, :cond_3

    #@bc
    .line 349
    sub-int v6, v11, v5

    #@be
    .line 366
    .local v6, "bgTop":I
    :goto_1
    move-object/from16 v0, p0

    #@c0
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    #@c2
    move/from16 v17, v0

    #@c4
    move-object/from16 v0, p0

    #@c6
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@c8
    move/from16 v18, v0

    #@ca
    add-int v15, v17, v18

    #@cc
    .line 368
    .local v15, "xOffset":I
    move-object/from16 v0, p0

    #@ce
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    #@d0
    move/from16 v17, v0

    #@d2
    .line 369
    move-object/from16 v0, p0

    #@d4
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    #@d6
    move/from16 v18, v0

    #@d8
    .line 370
    move-object/from16 v0, p0

    #@da
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    #@dc
    move/from16 v19, v0

    #@de
    .line 367
    move-object/from16 v0, p0

    #@e0
    move/from16 v1, v17

    #@e2
    move/from16 v2, v18

    #@e4
    move/from16 v3, v19

    #@e6
    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    #@e9
    move-result v9

    #@ea
    .line 372
    .local v9, "drawableY":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@ed
    move-result v17

    #@ee
    if-eqz v17, :cond_4

    #@f0
    move v14, v15

    #@f1
    .line 373
    .local v14, "x":I
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@f4
    move-result v17

    #@f5
    if-eqz v17, :cond_5

    #@f7
    add-int v16, v9, v6

    #@f9
    .line 374
    .local v16, "y":I
    :goto_3
    move-object/from16 v0, p0

    #@fb
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    #@fd
    move/from16 v17, v0

    #@ff
    const/16 v18, 0x2

    #@101
    move/from16 v0, v17

    #@103
    move/from16 v1, v18

    #@105
    if-eq v0, v1, :cond_6

    #@107
    .line 375
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimple:Landroid/graphics/Bitmap;

    #@10b
    move-object/from16 v17, v0

    #@10d
    move-object/from16 v0, p0

    #@10f
    move-object/from16 v1, v17

    #@111
    move-object/from16 v2, p1

    #@113
    move/from16 v3, v16

    #@115
    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    #@118
    .line 376
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleIcon:Landroid/graphics/Bitmap;

    #@11c
    move-object/from16 v17, v0

    #@11e
    move-object/from16 v0, p0

    #@120
    move-object/from16 v1, v17

    #@122
    move-object/from16 v2, p1

    #@124
    move/from16 v3, v16

    #@126
    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    #@129
    .line 384
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@12c
    move-result v17

    #@12d
    if-eqz v17, :cond_7

    #@12f
    .line 385
    div-int/lit8 v17, v13, 0x2

    #@131
    move-object/from16 v0, p0

    #@133
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@135
    move/from16 v18, v0

    #@137
    add-int v15, v17, v18

    #@139
    .line 388
    :goto_5
    move-object/from16 v0, p0

    #@13b
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    #@13d
    move/from16 v17, v0

    #@13f
    .line 389
    move-object/from16 v0, p0

    #@141
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    #@143
    move/from16 v18, v0

    #@145
    .line 390
    move-object/from16 v0, p0

    #@147
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    #@149
    move/from16 v19, v0

    #@14b
    .line 387
    move-object/from16 v0, p0

    #@14d
    move/from16 v1, v17

    #@14f
    move/from16 v2, v18

    #@151
    move/from16 v3, v19

    #@153
    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    #@156
    move-result v9

    #@157
    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@15a
    move-result v17

    #@15b
    if-eqz v17, :cond_8

    #@15d
    .line 394
    move-object/from16 v0, p0

    #@15f
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    #@161
    move-object/from16 v17, v0

    #@163
    add-int v18, v9, v6

    #@165
    move-object/from16 v0, p0

    #@167
    move-object/from16 v1, v17

    #@169
    move-object/from16 v2, p1

    #@16b
    move/from16 v3, v18

    #@16d
    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    #@170
    .line 403
    :goto_6
    move-object/from16 v0, p0

    #@172
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    #@174
    move/from16 v17, v0

    #@176
    move-object/from16 v0, p0

    #@178
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@17a
    move/from16 v18, v0

    #@17c
    add-int v15, v17, v18

    #@17e
    .line 405
    move-object/from16 v0, p0

    #@180
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    #@182
    move/from16 v17, v0

    #@184
    .line 406
    move-object/from16 v0, p0

    #@186
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    #@188
    move/from16 v18, v0

    #@18a
    .line 407
    move-object/from16 v0, p0

    #@18c
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    #@18e
    move/from16 v19, v0

    #@190
    .line 404
    move-object/from16 v0, p0

    #@192
    move/from16 v1, v17

    #@194
    move/from16 v2, v18

    #@196
    move/from16 v3, v19

    #@198
    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    #@19b
    move-result v9

    #@19c
    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@19f
    move-result v17

    #@1a0
    if-eqz v17, :cond_9

    #@1a2
    move v14, v15

    #@1a3
    .line 411
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@1a6
    move-result v17

    #@1a7
    if-eqz v17, :cond_a

    #@1a9
    add-int v16, v9, v6

    #@1ab
    .line 412
    :goto_8
    move-object/from16 v0, p0

    #@1ad
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    #@1af
    move/from16 v17, v0

    #@1b1
    const/16 v18, 0x1

    #@1b3
    move/from16 v0, v17

    #@1b5
    move/from16 v1, v18

    #@1b7
    if-eq v0, v1, :cond_b

    #@1b9
    .line 413
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimple:Landroid/graphics/Bitmap;

    #@1bd
    move-object/from16 v17, v0

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    move-object/from16 v1, v17

    #@1c3
    move-object/from16 v2, p1

    #@1c5
    move/from16 v3, v16

    #@1c7
    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    #@1ca
    .line 414
    move-object/from16 v0, p0

    #@1cc
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mRightHandleIcon:Landroid/graphics/Bitmap;

    #@1ce
    move-object/from16 v17, v0

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    move-object/from16 v1, v17

    #@1d4
    move-object/from16 v2, p1

    #@1d6
    move/from16 v3, v16

    #@1d8
    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    #@1db
    .line 421
    :goto_9
    move-object/from16 v0, p0

    #@1dd
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@1df
    move/from16 v17, v0

    #@1e1
    move-object/from16 v0, p0

    #@1e3
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    #@1e5
    move/from16 v18, v0

    #@1e7
    add-int v17, v17, v18

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    #@1ed
    move/from16 v18, v0

    #@1ef
    sub-int v7, v17, v18

    #@1f1
    .line 422
    .local v7, "dimpleLeft":I
    move-object/from16 v0, p0

    #@1f3
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    #@1f5
    move/from16 v17, v0

    #@1f7
    div-int/lit8 v10, v17, 0x2

    #@1f9
    .line 423
    .local v10, "halfdimple":I
    :goto_a
    neg-int v0, v10

    #@1fa
    move/from16 v17, v0

    #@1fc
    move/from16 v0, v17

    #@1fe
    if-le v7, v0, :cond_d

    #@200
    .line 425
    move-object/from16 v0, p0

    #@202
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    #@204
    move/from16 v17, v0

    #@206
    .line 426
    move-object/from16 v0, p0

    #@208
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    #@20a
    move/from16 v18, v0

    #@20c
    .line 427
    move-object/from16 v0, p0

    #@20e
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    #@210
    move/from16 v19, v0

    #@212
    .line 424
    move-object/from16 v0, p0

    #@214
    move/from16 v1, v17

    #@216
    move/from16 v2, v18

    #@218
    move/from16 v3, v19

    #@21a
    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    #@21d
    move-result v9

    #@21e
    .line 430
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@221
    move-result v17

    #@222
    if-eqz v17, :cond_c

    #@224
    .line 431
    move-object/from16 v0, p0

    #@226
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    #@228
    move-object/from16 v17, v0

    #@22a
    add-int v18, v9, v6

    #@22c
    move-object/from16 v0, p0

    #@22e
    move-object/from16 v1, v17

    #@230
    move-object/from16 v2, p1

    #@232
    move/from16 v3, v18

    #@234
    invoke-direct {v0, v1, v2, v7, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    #@237
    .line 435
    :goto_b
    move-object/from16 v0, p0

    #@239
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    #@23b
    move/from16 v17, v0

    #@23d
    sub-int v7, v7, v17

    #@23f
    goto :goto_a

    #@240
    .line 335
    .end local v5    # "bgHeight":I
    .end local v6    # "bgTop":I
    .end local v7    # "dimpleLeft":I
    .end local v9    # "drawableY":I
    .end local v10    # "halfdimple":I
    .end local v14    # "x":I
    .end local v15    # "xOffset":I
    .end local v16    # "y":I
    :pswitch_2
    move-object/from16 v0, p0

    #@242
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    #@244
    move-object/from16 v17, v0

    #@246
    const/16 v18, 0x0

    #@248
    const/16 v19, 0x0

    #@24a
    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@24d
    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@250
    move-result v17

    #@251
    if-nez v17, :cond_2

    #@253
    .line 337
    move-object/from16 v0, p0

    #@255
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    #@257
    move-object/from16 v17, v0

    #@259
    const/high16 v18, -0x3d4c0000    # -90.0f

    #@25b
    const/16 v19, 0x0

    #@25d
    const/16 v20, 0x0

    #@25f
    invoke-virtual/range {v17 .. v20}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    #@262
    .line 339
    move-object/from16 v0, p0

    #@264
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    #@266
    move-object/from16 v17, v0

    #@268
    const/16 v18, 0x0

    #@26a
    move-object/from16 v0, p0

    #@26c
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    #@26e
    move/from16 v19, v0

    #@270
    sub-int v19, v19, v11

    #@272
    add-int v19, v19, v11

    #@274
    move/from16 v0, v19

    #@276
    int-to-float v0, v0

    #@277
    move/from16 v19, v0

    #@279
    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@27c
    .line 341
    :cond_2
    move-object/from16 v0, p0

    #@27e
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowLongRight:Landroid/graphics/Bitmap;

    #@280
    move-object/from16 v17, v0

    #@282
    move-object/from16 v0, p0

    #@284
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    #@286
    move-object/from16 v18, v0

    #@288
    move-object/from16 v0, p0

    #@28a
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    #@28c
    move-object/from16 v19, v0

    #@28e
    move-object/from16 v0, p1

    #@290
    move-object/from16 v1, v17

    #@292
    move-object/from16 v2, v18

    #@294
    move-object/from16 v3, v19

    #@296
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    #@299
    goto/16 :goto_0

    #@29b
    .line 350
    .restart local v5    # "bgHeight":I
    :cond_3
    sub-int v6, v13, v5

    #@29d
    .restart local v6    # "bgTop":I
    goto/16 :goto_1

    #@29f
    .line 372
    .restart local v9    # "drawableY":I
    .restart local v15    # "xOffset":I
    :cond_4
    add-int v14, v9, v6

    #@2a1
    .restart local v14    # "x":I
    goto/16 :goto_2

    #@2a3
    .line 373
    :cond_5
    sub-int v16, v11, v15

    #@2a5
    .restart local v16    # "y":I
    goto/16 :goto_3

    #@2a7
    .line 378
    :cond_6
    move-object/from16 v0, p0

    #@2a9
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    #@2ab
    move-object/from16 v17, v0

    #@2ad
    move-object/from16 v0, p0

    #@2af
    move-object/from16 v1, v17

    #@2b1
    move-object/from16 v2, p1

    #@2b3
    move/from16 v3, v16

    #@2b5
    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    #@2b8
    goto/16 :goto_4

    #@2ba
    .line 386
    :cond_7
    div-int/lit8 v17, v11, 0x2

    #@2bc
    move-object/from16 v0, p0

    #@2be
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@2c0
    move/from16 v18, v0

    #@2c2
    add-int v15, v17, v18

    #@2c4
    goto/16 :goto_5

    #@2c6
    .line 397
    :cond_8
    move-object/from16 v0, p0

    #@2c8
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    #@2ca
    move-object/from16 v17, v0

    #@2cc
    add-int v18, v9, v6

    #@2ce
    sub-int v19, v11, v15

    #@2d0
    move-object/from16 v0, p0

    #@2d2
    move-object/from16 v1, v17

    #@2d4
    move-object/from16 v2, p1

    #@2d6
    move/from16 v3, v18

    #@2d8
    move/from16 v4, v19

    #@2da
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    #@2dd
    goto/16 :goto_6

    #@2df
    .line 410
    :cond_9
    add-int v14, v9, v6

    #@2e1
    goto/16 :goto_7

    #@2e3
    .line 411
    :cond_a
    sub-int v16, v11, v15

    #@2e5
    goto/16 :goto_8

    #@2e7
    .line 416
    :cond_b
    move-object/from16 v0, p0

    #@2e9
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    #@2eb
    move-object/from16 v17, v0

    #@2ed
    move-object/from16 v0, p0

    #@2ef
    move-object/from16 v1, v17

    #@2f1
    move-object/from16 v2, p1

    #@2f3
    move/from16 v3, v16

    #@2f5
    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    #@2f8
    goto/16 :goto_9

    #@2fa
    .line 433
    .restart local v7    # "dimpleLeft":I
    .restart local v10    # "halfdimple":I
    :cond_c
    move-object/from16 v0, p0

    #@2fc
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    #@2fe
    move-object/from16 v17, v0

    #@300
    add-int v18, v9, v6

    #@302
    sub-int v19, v11, v7

    #@304
    move-object/from16 v0, p0

    #@306
    move-object/from16 v1, v17

    #@308
    move-object/from16 v2, p1

    #@30a
    move/from16 v3, v18

    #@30c
    move/from16 v4, v19

    #@30e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    #@311
    goto/16 :goto_b

    #@313
    .line 439
    :cond_d
    move-object/from16 v0, p0

    #@315
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@317
    move/from16 v17, v0

    #@319
    move-object/from16 v0, p0

    #@31b
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    #@31d
    move/from16 v18, v0

    #@31f
    add-int v17, v17, v18

    #@321
    move-object/from16 v0, p0

    #@323
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    #@325
    move/from16 v18, v0

    #@327
    add-int v8, v17, v18

    #@329
    .line 440
    .local v8, "dimpleRight":I
    move-object/from16 v0, p0

    #@32b
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRight:I

    #@32d
    move/from16 v17, v0

    #@32f
    add-int v12, v17, v10

    #@331
    .line 441
    .local v12, "rightThresh":I
    :goto_c
    if-ge v8, v12, :cond_f

    #@333
    .line 443
    move-object/from16 v0, p0

    #@335
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    #@337
    move/from16 v17, v0

    #@339
    .line 444
    move-object/from16 v0, p0

    #@33b
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    #@33d
    move/from16 v18, v0

    #@33f
    .line 445
    move-object/from16 v0, p0

    #@341
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    #@343
    move/from16 v19, v0

    #@345
    .line 442
    move-object/from16 v0, p0

    #@347
    move/from16 v1, v17

    #@349
    move/from16 v2, v18

    #@34b
    move/from16 v3, v19

    #@34d
    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    #@350
    move-result v9

    #@351
    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@354
    move-result v17

    #@355
    if-eqz v17, :cond_e

    #@357
    .line 449
    move-object/from16 v0, p0

    #@359
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    #@35b
    move-object/from16 v17, v0

    #@35d
    add-int v18, v9, v6

    #@35f
    move-object/from16 v0, p0

    #@361
    move-object/from16 v1, v17

    #@363
    move-object/from16 v2, p1

    #@365
    move/from16 v3, v18

    #@367
    invoke-direct {v0, v1, v2, v8, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    #@36a
    .line 453
    :goto_d
    move-object/from16 v0, p0

    #@36c
    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    #@36e
    move/from16 v17, v0

    #@370
    add-int v8, v8, v17

    #@372
    goto :goto_c

    #@373
    .line 451
    :cond_e
    move-object/from16 v0, p0

    #@375
    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    #@377
    move-object/from16 v17, v0

    #@379
    add-int v18, v9, v6

    #@37b
    sub-int v19, v11, v8

    #@37d
    move-object/from16 v0, p0

    #@37f
    move-object/from16 v1, v17

    #@381
    move-object/from16 v2, p1

    #@383
    move/from16 v3, v18

    #@385
    move/from16 v4, v19

    #@387
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    #@38a
    goto :goto_d

    #@38b
    .line 298
    :cond_f
    return-void

    #@38c
    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 279
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@9
    move-result v3

    #@a
    .line 281
    .local v3, "length":I
    :goto_0
    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    #@c
    const/high16 v5, 0x40c00000    # 6.0f

    #@e
    mul-float/2addr v4, v5

    #@f
    float-to-int v1, v4

    #@10
    .line 282
    .local v1, "arrowScrunch":I
    iget-object v4, p0, Lcom/android/internal/widget/RotarySelector;->mArrowShortLeftAndRight:Landroid/graphics/Bitmap;

    #@12
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    #@15
    move-result v0

    #@16
    .line 288
    .local v0, "arrowH":I
    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    #@18
    add-int/2addr v4, v0

    #@19
    sub-int v2, v4, v1

    #@1b
    .line 290
    .local v2, "height":I
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 291
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/RotarySelector;->setMeasuredDimension(II)V

    #@24
    .line 277
    :goto_1
    return-void

    #@25
    .line 280
    .end local v0    # "arrowH":I
    .end local v1    # "arrowScrunch":I
    .end local v2    # "height":I
    .end local v3    # "length":I
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@28
    move-result v3

    #@29
    .restart local v3    # "length":I
    goto :goto_0

    #@2a
    .line 293
    .restart local v0    # "arrowH":I
    .restart local v1    # "arrowScrunch":I
    .restart local v2    # "height":I
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/RotarySelector;->setMeasuredDimension(II)V

    #@2d
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    #@4
    .line 222
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    #@6
    const/high16 v4, 0x41100000    # 9.0f

    #@8
    mul-float/2addr v3, v4

    #@9
    float-to-int v0, v3

    #@a
    .line 223
    .local v0, "edgePadding":I
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    #@c
    div-int/lit8 v3, v3, 0x2

    #@e
    add-int/2addr v3, v0

    #@f
    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    #@11
    .line 224
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    move v2, p1

    #@18
    .line 225
    .local v2, "length":I
    :goto_0
    sub-int v3, v2, v0

    #@1a
    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    #@1c
    div-int/lit8 v4, v4, 0x2

    #@1e
    sub-int/2addr v3, v4

    #@1f
    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    #@21
    .line 226
    div-int/lit8 v3, v2, 0x2

    #@23
    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    #@25
    sub-int/2addr v3, v4

    #@26
    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    #@28
    .line 229
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    #@2a
    invoke-virtual {v3, v5, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@2d
    .line 230
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_1

    #@33
    .line 232
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    #@35
    sub-int v1, p1, v3

    #@37
    .line 233
    .local v1, "left":I
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    #@39
    const/high16 v4, -0x3d4c0000    # -90.0f

    #@3b
    invoke-virtual {v3, v4, v5, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    #@3e
    .line 234
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    #@40
    int-to-float v4, v1

    #@41
    int-to-float v5, p2

    #@42
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@45
    .line 219
    .end local v1    # "left":I
    :goto_1
    return-void

    #@46
    .line 224
    .end local v2    # "length":I
    :cond_0
    move v2, p2

    #@47
    .restart local v2    # "length":I
    goto :goto_0

    #@48
    .line 237
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    #@4a
    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    #@4c
    sub-int v4, p2, v4

    #@4e
    int-to-float v4, v4

    #@4f
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@52
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v13, 0x5

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v12, 0x0

    #@3
    const/4 v10, 0x0

    #@4
    const/4 v11, 0x1

    #@5
    .line 500
    iget-boolean v8, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    #@7
    if-eqz v8, :cond_0

    #@9
    .line 501
    return v11

    #@a
    .line 503
    :cond_0
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@c
    if-nez v8, :cond_1

    #@e
    .line 504
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@11
    move-result-object v8

    #@12
    iput-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@14
    .line 506
    :cond_1
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@16
    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@19
    .line 508
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->getHeight()I

    #@1c
    move-result v2

    #@1d
    .line 510
    .local v2, "height":I
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@20
    move-result v8

    #@21
    if-eqz v8, :cond_3

    #@23
    .line 511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@26
    move-result v8

    #@27
    float-to-int v1, v8

    #@28
    .line 513
    .local v1, "eventX":I
    :goto_0
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    #@2a
    .line 515
    .local v3, "hitWindow":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@2d
    move-result v0

    #@2e
    .line 516
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@31
    .line 612
    :cond_2
    :goto_1
    return v11

    #@32
    .line 512
    .end local v0    # "action":I
    .end local v1    # "eventX":I
    .end local v3    # "hitWindow":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@35
    move-result v8

    #@36
    float-to-int v8, v8

    #@37
    sub-int v1, v2, v8

    #@39
    .restart local v1    # "eventX":I
    goto :goto_0

    #@3a
    .line 519
    .restart local v0    # "action":I
    .restart local v3    # "hitWindow":I
    :pswitch_0
    iput-boolean v10, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    #@3c
    .line 520
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    #@3e
    if-eqz v8, :cond_4

    #@40
    .line 521
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->reset()V

    #@43
    .line 522
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    #@46
    .line 524
    :cond_4
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    #@48
    add-int/2addr v8, v3

    #@49
    if-ge v1, v8, :cond_5

    #@4b
    .line 525
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    #@4d
    sub-int v8, v1, v8

    #@4f
    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@51
    .line 526
    invoke-direct {p0, v11}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    #@54
    .line 527
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    #@57
    .line 528
    const-wide/16 v8, 0x14

    #@59
    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/RotarySelector;->vibrate(J)V

    #@5c
    goto :goto_1

    #@5d
    .line 529
    :cond_5
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    #@5f
    sub-int/2addr v8, v3

    #@60
    if-le v1, v8, :cond_2

    #@62
    .line 530
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    #@64
    sub-int v8, v1, v8

    #@66
    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@68
    .line 531
    invoke-direct {p0, v9}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    #@6b
    .line 532
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    #@6e
    .line 533
    const-wide/16 v8, 0x14

    #@70
    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/RotarySelector;->vibrate(J)V

    #@73
    goto :goto_1

    #@74
    .line 539
    :pswitch_1
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    #@76
    if-ne v8, v11, :cond_8

    #@78
    .line 540
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    #@7a
    sub-int v8, v1, v8

    #@7c
    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@7e
    .line 541
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    #@81
    .line 542
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@84
    move-result v8

    #@85
    if-eqz v8, :cond_6

    #@87
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->getRight()I

    #@8a
    move-result v5

    #@8b
    .line 543
    .local v5, "rightThresh":I
    :goto_2
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mEdgeTriggerThresh:I

    #@8d
    sub-int v8, v5, v8

    #@8f
    if-lt v1, v8, :cond_2

    #@91
    iget-boolean v8, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    #@93
    if-nez v8, :cond_2

    #@95
    .line 544
    iput-boolean v11, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    #@97
    .line 545
    invoke-direct {p0, v11}, Lcom/android/internal/widget/RotarySelector;->dispatchTriggerEvent(I)V

    #@9a
    .line 546
    iget-object v7, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@9c
    .line 547
    .local v7, "velocityTracker":Landroid/view/VelocityTracker;
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mMaximumVelocity:I

    #@9e
    int-to-float v8, v8

    #@9f
    const/16 v9, 0x3e8

    #@a1
    invoke-virtual {v7, v9, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@a4
    .line 548
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@a7
    move-result v8

    #@a8
    if-eqz v8, :cond_7

    #@aa
    .line 549
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    #@ad
    move-result v8

    #@ae
    float-to-int v4, v8

    #@af
    .line 551
    .local v4, "rawVelocity":I
    :goto_3
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mMinimumVelocity:I

    #@b1
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    #@b4
    move-result v6

    #@b5
    .line 554
    .local v6, "velocity":I
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    #@b7
    div-int v8, v6, v8

    #@b9
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    #@bc
    move-result v8

    #@bd
    .line 553
    const/16 v9, 0x8

    #@bf
    .line 552
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    #@c2
    move-result v8

    #@c3
    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    #@c5
    .line 556
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    #@c7
    sub-int v8, v1, v8

    #@c9
    .line 557
    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    #@cb
    iget v10, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    #@cd
    mul-int/2addr v9, v10

    #@ce
    .line 555
    invoke-direct {p0, v8, v9, v6}, Lcom/android/internal/widget/RotarySelector;->startAnimationWithVelocity(III)V

    #@d1
    goto/16 :goto_1

    #@d3
    .line 542
    .end local v4    # "rawVelocity":I
    .end local v5    # "rightThresh":I
    .end local v6    # "velocity":I
    .end local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_6
    move v5, v2

    #@d4
    .restart local v5    # "rightThresh":I
    goto :goto_2

    #@d5
    .line 550
    .restart local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_7
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    #@d8
    move-result v8

    #@d9
    float-to-int v8, v8

    #@da
    neg-int v4, v8

    #@db
    .restart local v4    # "rawVelocity":I
    goto :goto_3

    #@dc
    .line 560
    .end local v4    # "rawVelocity":I
    .end local v5    # "rightThresh":I
    .end local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_8
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    #@de
    if-ne v8, v9, :cond_2

    #@e0
    .line 561
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    #@e2
    sub-int v8, v1, v8

    #@e4
    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@e6
    .line 562
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    #@e9
    .line 563
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mEdgeTriggerThresh:I

    #@eb
    if-gt v1, v8, :cond_2

    #@ed
    iget-boolean v8, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    #@ef
    if-nez v8, :cond_2

    #@f1
    .line 564
    iput-boolean v11, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    #@f3
    .line 565
    invoke-direct {p0, v9}, Lcom/android/internal/widget/RotarySelector;->dispatchTriggerEvent(I)V

    #@f6
    .line 566
    iget-object v7, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@f8
    .line 567
    .restart local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mMaximumVelocity:I

    #@fa
    int-to-float v8, v8

    #@fb
    const/16 v9, 0x3e8

    #@fd
    invoke-virtual {v7, v9, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@100
    .line 568
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    #@103
    move-result v8

    #@104
    if-eqz v8, :cond_9

    #@106
    .line 569
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    #@109
    move-result v8

    #@10a
    float-to-int v4, v8

    #@10b
    .line 571
    .restart local v4    # "rawVelocity":I
    :goto_4
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mMinimumVelocity:I

    #@10d
    neg-int v8, v8

    #@10e
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    #@111
    move-result v6

    #@112
    .line 574
    .restart local v6    # "velocity":I
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    #@114
    div-int v8, v6, v8

    #@116
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    #@119
    move-result v8

    #@11a
    .line 573
    const/16 v9, 0x8

    #@11c
    .line 572
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    #@11f
    move-result v8

    #@120
    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    #@122
    .line 576
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    #@124
    sub-int v8, v1, v8

    #@126
    .line 577
    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    #@128
    iget v10, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    #@12a
    mul-int/2addr v9, v10

    #@12b
    neg-int v9, v9

    #@12c
    .line 575
    invoke-direct {p0, v8, v9, v6}, Lcom/android/internal/widget/RotarySelector;->startAnimationWithVelocity(III)V

    #@12f
    goto/16 :goto_1

    #@131
    .line 570
    .end local v4    # "rawVelocity":I
    .end local v6    # "velocity":I
    :cond_9
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    #@134
    move-result v8

    #@135
    float-to-int v8, v8

    #@136
    neg-int v4, v8

    #@137
    .restart local v4    # "rawVelocity":I
    goto :goto_4

    #@138
    .line 585
    .end local v4    # "rawVelocity":I
    .end local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_2
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    #@13a
    if-ne v8, v11, :cond_b

    #@13c
    .line 586
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    #@13e
    sub-int v8, v1, v8

    #@140
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    #@143
    move-result v8

    #@144
    if-le v8, v13, :cond_b

    #@146
    .line 588
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    #@148
    sub-int v8, v1, v8

    #@14a
    const/16 v9, 0x12c

    #@14c
    invoke-direct {p0, v8, v10, v9}, Lcom/android/internal/widget/RotarySelector;->startAnimation(III)V

    #@14f
    .line 594
    :cond_a
    :goto_5
    iput v10, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    #@151
    .line 595
    invoke-direct {p0, v10}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    #@154
    .line 596
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    #@157
    .line 597
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@159
    if-eqz v8, :cond_2

    #@15b
    .line 598
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@15d
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    #@160
    .line 599
    iput-object v12, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@162
    goto/16 :goto_1

    #@164
    .line 589
    :cond_b
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    #@166
    if-ne v8, v9, :cond_a

    #@168
    .line 590
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    #@16a
    sub-int v8, v1, v8

    #@16c
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    #@16f
    move-result v8

    #@170
    if-le v8, v13, :cond_a

    #@172
    .line 592
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    #@174
    sub-int v8, v1, v8

    #@176
    const/16 v9, 0x12c

    #@178
    invoke-direct {p0, v8, v10, v9}, Lcom/android/internal/widget/RotarySelector;->startAnimation(III)V

    #@17b
    goto :goto_5

    #@17c
    .line 604
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->reset()V

    #@17f
    .line 605
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    #@182
    .line 606
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@184
    if-eqz v8, :cond_2

    #@186
    .line 607
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@188
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    #@18b
    .line 608
    iput-object v12, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@18d
    goto/16 :goto_1

    #@18f
    .line 516
    nop

    #@190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setLeftHandleResource(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 254
    if-eqz p1, :cond_0

    #@2
    .line 255
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleIcon:Landroid/graphics/Bitmap;

    #@8
    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    #@b
    .line 253
    return-void
.end method

.method public setOnDialTriggerListener(Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    #@0
    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    #@2
    .line 710
    return-void
.end method

.method public setRightHandleResource(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 269
    if-eqz p1, :cond_0

    #@2
    .line 270
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleIcon:Landroid/graphics/Bitmap;

    #@8
    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    #@b
    .line 268
    return-void
.end method
