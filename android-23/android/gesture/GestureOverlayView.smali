.class public Landroid/gesture/GestureOverlayView;
.super Landroid/widget/FrameLayout;
.source "GestureOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gesture/GestureOverlayView$FadeOutRunnable;,
        Landroid/gesture/GestureOverlayView$OnGesturingListener;,
        Landroid/gesture/GestureOverlayView$OnGestureListener;,
        Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;
    }
.end annotation


# static fields
.field private static final DITHER_FLAG:Z = true

.field private static final FADE_ANIMATION_RATE:I = 0x10

.field private static final GESTURE_RENDERING_ANTIALIAS:Z = true

.field public static final GESTURE_STROKE_TYPE_MULTIPLE:I = 0x1

.field public static final GESTURE_STROKE_TYPE_SINGLE:I = 0x0

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field private mCertainGestureColor:I

.field private mCurrentColor:I

.field private mCurrentGesture:Landroid/gesture/Gesture;

.field private mCurveEndX:F

.field private mCurveEndY:F

.field private mFadeDuration:J

.field private mFadeEnabled:Z

.field private mFadeOffset:J

.field private mFadingAlpha:F

.field private mFadingHasStarted:Z

.field private final mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

.field private mFadingStart:J

.field private final mGesturePaint:Landroid/graphics/Paint;

.field private mGestureStrokeAngleThreshold:F

.field private mGestureStrokeLengthThreshold:F

.field private mGestureStrokeSquarenessTreshold:F

.field private mGestureStrokeType:I

.field private mGestureStrokeWidth:F

.field private mGestureVisible:Z

.field private mHandleGestureActions:Z

.field private mInterceptEvents:Z

.field private final mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private final mInvalidRect:Landroid/graphics/Rect;

.field private mInvalidateExtraBorder:I

.field private mIsFadingOut:Z

.field private mIsGesturing:Z

.field private mIsListeningForGestures:Z

.field private final mOnGestureListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GestureOverlayView$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnGesturePerformedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnGesturingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GestureOverlayView$OnGesturingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private final mPath:Landroid/graphics/Path;

.field private mPreviousWasGesturing:Z

.field private mResetGesture:Z

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalLength:F

.field private mUncertainGestureColor:I

.field private mX:F

.field private mY:F


# direct methods
.method static synthetic -get0(Landroid/gesture/GestureOverlayView;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Landroid/gesture/GestureOverlayView;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/gesture/GestureOverlayView;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadingStart:J

    #@2
    return-wide v0
.end method

.method static synthetic -get3(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/gesture/GestureOverlayView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/gesture/GestureOverlayView;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    #@2
    return p1
.end method

.method static synthetic -set5(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/gesture/GestureOverlayView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->fireOnGesturePerformed()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/gesture/GestureOverlayView;I)V
    .locals 0
    .param p1, "alpha"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 130
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@5
    .line 67
    new-instance v0, Landroid/graphics/Paint;

    #@7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@a
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    #@c
    .line 69
    const-wide/16 v0, 0x96

    #@e
    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    #@10
    .line 70
    const-wide/16 v0, 0x1a4

    #@12
    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    #@14
    .line 73
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    #@16
    .line 76
    const/16 v0, -0x100

    #@18
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    #@1a
    .line 77
    const v0, 0x48ffff00    # 524280.0f

    #@1d
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    #@1f
    .line 78
    const/high16 v0, 0x41400000    # 12.0f

    #@21
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    #@23
    .line 79
    const/16 v0, 0xa

    #@25
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    #@27
    .line 81
    iput v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    #@29
    .line 82
    const/high16 v0, 0x42480000    # 50.0f

    #@2b
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    #@2d
    .line 83
    const v0, 0x3e8ccccd    # 0.275f

    #@30
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    #@32
    .line 84
    const/high16 v0, 0x42200000    # 40.0f

    #@34
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    #@36
    .line 86
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    #@38
    .line 88
    new-instance v0, Landroid/graphics/Rect;

    #@3a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3d
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    #@3f
    .line 89
    new-instance v0, Landroid/graphics/Path;

    #@41
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@44
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@46
    .line 90
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    #@48
    .line 99
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    #@4a
    .line 100
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    #@4c
    .line 101
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    #@4e
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    #@50
    const/16 v1, 0x64

    #@52
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@55
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    #@57
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    #@59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5c
    .line 110
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    #@5e
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    #@60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@63
    .line 113
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    #@65
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    #@67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6a
    .line 116
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    #@6c
    .line 122
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    #@6e
    .line 123
    const/high16 v0, 0x3f800000    # 1.0f

    #@70
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    #@72
    .line 125
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@74
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@77
    .line 124
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@79
    .line 127
    new-instance v0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    #@7b
    const/4 v1, 0x0

    #@7c
    invoke-direct {v0, p0, v1}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$FadeOutRunnable;)V

    #@7f
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    #@81
    .line 131
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->init()V

    #@84
    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 135
    const v0, 0x116001b

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 139
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/16 v6, 0xa

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@7
    .line 67
    new-instance v1, Landroid/graphics/Paint;

    #@9
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@c
    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    #@e
    .line 69
    const-wide/16 v2, 0x96

    #@10
    iput-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    #@12
    .line 70
    const-wide/16 v2, 0x1a4

    #@14
    iput-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    #@16
    .line 73
    iput-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    #@18
    .line 76
    const/16 v1, -0x100

    #@1a
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    #@1c
    .line 77
    const v1, 0x48ffff00    # 524280.0f

    #@1f
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    #@21
    .line 78
    const/high16 v1, 0x41400000    # 12.0f

    #@23
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    #@25
    .line 79
    iput v6, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    #@27
    .line 81
    iput v5, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    #@29
    .line 82
    const/high16 v1, 0x42480000    # 50.0f

    #@2b
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    #@2d
    .line 83
    const v1, 0x3e8ccccd    # 0.275f

    #@30
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    #@32
    .line 84
    const/high16 v1, 0x42200000    # 40.0f

    #@34
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    #@36
    .line 86
    iput v4, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    #@38
    .line 88
    new-instance v1, Landroid/graphics/Rect;

    #@3a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@3d
    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    #@3f
    .line 89
    new-instance v1, Landroid/graphics/Path;

    #@41
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    #@44
    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@46
    .line 90
    iput-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    #@48
    .line 99
    iput-boolean v5, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    #@4a
    .line 100
    iput-boolean v5, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    #@4c
    .line 101
    iput-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    #@4e
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    #@50
    const/16 v2, 0x64

    #@52
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@55
    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    #@57
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    #@59
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5c
    .line 110
    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    #@5e
    .line 114
    new-instance v1, Ljava/util/ArrayList;

    #@60
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@63
    .line 113
    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    #@65
    .line 117
    new-instance v1, Ljava/util/ArrayList;

    #@67
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6a
    .line 116
    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    #@6c
    .line 122
    iput-boolean v5, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    #@6e
    .line 123
    const/high16 v1, 0x3f800000    # 1.0f

    #@70
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    #@72
    .line 125
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@74
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@77
    .line 124
    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@79
    .line 127
    new-instance v1, Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    #@7b
    const/4 v2, 0x0

    #@7c
    invoke-direct {v1, p0, v2}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$FadeOutRunnable;)V

    #@7f
    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    #@81
    .line 147
    sget-object v1, Lcom/android/internal/R$styleable;->GestureOverlayView:[I

    #@83
    .line 146
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@86
    move-result-object v0

    #@87
    .line 150
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    #@89
    .line 149
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@8c
    move-result v1

    #@8d
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    #@8f
    .line 151
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    #@91
    float-to-int v1, v1

    #@92
    add-int/lit8 v1, v1, -0x1

    #@94
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    #@97
    move-result v1

    #@98
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    #@9a
    .line 153
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    #@9c
    .line 152
    const/4 v2, 0x2

    #@9d
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@a0
    move-result v1

    #@a1
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    #@a3
    .line 155
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    #@a5
    .line 154
    const/4 v2, 0x3

    #@a6
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@a9
    move-result v1

    #@aa
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    #@ac
    .line 156
    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    #@ae
    long-to-int v1, v2

    #@af
    const/4 v2, 0x5

    #@b0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@b3
    move-result v1

    #@b4
    int-to-long v2, v1

    #@b5
    iput-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    #@b7
    .line 157
    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    #@b9
    long-to-int v1, v2

    #@ba
    const/4 v2, 0x4

    #@bb
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@be
    move-result v1

    #@bf
    int-to-long v2, v1

    #@c0
    iput-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    #@c2
    .line 159
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    #@c4
    .line 158
    const/4 v2, 0x6

    #@c5
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@c8
    move-result v1

    #@c9
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    #@cb
    .line 162
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    #@cd
    .line 161
    const/4 v2, 0x7

    #@ce
    .line 160
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@d1
    move-result v1

    #@d2
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    #@d4
    .line 165
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    #@d6
    .line 164
    const/16 v2, 0x9

    #@d8
    .line 163
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@db
    move-result v1

    #@dc
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    #@de
    .line 168
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    #@e0
    .line 167
    const/16 v2, 0x8

    #@e2
    .line 166
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@e5
    move-result v1

    #@e6
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    #@e8
    .line 170
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    #@ea
    .line 169
    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ed
    move-result v1

    #@ee
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    #@f0
    .line 172
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    #@f2
    .line 171
    const/16 v2, 0xb

    #@f4
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@f7
    move-result v1

    #@f8
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    #@fa
    .line 173
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    #@fc
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@ff
    move-result v1

    #@100
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    #@102
    .line 175
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@105
    .line 177
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->init()V

    #@108
    .line 143
    return-void
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 724
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    #@2
    .line 725
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 726
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 727
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Landroid/gesture/GestureOverlayView$OnGestureListener;

    #@f
    invoke-interface {v3, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    #@12
    .line 726
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 730
    :cond_0
    const/4 v3, 0x0

    #@16
    invoke-virtual {p0, v3}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    #@19
    .line 722
    return-void
.end method

.method private clear(ZZZ)V
    .locals 5
    .param p1, "animated"    # Z
    .param p2, "fireActionPerformed"    # Z
    .param p3, "immediate"    # Z

    #@0
    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 420
    const/16 v0, 0xff

    #@7
    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    #@a
    .line 421
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    #@c
    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@f
    .line 422
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    #@11
    .line 423
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    #@13
    iput-boolean p2, v0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    #@15
    .line 424
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    #@17
    iput-boolean v1, v0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    #@19
    .line 426
    if-eqz p1, :cond_0

    #@1b
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 427
    iput v4, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    #@21
    .line 428
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    #@23
    .line 429
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    #@25
    .line 430
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@28
    move-result-wide v0

    #@29
    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    #@2b
    add-long/2addr v0, v2

    #@2c
    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadingStart:J

    #@2e
    .line 432
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    #@30
    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    #@32
    invoke-virtual {p0, v0, v2, v3}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@35
    .line 419
    :goto_0
    return-void

    #@36
    .line 434
    :cond_0
    iput v4, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    #@38
    .line 435
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    #@3a
    .line 436
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    #@3c
    .line 438
    if-eqz p3, :cond_1

    #@3e
    .line 439
    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@40
    .line 440
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@42
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    #@45
    .line 441
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    #@48
    goto :goto_0

    #@49
    .line 442
    :cond_1
    if-eqz p2, :cond_2

    #@4b
    .line 443
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    #@4d
    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    #@4f
    invoke-virtual {p0, v0, v2, v3}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@52
    goto :goto_0

    #@53
    .line 444
    :cond_2
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    #@55
    if-ne v0, v2, :cond_3

    #@57
    .line 445
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    #@59
    iput-boolean v2, v0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    #@5b
    .line 446
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    #@5d
    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    #@5f
    invoke-virtual {p0, v0, v2, v3}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@62
    goto :goto_0

    #@63
    .line 448
    :cond_3
    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@65
    .line 449
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@67
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    #@6a
    .line 450
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    #@6d
    goto :goto_0
.end method

.method private fireOnGesturePerformed()V
    .locals 5

    #@0
    .prologue
    .line 734
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    #@2
    .line 735
    .local v0, "actionListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 736
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@9
    .line 737
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    #@f
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@11
    invoke-interface {v3, p0, v4}, Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;->onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V

    #@14
    .line 736
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 733
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 181
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v1}, Landroid/gesture/GestureOverlayView;->setWillNotDraw(Z)V

    #@5
    .line 183
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    #@7
    .line 184
    .local v0, "gesturePaint":Landroid/graphics/Paint;
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@a
    .line 185
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    #@c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@f
    .line 186
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@14
    .line 187
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    #@16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@19
    .line 188
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@1b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@1e
    .line 189
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    #@20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@23
    .line 190
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    #@26
    .line 192
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    #@28
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    #@2a
    .line 193
    const/16 v1, 0xff

    #@2c
    invoke-direct {p0, v1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    #@2f
    .line 180
    return-void
.end method

.method private processEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@5
    move-result v1

    #@6
    packed-switch v1, :pswitch_data_0

    #@9
    .line 552
    :cond_0
    return v3

    #@a
    .line 525
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->touchDown(Landroid/view/MotionEvent;)V

    #@d
    .line 526
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    #@10
    .line 527
    return v2

    #@11
    .line 529
    :pswitch_1
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 530
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;

    #@18
    move-result-object v0

    #@19
    .line 531
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    #@1b
    .line 532
    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->invalidate(Landroid/graphics/Rect;)V

    #@1e
    .line 534
    :cond_1
    return v2

    #@1f
    .line 538
    .end local v0    # "rect":Landroid/graphics/Rect;
    :pswitch_2
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    #@21
    if-eqz v1, :cond_0

    #@23
    .line 539
    invoke-direct {p0, p1, v3}, Landroid/gesture/GestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    #@26
    .line 540
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    #@29
    .line 541
    return v2

    #@2a
    .line 545
    :pswitch_3
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 546
    invoke-direct {p0, p1, v2}, Landroid/gesture/GestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    #@31
    .line 547
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    #@34
    .line 548
    return v2

    #@35
    .line 523
    nop

    #@36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setCurrentColor(I)V
    .locals 2
    .param p1, "color"    # I

    #@0
    .prologue
    .line 383
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    #@2
    .line 384
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 385
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    #@8
    const/high16 v1, 0x437f0000    # 255.0f

    #@a
    mul-float/2addr v0, v1

    #@b
    float-to-int v0, v0

    #@c
    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    #@f
    .line 389
    :goto_0
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    #@12
    .line 382
    return-void

    #@13
    .line 387
    :cond_0
    const/16 v0, 0xff

    #@15
    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    #@18
    goto :goto_0
.end method

.method private setPaintAlpha(I)V
    .locals 5
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 409
    shr-int/lit8 v2, p1, 0x7

    #@2
    add-int/2addr p1, v2

    #@3
    .line 410
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    #@5
    ushr-int/lit8 v0, v2, 0x18

    #@7
    .line 411
    .local v0, "baseAlpha":I
    mul-int v2, v0, p1

    #@9
    shr-int/lit8 v1, v2, 0x8

    #@b
    .line 412
    .local v1, "useAlpha":I
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    #@d
    iget v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    #@f
    shl-int/lit8 v3, v3, 0x8

    #@11
    ushr-int/lit8 v3, v3, 0x8

    #@13
    shl-int/lit8 v4, v1, 0x18

    #@15
    or-int/2addr v3, v4

    #@16
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    #@19
    .line 408
    return-void
.end method

.method private touchDown(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 556
    const/4 v6, 0x1

    #@3
    iput-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    #@5
    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@8
    move-result v4

    #@9
    .line 559
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@c
    move-result v5

    #@d
    .line 561
    .local v5, "y":F
    iput v4, p0, Landroid/gesture/GestureOverlayView;->mX:F

    #@f
    .line 562
    iput v5, p0, Landroid/gesture/GestureOverlayView;->mY:F

    #@11
    .line 564
    const/4 v6, 0x0

    #@12
    iput v6, p0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    #@14
    .line 565
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    #@16
    .line 567
    iget v6, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    #@18
    if-eqz v6, :cond_0

    #@1a
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    #@1c
    if-eqz v6, :cond_5

    #@1e
    .line 568
    :cond_0
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    #@20
    if-eqz v6, :cond_1

    #@22
    iget v6, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    #@24
    invoke-direct {p0, v6}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    #@27
    .line 569
    :cond_1
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    #@29
    .line 570
    iput-object v8, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@2b
    .line 571
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@2d
    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    #@30
    .line 577
    :cond_2
    :goto_0
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    #@32
    if-eqz v6, :cond_7

    #@34
    .line 578
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->cancelClearAnimation()V

    #@37
    .line 586
    :cond_3
    :goto_1
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@39
    if-nez v6, :cond_4

    #@3b
    .line 587
    new-instance v6, Landroid/gesture/Gesture;

    #@3d
    invoke-direct {v6}, Landroid/gesture/Gesture;-><init>()V

    #@40
    iput-object v6, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@42
    .line 590
    :cond_4
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    #@44
    new-instance v7, Landroid/gesture/GesturePoint;

    #@46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@49
    move-result-wide v8

    #@4a
    invoke-direct {v7, v4, v5, v8, v9}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    #@4d
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    .line 591
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@52
    invoke-virtual {v6, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    #@55
    .line 593
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    #@57
    .line 594
    .local v0, "border":I
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    #@59
    float-to-int v7, v4

    #@5a
    sub-int/2addr v7, v0

    #@5b
    float-to-int v8, v5

    #@5c
    sub-int/2addr v8, v0

    #@5d
    float-to-int v9, v4

    #@5e
    add-int/2addr v9, v0

    #@5f
    float-to-int v10, v5

    #@60
    add-int/2addr v10, v0

    #@61
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    #@64
    .line 596
    iput v4, p0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    #@66
    .line 597
    iput v5, p0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    #@68
    .line 600
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    #@6a
    .line 601
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6d
    move-result v1

    #@6e
    .line 602
    .local v1, "count":I
    const/4 v2, 0x0

    #@6f
    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_8

    #@71
    .line 603
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@74
    move-result-object v6

    #@75
    check-cast v6, Landroid/gesture/GestureOverlayView$OnGestureListener;

    #@77
    invoke-interface {v6, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    #@7a
    .line 602
    add-int/lit8 v2, v2, 0x1

    #@7c
    goto :goto_2

    #@7d
    .line 572
    .end local v0    # "border":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_5
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@7f
    if-eqz v6, :cond_6

    #@81
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@83
    invoke-virtual {v6}, Landroid/gesture/Gesture;->getStrokesCount()I

    #@86
    move-result v6

    #@87
    if-nez v6, :cond_2

    #@89
    .line 573
    :cond_6
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    #@8b
    if-eqz v6, :cond_2

    #@8d
    iget v6, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    #@8f
    invoke-direct {p0, v6}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    #@92
    goto :goto_0

    #@93
    .line 579
    :cond_7
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    #@95
    if-eqz v6, :cond_3

    #@97
    .line 580
    const/16 v6, 0xff

    #@99
    invoke-direct {p0, v6}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    #@9c
    .line 581
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    #@9e
    .line 582
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    #@a0
    .line 583
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    #@a2
    invoke-virtual {p0, v6}, Landroid/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@a5
    goto :goto_1

    #@a6
    .line 555
    .restart local v0    # "border":I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_8
    return-void
.end method

.method private touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 608
    const/4 v7, 0x0

    #@1
    .line 610
    .local v7, "areaToRefresh":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@4
    move-result v20

    #@5
    .line 611
    .local v20, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@8
    move-result v21

    #@9
    .line 613
    .local v21, "y":F
    move-object/from16 v0, p0

    #@b
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mX:F

    #@d
    move/from16 v18, v0

    #@f
    .line 614
    .local v18, "previousX":F
    move-object/from16 v0, p0

    #@11
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mY:F

    #@13
    move/from16 v19, v0

    #@15
    .line 616
    .local v19, "previousY":F
    sub-float v22, v20, v18

    #@17
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    #@1a
    move-result v13

    #@1b
    .line 617
    .local v13, "dx":F
    sub-float v22, v21, v19

    #@1d
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    #@20
    move-result v14

    #@21
    .line 619
    .local v14, "dy":F
    const/high16 v22, 0x40400000    # 3.0f

    #@23
    cmpl-float v22, v13, v22

    #@25
    if-gez v22, :cond_0

    #@27
    const/high16 v22, 0x40400000    # 3.0f

    #@29
    cmpl-float v22, v14, v22

    #@2b
    if-ltz v22, :cond_6

    #@2d
    .line 620
    :cond_0
    move-object/from16 v0, p0

    #@2f
    iget-object v7, v0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    #@31
    .line 623
    .local v7, "areaToRefresh":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@33
    iget v8, v0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    #@35
    .line 624
    .local v8, "border":I
    move-object/from16 v0, p0

    #@37
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    #@39
    move/from16 v22, v0

    #@3b
    move/from16 v0, v22

    #@3d
    float-to-int v0, v0

    #@3e
    move/from16 v22, v0

    #@40
    sub-int v22, v22, v8

    #@42
    move-object/from16 v0, p0

    #@44
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    #@46
    move/from16 v23, v0

    #@48
    move/from16 v0, v23

    #@4a
    float-to-int v0, v0

    #@4b
    move/from16 v23, v0

    #@4d
    sub-int v23, v23, v8

    #@4f
    .line 625
    move-object/from16 v0, p0

    #@51
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    #@53
    move/from16 v24, v0

    #@55
    move/from16 v0, v24

    #@57
    float-to-int v0, v0

    #@58
    move/from16 v24, v0

    #@5a
    add-int v24, v24, v8

    #@5c
    move-object/from16 v0, p0

    #@5e
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    #@60
    move/from16 v25, v0

    #@62
    move/from16 v0, v25

    #@64
    float-to-int v0, v0

    #@65
    move/from16 v25, v0

    #@67
    add-int v25, v25, v8

    #@69
    .line 624
    move/from16 v0, v22

    #@6b
    move/from16 v1, v23

    #@6d
    move/from16 v2, v24

    #@6f
    move/from16 v3, v25

    #@71
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@74
    .line 627
    add-float v22, v20, v18

    #@76
    const/high16 v23, 0x40000000    # 2.0f

    #@78
    div-float v10, v22, v23

    #@7a
    move-object/from16 v0, p0

    #@7c
    iput v10, v0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    #@7e
    .line 628
    .local v10, "cX":F
    add-float v22, v21, v19

    #@80
    const/high16 v23, 0x40000000    # 2.0f

    #@82
    div-float v11, v22, v23

    #@84
    move-object/from16 v0, p0

    #@86
    iput v11, v0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    #@88
    .line 630
    .local v11, "cY":F
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@8c
    move-object/from16 v22, v0

    #@8e
    move-object/from16 v0, v22

    #@90
    move/from16 v1, v18

    #@92
    move/from16 v2, v19

    #@94
    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    #@97
    .line 633
    move/from16 v0, v18

    #@99
    float-to-int v0, v0

    #@9a
    move/from16 v22, v0

    #@9c
    sub-int v22, v22, v8

    #@9e
    move/from16 v0, v19

    #@a0
    float-to-int v0, v0

    #@a1
    move/from16 v23, v0

    #@a3
    sub-int v23, v23, v8

    #@a5
    .line 634
    move/from16 v0, v18

    #@a7
    float-to-int v0, v0

    #@a8
    move/from16 v24, v0

    #@aa
    add-int v24, v24, v8

    #@ac
    move/from16 v0, v19

    #@ae
    float-to-int v0, v0

    #@af
    move/from16 v25, v0

    #@b1
    add-int v25, v25, v8

    #@b3
    .line 633
    move/from16 v0, v22

    #@b5
    move/from16 v1, v23

    #@b7
    move/from16 v2, v24

    #@b9
    move/from16 v3, v25

    #@bb
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    #@be
    .line 637
    float-to-int v0, v10

    #@bf
    move/from16 v22, v0

    #@c1
    sub-int v22, v22, v8

    #@c3
    float-to-int v0, v11

    #@c4
    move/from16 v23, v0

    #@c6
    sub-int v23, v23, v8

    #@c8
    .line 638
    float-to-int v0, v10

    #@c9
    move/from16 v24, v0

    #@cb
    add-int v24, v24, v8

    #@cd
    float-to-int v0, v11

    #@ce
    move/from16 v25, v0

    #@d0
    add-int v25, v25, v8

    #@d2
    .line 637
    move/from16 v0, v22

    #@d4
    move/from16 v1, v23

    #@d6
    move/from16 v2, v24

    #@d8
    move/from16 v3, v25

    #@da
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    #@dd
    .line 640
    move/from16 v0, v20

    #@df
    move-object/from16 v1, p0

    #@e1
    iput v0, v1, Landroid/gesture/GestureOverlayView;->mX:F

    #@e3
    .line 641
    move/from16 v0, v21

    #@e5
    move-object/from16 v1, p0

    #@e7
    iput v0, v1, Landroid/gesture/GestureOverlayView;->mY:F

    #@e9
    .line 643
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    #@ed
    move-object/from16 v22, v0

    #@ef
    new-instance v23, Landroid/gesture/GesturePoint;

    #@f1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@f4
    move-result-wide v24

    #@f5
    move-object/from16 v0, v23

    #@f7
    move/from16 v1, v20

    #@f9
    move/from16 v2, v21

    #@fb
    move-wide/from16 v3, v24

    #@fd
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    #@100
    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@103
    .line 645
    move-object/from16 v0, p0

    #@105
    iget-boolean v0, v0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    #@107
    move/from16 v22, v0

    #@109
    if-eqz v22, :cond_1

    #@10b
    move-object/from16 v0, p0

    #@10d
    iget-boolean v0, v0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    #@10f
    move/from16 v22, v0

    #@111
    if-eqz v22, :cond_2

    #@113
    .line 675
    :cond_1
    move-object/from16 v0, p0

    #@115
    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    #@117
    move-object/from16 v16, v0

    #@119
    .line 676
    .local v16, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@11c
    move-result v12

    #@11d
    .line 677
    .local v12, "count":I
    const/4 v15, 0x0

    #@11e
    .local v15, "i":I
    :goto_0
    if-ge v15, v12, :cond_6

    #@120
    .line 678
    move-object/from16 v0, v16

    #@122
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@125
    move-result-object v22

    #@126
    check-cast v22, Landroid/gesture/GestureOverlayView$OnGestureListener;

    #@128
    move-object/from16 v0, v22

    #@12a
    move-object/from16 v1, p0

    #@12c
    move-object/from16 v2, p1

    #@12e
    invoke-interface {v0, v1, v2}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    #@131
    .line 677
    add-int/lit8 v15, v15, 0x1

    #@133
    goto :goto_0

    #@134
    .line 646
    .end local v12    # "count":I
    .end local v15    # "i":I
    .end local v16    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_2
    move-object/from16 v0, p0

    #@136
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    #@138
    move/from16 v22, v0

    #@13a
    float-to-double v0, v13

    #@13b
    move-wide/from16 v24, v0

    #@13d
    float-to-double v0, v14

    #@13e
    move-wide/from16 v26, v0

    #@140
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->hypot(DD)D

    #@143
    move-result-wide v24

    #@144
    move-wide/from16 v0, v24

    #@146
    double-to-float v0, v0

    #@147
    move/from16 v23, v0

    #@149
    add-float v22, v22, v23

    #@14b
    move/from16 v0, v22

    #@14d
    move-object/from16 v1, p0

    #@14f
    iput v0, v1, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    #@151
    .line 648
    move-object/from16 v0, p0

    #@153
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    #@155
    move/from16 v22, v0

    #@157
    move-object/from16 v0, p0

    #@159
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    #@15b
    move/from16 v23, v0

    #@15d
    cmpl-float v22, v22, v23

    #@15f
    if-lez v22, :cond_1

    #@161
    .line 650
    move-object/from16 v0, p0

    #@163
    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    #@165
    move-object/from16 v22, v0

    #@167
    invoke-static/range {v22 .. v22}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;

    #@16a
    move-result-object v9

    #@16b
    .line 652
    .local v9, "box":Landroid/gesture/OrientedBoundingBox;
    iget v0, v9, Landroid/gesture/OrientedBoundingBox;->orientation:F

    #@16d
    move/from16 v22, v0

    #@16f
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    #@172
    move-result v6

    #@173
    .line 653
    .local v6, "angle":F
    const/high16 v22, 0x42b40000    # 90.0f

    #@175
    cmpl-float v22, v6, v22

    #@177
    if-lez v22, :cond_3

    #@179
    .line 654
    const/high16 v22, 0x43340000    # 180.0f

    #@17b
    sub-float v6, v22, v6

    #@17d
    .line 657
    :cond_3
    iget v0, v9, Landroid/gesture/OrientedBoundingBox;->squareness:F

    #@17f
    move/from16 v22, v0

    #@181
    move-object/from16 v0, p0

    #@183
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    #@185
    move/from16 v23, v0

    #@187
    cmpl-float v22, v22, v23

    #@189
    if-gtz v22, :cond_4

    #@18b
    .line 658
    move-object/from16 v0, p0

    #@18d
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    #@18f
    move/from16 v22, v0

    #@191
    const/16 v23, 0x1

    #@193
    move/from16 v0, v22

    #@195
    move/from16 v1, v23

    #@197
    if-ne v0, v1, :cond_5

    #@199
    .line 659
    move-object/from16 v0, p0

    #@19b
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    #@19d
    move/from16 v22, v0

    #@19f
    cmpg-float v22, v6, v22

    #@1a1
    if-gez v22, :cond_1

    #@1a3
    .line 662
    :cond_4
    :goto_1
    const/16 v22, 0x1

    #@1a5
    move/from16 v0, v22

    #@1a7
    move-object/from16 v1, p0

    #@1a9
    iput-boolean v0, v1, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    #@1ab
    .line 663
    move-object/from16 v0, p0

    #@1ad
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    #@1af
    move/from16 v22, v0

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    move/from16 v1, v22

    #@1b5
    invoke-direct {v0, v1}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    #@1b8
    .line 665
    move-object/from16 v0, p0

    #@1ba
    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    #@1bc
    move-object/from16 v17, v0

    #@1be
    .line 666
    .local v17, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@1c1
    move-result v12

    #@1c2
    .line 667
    .restart local v12    # "count":I
    const/4 v15, 0x0

    #@1c3
    .restart local v15    # "i":I
    :goto_2
    if-ge v15, v12, :cond_1

    #@1c5
    .line 668
    move-object/from16 v0, v17

    #@1c7
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1ca
    move-result-object v22

    #@1cb
    check-cast v22, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    #@1cd
    move-object/from16 v0, v22

    #@1cf
    move-object/from16 v1, p0

    #@1d1
    invoke-interface {v0, v1}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingStarted(Landroid/gesture/GestureOverlayView;)V

    #@1d4
    .line 667
    add-int/lit8 v15, v15, 0x1

    #@1d6
    goto :goto_2

    #@1d7
    .line 660
    .end local v12    # "count":I
    .end local v15    # "i":I
    .end local v17    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    :cond_5
    move-object/from16 v0, p0

    #@1d9
    iget v0, v0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    #@1db
    move/from16 v22, v0

    #@1dd
    cmpl-float v22, v6, v22

    #@1df
    if-lez v22, :cond_1

    #@1e1
    goto :goto_1

    #@1e2
    .line 682
    .end local v6    # "angle":F
    .end local v7    # "areaToRefresh":Landroid/graphics/Rect;
    .end local v8    # "border":I
    .end local v9    # "box":Landroid/gesture/OrientedBoundingBox;
    .end local v10    # "cX":F
    .end local v11    # "cY":F
    :cond_6
    return-object v7
.end method

.method private touchUp(Landroid/view/MotionEvent;Z)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "cancel"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 686
    iput-boolean v5, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    #@3
    .line 689
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@5
    if-eqz v4, :cond_4

    #@7
    .line 691
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@9
    new-instance v6, Landroid/gesture/GestureStroke;

    #@b
    iget-object v7, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    #@d
    invoke-direct {v6, v7}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    #@10
    invoke-virtual {v4, v6}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    #@13
    .line 693
    if-nez p2, :cond_3

    #@15
    .line 695
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    #@17
    .line 696
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v0

    #@1b
    .line 697
    .local v0, "count":I
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@1e
    .line 698
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Landroid/gesture/GestureOverlayView$OnGestureListener;

    #@24
    invoke-interface {v4, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    #@27
    .line 697
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 701
    :cond_0
    iget-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    #@2c
    if-eqz v4, :cond_1

    #@2e
    iget-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    #@30
    :goto_1
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    #@32
    if-eqz v6, :cond_2

    #@34
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    #@36
    :goto_2
    invoke-direct {p0, v4, v6, v5}, Landroid/gesture/GestureOverlayView;->clear(ZZZ)V

    #@39
    .line 711
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :goto_3
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@3e
    .line 712
    iget-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    #@40
    iput-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    #@42
    .line 713
    iput-boolean v5, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    #@44
    .line 715
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    #@46
    .line 716
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v0

    #@4a
    .line 717
    .restart local v0    # "count":I
    const/4 v1, 0x0

    #@4b
    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_5

    #@4d
    .line 718
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v4

    #@51
    check-cast v4, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    #@53
    invoke-interface {v4, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingEnded(Landroid/gesture/GestureOverlayView;)V

    #@56
    .line 717
    add-int/lit8 v1, v1, 0x1

    #@58
    goto :goto_4

    #@59
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_1
    move v4, v5

    #@5a
    .line 701
    goto :goto_1

    #@5b
    :cond_2
    move v6, v5

    #@5c
    goto :goto_2

    #@5d
    .line 704
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_3
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    #@60
    goto :goto_3

    #@61
    .line 708
    :cond_4
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    #@64
    goto :goto_3

    #@65
    .line 685
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    :cond_5
    return-void
.end method


# virtual methods
.method public addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/gesture/GestureOverlayView$OnGestureListener;

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 335
    return-void
.end method

.method public addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 349
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    if-lez v0, :cond_0

    #@d
    .line 350
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    #@10
    .line 347
    :cond_0
    return-void
.end method

.method public addOnGesturingListener(Landroid/gesture/GestureOverlayView$OnGesturingListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/gesture/GestureOverlayView$OnGesturingListener;

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 366
    return-void
.end method

.method public cancelClearAnimation()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 456
    const/16 v0, 0xff

    #@3
    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    #@6
    .line 457
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    #@8
    .line 458
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    #@a
    .line 459
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    #@c
    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@f
    .line 460
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@11
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    #@14
    .line 461
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@17
    .line 455
    return-void
.end method

.method public cancelGesture()V
    .locals 13

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 465
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    #@4
    .line 468
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@6
    new-instance v3, Landroid/gesture/GestureStroke;

    #@8
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    #@a
    invoke-direct {v3, v4}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    #@d
    invoke-virtual {v2, v3}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    #@10
    .line 471
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@13
    move-result-wide v0

    #@14
    .line 473
    .local v0, "now":J
    const/4 v4, 0x3

    #@15
    move-wide v2, v0

    #@16
    move v6, v5

    #@17
    .line 472
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@1a
    move-result-object v9

    #@1b
    .line 475
    .local v9, "event":Landroid/view/MotionEvent;
    iget-object v11, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    #@1d
    .line 476
    .local v11, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v8

    #@21
    .line 477
    .local v8, "count":I
    const/4 v10, 0x0

    #@22
    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_0

    #@24
    .line 478
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/gesture/GestureOverlayView$OnGestureListener;

    #@2a
    invoke-interface {v2, p0, v9}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    #@2d
    .line 477
    add-int/lit8 v10, v10, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 481
    :cond_0
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    #@33
    .line 483
    invoke-virtual {p0, v7}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    #@36
    .line 484
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    #@38
    .line 485
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    #@3a
    .line 486
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@3f
    .line 488
    iget-object v12, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    #@41
    .line 489
    .local v12, "otherListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@44
    move-result v8

    #@45
    .line 490
    const/4 v10, 0x0

    #@46
    :goto_1
    if-ge v10, v8, :cond_1

    #@48
    .line 491
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v2

    #@4c
    check-cast v2, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    #@4e
    invoke-interface {v2, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingEnded(Landroid/gesture/GestureOverlayView;)V

    #@51
    .line 490
    add-int/lit8 v10, v10, 0x1

    #@53
    goto :goto_1

    #@54
    .line 464
    :cond_1
    return-void
.end method

.method public clear(Z)V
    .locals 2
    .param p1, "animated"    # Z

    #@0
    .prologue
    .line 416
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/gesture/GestureOverlayView;->clear(ZZZ)V

    #@5
    .line 415
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 503
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->isEnabled()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_3

    #@6
    .line 504
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    #@8
    if-nez v1, :cond_0

    #@a
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 505
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@10
    invoke-virtual {v1}, Landroid/gesture/Gesture;->getStrokesCount()I

    #@13
    move-result v1

    #@14
    if-lez v1, :cond_2

    #@16
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    #@18
    .line 504
    if-eqz v1, :cond_2

    #@1a
    .line 506
    :cond_0
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    #@1c
    .line 508
    :goto_0
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->processEvent(Landroid/view/MotionEvent;)Z

    #@1f
    .line 510
    if-eqz v0, :cond_1

    #@21
    .line 511
    const/4 v1, 0x3

    #@22
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    #@25
    .line 514
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@28
    .line 516
    const/4 v1, 0x1

    #@29
    return v1

    #@2a
    .line 504
    :cond_2
    const/4 v0, 0x0

    #@2b
    .local v0, "cancelDispatch":Z
    goto :goto_0

    #@2c
    .line 519
    .end local v0    # "cancelDispatch":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@2f
    move-result v1

    #@30
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 401
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 403
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 404
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@d
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    #@f
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@12
    .line 400
    :cond_0
    return-void
.end method

.method public getCurrentStroke()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getFadeOffset()J
    .locals 2

    #@0
    .prologue
    .line 328
    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    #@2
    return-wide v0
.end method

.method public getGesture()Landroid/gesture/Gesture;
    .locals 1

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@2
    return-object v0
.end method

.method public getGestureColor()I
    .locals 1

    #@0
    .prologue
    .line 223
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    #@2
    return v0
.end method

.method public getGesturePaint()Landroid/graphics/Paint;
    .locals 1

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    #@2
    return-object v0
.end method

.method public getGesturePath()Landroid/graphics/Path;
    .locals 1

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@2
    return-object v0
.end method

.method public getGesturePath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    #@5
    .line 316
    return-object p1
.end method

.method public getGestureStrokeAngleThreshold()F
    .locals 1

    #@0
    .prologue
    .line 261
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    #@2
    return v0
.end method

.method public getGestureStrokeLengthThreshold()F
    .locals 1

    #@0
    .prologue
    .line 245
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    #@2
    return v0
.end method

.method public getGestureStrokeSquarenessTreshold()F
    .locals 1

    #@0
    .prologue
    .line 253
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    #@2
    return v0
.end method

.method public getGestureStrokeType()I
    .locals 1

    #@0
    .prologue
    .line 237
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    #@2
    return v0
.end method

.method public getGestureStrokeWidth()F
    .locals 1

    #@0
    .prologue
    .line 227
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    #@2
    return v0
.end method

.method public getOrientation()I
    .locals 1

    #@0
    .prologue
    .line 201
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    #@2
    return v0
.end method

.method public getUncertainGestureColor()I
    .locals 1

    #@0
    .prologue
    .line 218
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    #@2
    return v0
.end method

.method public isEventsInterceptionEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 269
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    #@2
    return v0
.end method

.method public isFadeEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 277
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    #@2
    return v0
.end method

.method public isGestureVisible()Z
    .locals 1

    #@0
    .prologue
    .line 320
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    #@2
    return v0
.end method

.method public isGesturing()Z
    .locals 1

    #@0
    .prologue
    .line 379
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    #@2
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 497
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    #@3
    .line 498
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->cancelClearAnimation()V

    #@6
    .line 496
    return-void
.end method

.method public removeAllOnGestureListeners()V
    .locals 1

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 343
    return-void
.end method

.method public removeAllOnGesturePerformedListeners()V
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 363
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    #@8
    .line 361
    return-void
.end method

.method public removeAllOnGesturingListeners()V
    .locals 1

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 374
    return-void
.end method

.method public removeOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/gesture/GestureOverlayView$OnGestureListener;

    #@0
    .prologue
    .line 340
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 339
    return-void
.end method

.method public removeOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 355
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@6
    .line 356
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    if-gtz v0, :cond_0

    #@e
    .line 357
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    #@10
    .line 354
    :cond_0
    return-void
.end method

.method public removeOnGesturingListener(Landroid/gesture/GestureOverlayView$OnGesturingListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/gesture/GestureOverlayView$OnGesturingListener;

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 370
    return-void
.end method

.method public setEventsInterceptionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 273
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    #@2
    .line 272
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0
    .param p1, "fadeEnabled"    # Z

    #@0
    .prologue
    .line 281
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    #@2
    .line 280
    return-void
.end method

.method public setFadeOffset(J)V
    .locals 1
    .param p1, "fadeOffset"    # J

    #@0
    .prologue
    .line 332
    iput-wide p1, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    #@2
    .line 331
    return-void
.end method

.method public setGesture(Landroid/gesture/Gesture;)V
    .locals 9
    .param p1, "gesture"    # Landroid/gesture/Gesture;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/high16 v7, 0x40000000    # 2.0f

    #@3
    .line 289
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 290
    const/4 v2, 0x0

    #@8
    invoke-virtual {p0, v2}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    #@b
    .line 293
    :cond_0
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    #@d
    invoke-direct {p0, v2}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    #@10
    .line 294
    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@12
    .line 296
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    #@14
    invoke-virtual {v2}, Landroid/gesture/Gesture;->toPath()Landroid/graphics/Path;

    #@17
    move-result-object v1

    #@18
    .line 297
    .local v1, "path":Landroid/graphics/Path;
    new-instance v0, Landroid/graphics/RectF;

    #@1a
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@1d
    .line 298
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    #@20
    .line 301
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@22
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    #@25
    .line 302
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    #@27
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #@29
    neg-float v3, v3

    #@2a
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->getWidth()I

    #@2d
    move-result v4

    #@2e
    int-to-float v4, v4

    #@2f
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    #@32
    move-result v5

    #@33
    sub-float/2addr v4, v5

    #@34
    div-float/2addr v4, v7

    #@35
    add-float/2addr v3, v4

    #@36
    .line 303
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #@38
    neg-float v4, v4

    #@39
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->getHeight()I

    #@3c
    move-result v5

    #@3d
    int-to-float v5, v5

    #@3e
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    #@41
    move-result v6

    #@42
    sub-float/2addr v5, v6

    #@43
    div-float/2addr v5, v7

    #@44
    add-float/2addr v4, v5

    #@45
    .line 302
    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    #@48
    .line 305
    iput-boolean v8, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    #@4a
    .line 307
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    #@4d
    .line 288
    return-void
.end method

.method public setGestureColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 209
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    #@2
    .line 208
    return-void
.end method

.method public setGestureStrokeAngleThreshold(F)V
    .locals 0
    .param p1, "gestureStrokeAngleThreshold"    # F

    #@0
    .prologue
    .line 265
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    #@2
    .line 264
    return-void
.end method

.method public setGestureStrokeLengthThreshold(F)V
    .locals 0
    .param p1, "gestureStrokeLengthThreshold"    # F

    #@0
    .prologue
    .line 249
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    #@2
    .line 248
    return-void
.end method

.method public setGestureStrokeSquarenessTreshold(F)V
    .locals 0
    .param p1, "gestureStrokeSquarenessTreshold"    # F

    #@0
    .prologue
    .line 257
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    #@2
    .line 256
    return-void
.end method

.method public setGestureStrokeType(I)V
    .locals 0
    .param p1, "gestureStrokeType"    # I

    #@0
    .prologue
    .line 241
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    #@2
    .line 240
    return-void
.end method

.method public setGestureStrokeWidth(F)V
    .locals 2
    .param p1, "gestureStrokeWidth"    # F

    #@0
    .prologue
    .line 231
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    #@2
    .line 232
    float-to-int v0, p1

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    const/4 v1, 0x1

    #@6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    #@c
    .line 233
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    #@e
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@11
    .line 230
    return-void
.end method

.method public setGestureVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 324
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    #@2
    .line 323
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    #@0
    .prologue
    .line 205
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    #@2
    .line 204
    return-void
.end method

.method public setUncertainGestureColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 213
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    #@2
    .line 212
    return-void
.end method
