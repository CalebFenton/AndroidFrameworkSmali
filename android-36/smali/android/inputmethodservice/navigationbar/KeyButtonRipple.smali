.class final Landroid/inputmethodservice/navigationbar/KeyButtonRipple;
.super Landroid/graphics/drawable/Drawable;
.source "KeyButtonRipple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/navigationbar/KeyButtonRipple$LogInterpolator;,
        Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;,
        Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;
    }
.end annotation


# static fields
.field private static final blacklist ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist ANIMATION_DURATION_FADE:I = 0x1c2

.field private static final blacklist ANIMATION_DURATION_SCALE:I = 0x15e

.field private static final blacklist GLOW_MAX_ALPHA:F = 0.2f

.field private static final blacklist GLOW_MAX_ALPHA_DARK:F = 0.1f

.field private static final blacklist GLOW_MAX_SCALE_FACTOR:F = 1.35f


# instance fields
.field private final blacklist mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private blacklist mBottomProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDark:Z

.field private blacklist mDelayTouchFeedback:Z

.field private blacklist mDrawingHardwareGlow:Z

.field private final blacklist mEnterHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

.field private final blacklist mExitHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

.field private blacklist mGlowAlpha:F

.field private blacklist mGlowScale:F

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mLastDark:Z

.field private blacklist mLeftProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMaxWidth:I

.field private final blacklist mMaxWidthResource:I

.field private blacklist mPaintProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPressed:Z

.field private blacklist mRightProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRipplePaint:Landroid/graphics/Paint;

.field private final blacklist mRunningAnimations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRxProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRyProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportHardware:Z

.field private final blacklist mTargetView:Landroid/view/View;

.field private final blacklist mTmpArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTopProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

.field private blacklist mVisible:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$1kxzO9l4o5ccpNWKzbe8QdbxSkI(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterHardware()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qcwyoeC3PIlniS8FJUu6DOG84HQ(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterSoftware()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPressed(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunningAnimations(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDrawingHardwareGlow(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDrawingHardwareGlow:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVisible(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 49
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;I)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "maxWidthResource"    # I

    .line 93
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    .line 73
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$LogInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$LogInterpolator;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple-IA;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    const-string v1, "exitHardware"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mExitHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    .line 83
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    const-string v1, "enterHardware"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mEnterHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    .line 91
    sget-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    .line 478
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 94
    iput p3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidthResource:I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidth:I

    .line 96
    iput-object p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 97
    return-void
.end method

.method private blacklist drawHardware(Landroid/graphics/RecordingCanvas;)V
    .registers 12
    .param p1, "c"    # Landroid/graphics/RecordingCanvas;

    .line 184
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDrawingHardwareGlow:Z

    if-eqz v0, :cond_61

    .line 185
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    sget-object v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    if-ne v0, v1, :cond_1d

    .line 186
    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    iget-object v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    iget-object v8, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    iget-object v9, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    move-object v2, p1

    .end local p1    # "c":Landroid/graphics/RecordingCanvas;
    .local v2, "c":Landroid/graphics/RecordingCanvas;
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/RecordingCanvas;->drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_62

    .line 189
    .end local v2    # "c":Landroid/graphics/RecordingCanvas;
    .restart local p1    # "c":Landroid/graphics/RecordingCanvas;
    :cond_1d
    move-object v2, p1

    .end local p1    # "c":Landroid/graphics/RecordingCanvas;
    .restart local v2    # "c":Landroid/graphics/RecordingCanvas;
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object p1

    .line 190
    .local p1, "cx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    .line 191
    .local v0, "cy":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 192
    .local v1, "d":I
    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, v1

    mul-float/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v3

    .line 193
    .local v3, "r":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {v2, p1, v0, v3, v4}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_62

    .line 184
    .end local v0    # "cy":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .end local v1    # "d":I
    .end local v2    # "c":Landroid/graphics/RecordingCanvas;
    .end local v3    # "r":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p1, "c":Landroid/graphics/RecordingCanvas;
    :cond_61
    move-object v2, p1

    .line 196
    .end local p1    # "c":Landroid/graphics/RecordingCanvas;
    .restart local v2    # "c":Landroid/graphics/RecordingCanvas;
    :goto_62
    return-void
.end method

.method private blacklist drawSoftware(Landroid/graphics/Canvas;)V
    .registers 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 127
    move-object/from16 v0, p0

    iget v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8d

    .line 128
    invoke-direct {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v7

    .line 129
    .local v7, "p":Landroid/graphics/Paint;
    iget v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 132
    .local v1, "w":F
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v10, v2

    .line 133
    .local v10, "h":F
    cmpl-float v2, v1, v10

    if-lez v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    move v11, v2

    .line 134
    .local v11, "horizontal":Z
    invoke-direct {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    mul-float v12, v2, v3

    .line 135
    .local v12, "diameter":F
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v13, v12, v2

    .line 136
    .local v13, "radius":F
    mul-float v14, v1, v2

    .line 137
    .local v14, "cx":F
    mul-float v15, v10, v2

    .line 138
    .local v15, "cy":F
    if-eqz v11, :cond_45

    move v2, v13

    goto :goto_46

    :cond_45
    move v2, v14

    .line 139
    .local v2, "rx":F
    :goto_46
    if-eqz v11, :cond_4a

    move v3, v15

    goto :goto_4b

    :cond_4a
    move v3, v13

    .line 140
    .local v3, "ry":F
    :goto_4b
    if-eqz v11, :cond_4f

    move v4, v15

    goto :goto_50

    :cond_4f
    move v4, v14

    .line 142
    .local v4, "corner":F
    :goto_50
    iget-object v5, v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    sget-object v6, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    if-ne v5, v6, :cond_72

    .line 143
    move v5, v3

    .end local v3    # "ry":F
    .local v5, "ry":F
    sub-float v3, v14, v2

    move-object v9, v7

    move v7, v4

    .end local v4    # "corner":F
    .local v7, "corner":F
    .local v9, "p":Landroid/graphics/Paint;
    sub-float v4, v15, v5

    move v6, v5

    .end local v5    # "ry":F
    .local v6, "ry":F
    add-float v5, v14, v2

    move v8, v6

    .end local v6    # "ry":F
    .local v8, "ry":F
    add-float v6, v15, v8

    move/from16 v16, v8

    .end local v8    # "ry":F
    .local v16, "ry":F
    move v8, v7

    move/from16 v0, v16

    move/from16 v16, v1

    move v1, v0

    move v0, v2

    move-object/from16 v2, p1

    .end local v2    # "rx":F
    .local v0, "rx":F
    .local v1, "ry":F
    .local v16, "w":F
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .end local v7    # "corner":F
    .local v8, "corner":F
    goto :goto_8d

    .line 145
    .end local v0    # "rx":F
    .end local v8    # "corner":F
    .end local v9    # "p":Landroid/graphics/Paint;
    .end local v16    # "w":F
    .local v1, "w":F
    .restart local v2    # "rx":F
    .restart local v3    # "ry":F
    .restart local v4    # "corner":F
    .local v7, "p":Landroid/graphics/Paint;
    :cond_72
    move/from16 v16, v1

    move v0, v2

    move v1, v3

    move v8, v4

    move-object v9, v7

    .end local v2    # "rx":F
    .end local v3    # "ry":F
    .end local v4    # "corner":F
    .end local v7    # "p":Landroid/graphics/Paint;
    .restart local v0    # "rx":F
    .local v1, "ry":F
    .restart local v8    # "corner":F
    .restart local v9    # "p":Landroid/graphics/Paint;
    .restart local v16    # "w":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 146
    move-object/from16 v2, p1

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 147
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 148
    .local v5, "r":F
    neg-float v3, v5

    neg-float v4, v5

    move v6, v5

    .end local v9    # "p":Landroid/graphics/Paint;
    .restart local v7    # "p":Landroid/graphics/Paint;
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 149
    .end local v7    # "p":Landroid/graphics/Paint;
    .restart local v9    # "p":Landroid/graphics/Paint;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 152
    .end local v0    # "rx":F
    .end local v1    # "ry":F
    .end local v5    # "r":F
    .end local v8    # "corner":F
    .end local v9    # "p":Landroid/graphics/Paint;
    .end local v10    # "h":F
    .end local v11    # "horizontal":Z
    .end local v12    # "diameter":F
    .end local v13    # "radius":F
    .end local v14    # "cx":F
    .end local v15    # "cy":F
    .end local v16    # "w":F
    :cond_8d
    :goto_8d
    return-void
.end method

.method private blacklist endAnimations(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cancel"    # Z

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyButtonRipple.endAnim: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    .line 291
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 292
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 293
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    if-ge v1, v0, :cond_4a

    .line 294
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 295
    .local v2, "a":Landroid/animation/Animator;
    if-eqz p2, :cond_44

    .line 296
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    goto :goto_47

    .line 298
    :cond_44
    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 293
    .end local v2    # "a":Landroid/animation/Animator;
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 301
    .end local v1    # "i":I
    :cond_4a
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 302
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 303
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method private blacklist enterHardware()V
    .registers 10

    .line 410
    const-string v0, "enterHardware"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 411
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    .line 412
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 413
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setExtendStart(Landroid/graphics/CanvasProperty;)V

    .line 414
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendStart()Landroid/graphics/CanvasProperty;

    move-result-object v1

    .line 415
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3faccccd    # 1.35f

    mul-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 416
    .local v0, "startAnim":Landroid/view/RenderNodeAnimator;
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 417
    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 418
    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 419
    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 421
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setExtendEnd(Landroid/graphics/CanvasProperty;)V

    .line 422
    new-instance v3, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendEnd()Landroid/graphics/CanvasProperty;

    move-result-object v6

    .line 423
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    invoke-direct {v3, v6, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 424
    .local v3, "endAnim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v3, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 425
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 426
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 427
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mEnterHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 428
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 430
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c5

    .line 431
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 432
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 433
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 434
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    goto :goto_fc

    .line 436
    :cond_c5
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 437
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 438
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 439
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 442
    :goto_fc
    iput v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    .line 443
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    .line 444
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 445
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 446
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 448
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 449
    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->start()V

    .line 450
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    .line 457
    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz v1, :cond_13b

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    if-nez v1, :cond_13b

    .line 458
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->exitHardware()V

    .line 460
    :cond_13b
    return-void
.end method

.method private blacklist enterSoftware()V
    .registers 4

    .line 324
    const-string v0, "enterSoftware"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 325
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    .line 326
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    .line 327
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3e

    const-string v1, "glowScale"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 329
    .local v0, "scaleAnimator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 330
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 331
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 332
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 333
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz v1, :cond_3c

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    if-nez v1, :cond_3c

    .line 338
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->exitSoftware()V

    .line 340
    :cond_3c
    return-void

    nop

    :array_3e
    .array-data 4
        0x0
        0x3faccccd    # 1.35f
    .end array-data
.end method

.method private blacklist exitHardware()V
    .registers 5

    .line 463
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 464
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 466
    .local v0, "opacityAnim":Landroid/view/RenderNodeAnimator;
    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 467
    sget-object v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 468
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 469
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mExitHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 470
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 472
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 473
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    .line 476
    return-void
.end method

.method private blacklist exitSoftware()V
    .registers 4

    .line 343
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    const-string v0, "glowAlpha"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 344
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    sget-object v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 345
    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 346
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 347
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 348
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    return-void
.end method

.method private blacklist getExtendEnd()Landroid/graphics/CanvasProperty;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    :goto_b
    return-object v0
.end method

.method private blacklist getExtendSize()I
    .registers 2

    .line 401
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_17
    return v0
.end method

.method private blacklist getExtendStart()Landroid/graphics/CanvasProperty;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 381
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    :goto_b
    return-object v0
.end method

.method private blacklist getMaxGlowAlpha()F
    .registers 2

    .line 221
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eqz v0, :cond_8

    const v0, 0x3dcccccd    # 0.1f

    goto :goto_b

    :cond_8
    const v0, 0x3e4ccccd    # 0.2f

    :goto_b
    return v0
.end method

.method private blacklist getRipplePaint()Landroid/graphics/Paint;
    .registers 3

    .line 118
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1e

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 120
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eqz v1, :cond_1a

    const/high16 v1, -0x1000000

    goto :goto_1b

    :cond_1a
    const/4 v1, -0x1

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    :cond_1e
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private blacklist getRippleSize()I
    .registers 3

    .line 405
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 406
    .local v0, "size":I
    :goto_17
    iget v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private blacklist isHorizontal()Z
    .registers 3

    .line 180
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private blacklist setExtendEnd(Landroid/graphics/CanvasProperty;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 389
    .local p1, "prop":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 390
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    goto :goto_b

    .line 392
    :cond_9
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 394
    :goto_b
    return-void
.end method

.method private blacklist setExtendStart(Landroid/graphics/CanvasProperty;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 373
    .local p1, "prop":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 374
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    goto :goto_b

    .line 376
    :cond_9
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 378
    :goto_b
    return-void
.end method

.method private blacklist setPressedHardware(Z)V
    .registers 6
    .param p1, "pressed"    # Z

    .line 352
    if-eqz p1, :cond_30

    .line 353
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz v0, :cond_2c

    .line 354
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 355
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    .line 357
    :cond_24
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    if-eqz v0, :cond_33

    .line 358
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterHardware()V

    goto :goto_33

    .line 361
    :cond_2c
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterHardware()V

    goto :goto_33

    .line 364
    :cond_30
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->exitHardware()V

    .line 366
    :cond_33
    :goto_33
    return-void
.end method

.method private blacklist setPressedSoftware(Z)V
    .registers 6
    .param p1, "pressed"    # Z

    .line 307
    if-eqz p1, :cond_30

    .line 308
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz v0, :cond_2c

    .line 309
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 310
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$$ExternalSyntheticLambda1;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    .line 312
    :cond_24
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    if-eqz v0, :cond_33

    .line 313
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterSoftware()V

    goto :goto_33

    .line 316
    :cond_2c
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterSoftware()V

    goto :goto_33

    .line 319
    :cond_30
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->exitSoftware()V

    .line 321
    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public blacklist abortDelayedRipple()V
    .registers 3

    .line 284
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mSupportHardware:Z

    .line 157
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_11

    .line 158
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->drawHardware(Landroid/graphics/RecordingCanvas;)V

    goto :goto_14

    .line 160
    :cond_11
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->drawSoftware(Landroid/graphics/Canvas;)V

    .line 162
    :goto_14
    return-void
.end method

.method public blacklist getGlowAlpha()F
    .registers 2

    .line 200
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    return v0
.end method

.method public blacklist getGlowScale()F
    .registers 2

    .line 211
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 176
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 3

    .line 254
    const-string v0, "jumpToCurrentState"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 255
    return-void
.end method

.method protected whitelist onStateChange([I)Z
    .registers 6
    .param p1, "state"    # [I

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "pressed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_11

    .line 228
    aget v2, p1, v1

    const v3, 0x10100a7

    if-ne v2, v3, :cond_e

    .line 229
    const/4 v0, 0x1

    .line 230
    goto :goto_11

    .line 227
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 233
    .end local v1    # "i":I
    :cond_11
    :goto_11
    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    if-eq v0, v1, :cond_1c

    .line 234
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setPressed(Z)V

    .line 235
    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    .line 236
    const/4 v1, 0x1

    return v1

    .line 238
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .line 167
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 172
    return-void
.end method

.method public blacklist setDarkIntensity(F)V
    .registers 3
    .param p1, "darkIntensity"    # F

    .line 106
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDark:Z

    .line 107
    return-void
.end method

.method public blacklist setDelayTouchFeedback(Z)V
    .registers 2
    .param p1, "delay"    # Z

    .line 110
    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    .line 111
    return-void
.end method

.method public blacklist setGlowAlpha(F)V
    .registers 2
    .param p1, "x"    # F

    .line 205
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    .line 206
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    .line 207
    return-void
.end method

.method public blacklist setGlowScale(F)V
    .registers 2
    .param p1, "x"    # F

    .line 216
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    .line 217
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    .line 218
    return-void
.end method

.method public blacklist setPressed(Z)V
    .registers 4
    .param p1, "pressed"    # Z

    .line 268
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDark:Z

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eq v0, v1, :cond_f

    if-eqz p1, :cond_f

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 270
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDark:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLastDark:Z

    .line 272
    :cond_f
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_17

    .line 273
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setPressedHardware(Z)V

    goto :goto_1a

    .line 275
    :cond_17
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setPressedSoftware(Z)V

    .line 277
    :goto_1a
    return-void
.end method

.method public blacklist setType(Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;)V
    .registers 2
    .param p1, "type"    # Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    .line 114
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    .line 115
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 244
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 245
    .local v0, "changed":Z
    if-eqz v0, :cond_9

    .line 247
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->jumpToCurrentState()V

    .line 249
    :cond_9
    return v0
.end method

.method public blacklist updateResources()V
    .registers 3

    .line 100
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidthResource:I

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidth:I

    .line 102
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    .line 103
    return-void
.end method
