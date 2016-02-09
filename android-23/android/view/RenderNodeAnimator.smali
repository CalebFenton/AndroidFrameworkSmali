.class public Landroid/view/RenderNodeAnimator;
.super Landroid/animation/Animator;
.source "RenderNodeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;,
        Landroid/view/RenderNodeAnimator$1;
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0xb

.field public static final LAST_VALUE:I = 0xb

.field public static final PAINT_ALPHA:I = 0x1

.field public static final PAINT_STROKE_WIDTH:I = 0x0

.field public static final ROTATION:I = 0x5

.field public static final ROTATION_X:I = 0x6

.field public static final ROTATION_Y:I = 0x7

.field public static final SCALE_X:I = 0x3

.field public static final SCALE_Y:I = 0x4

.field private static final STATE_DELAYED:I = 0x1

.field private static final STATE_FINISHED:I = 0x3

.field private static final STATE_PREPARE:I = 0x0

.field private static final STATE_RUNNING:I = 0x2

.field public static final TRANSLATION_X:I = 0x0

.field public static final TRANSLATION_Y:I = 0x1

.field public static final TRANSLATION_Z:I = 0x2

.field public static final X:I = 0x8

.field public static final Y:I = 0x9

.field public static final Z:I = 0xa

.field private static sAnimationHelper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;


# instance fields
.field private mFinalValue:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mRenderProperty:I

.field private mStartDelay:J

.field private mStartTime:J

.field private mState:I

.field private mTarget:Landroid/view/RenderNode;

.field private final mUiThreadHandlesDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field private mViewTarget:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Landroid/view/RenderNodeAnimator;J)Z
    .locals 1
    .param p1, "frameTimeMs"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->processDelayed(J)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 67
    new-instance v0, Landroid/view/RenderNodeAnimator$1;

    #@2
    const/16 v1, 0xf

    #@4
    invoke-direct {v0, v1}, Landroid/view/RenderNodeAnimator$1;-><init>(I)V

    #@7
    sput-object v0, Landroid/view/RenderNodeAnimator;->sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    #@9
    .line 428
    new-instance v0, Ljava/lang/ThreadLocal;

    #@b
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@e
    .line 427
    sput-object v0, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    #@10
    .line 37
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "property"    # I
    .param p2, "finalValue"    # F

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 111
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    #@5
    .line 86
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    #@8
    .line 94
    const/4 v0, 0x0

    #@9
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@b
    .line 96
    const-wide/16 v0, 0x12c

    #@d
    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    #@f
    .line 97
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    #@11
    .line 104
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    #@13
    .line 112
    iput p1, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    #@15
    .line 113
    iput p2, p0, Landroid/view/RenderNodeAnimator;->mFinalValue:F

    #@17
    .line 114
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    #@1a
    .line 115
    invoke-static {p1, p2}, Landroid/view/RenderNodeAnimator;->nCreateAnimator(IF)J

    #@1d
    move-result-wide v0

    #@1e
    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    #@21
    .line 111
    return-void
.end method

.method public constructor <init>(IIFF)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 138
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    #@5
    .line 86
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    #@8
    .line 94
    const/4 v0, 0x0

    #@9
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@b
    .line 96
    const-wide/16 v0, 0x12c

    #@d
    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    #@f
    .line 97
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    #@11
    .line 104
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    #@13
    .line 139
    invoke-static {p1, p2, p3, p4}, Landroid/view/RenderNodeAnimator;->nCreateRevealAnimator(IIFF)J

    #@16
    move-result-wide v0

    #@17
    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    #@1a
    .line 140
    const/4 v0, 0x1

    #@1b
    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    #@1d
    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;F)V
    .locals 6
    .param p2, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 118
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    #@6
    .line 86
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    #@9
    .line 94
    iput v2, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@b
    .line 96
    const-wide/16 v0, 0x12c

    #@d
    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    #@f
    .line 97
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    #@11
    .line 104
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    #@13
    .line 120
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    #@16
    move-result-wide v0

    #@17
    .line 119
    invoke-static {v0, v1, p2}, Landroid/view/RenderNodeAnimator;->nCreateCanvasPropertyFloatAnimator(JF)J

    #@1a
    move-result-wide v0

    #@1b
    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    #@1e
    .line 121
    iput-boolean v2, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    #@20
    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;IF)V
    .locals 6
    .param p2, "paintField"    # I
    .param p3, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;IF)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 132
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    #@6
    .line 86
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    #@9
    .line 94
    iput v2, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@b
    .line 96
    const-wide/16 v0, 0x12c

    #@d
    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    #@f
    .line 97
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    #@11
    .line 104
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    #@13
    .line 134
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    #@16
    move-result-wide v0

    #@17
    .line 133
    invoke-static {v0, v1, p2, p3}, Landroid/view/RenderNodeAnimator;->nCreateCanvasPropertyPaintAnimator(JIF)J

    #@1a
    move-result-wide v0

    #@1b
    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    #@1e
    .line 135
    iput-boolean v2, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    #@20
    .line 132
    return-void
.end method

.method private applyInterpolator()V
    .locals 6

    #@0
    .prologue
    .line 162
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    if-nez v4, :cond_0

    #@4
    return-void

    #@5
    .line 165
    :cond_0
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@7
    invoke-static {v4}, Landroid/view/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 166
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@f
    check-cast v4, Lcom/android/internal/view/animation/NativeInterpolatorFactory;

    #@11
    invoke-interface {v4}, Lcom/android/internal/view/animation/NativeInterpolatorFactory;->createNativeInterpolator()J

    #@14
    move-result-wide v2

    #@15
    .line 171
    .local v2, "ni":J
    :goto_0
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@17
    invoke-virtual {v4}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@1a
    move-result-wide v4

    #@1b
    invoke-static {v4, v5, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetInterpolator(JJ)V

    #@1e
    .line 161
    return-void

    #@1f
    .line 168
    .end local v2    # "ni":J
    :cond_1
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@21
    invoke-virtual {v4}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@24
    move-result-wide v4

    #@25
    invoke-static {v4, v5}, Landroid/view/RenderNodeAnimator;->nGetDuration(J)J

    #@28
    move-result-wide v0

    #@29
    .line 169
    .local v0, "duration":J
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2b
    invoke-static {v4, v0, v1}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    #@2e
    move-result-wide v2

    #@2f
    .restart local v2    # "ni":J
    goto :goto_0
.end method

.method private static callOnFinished(Landroid/view/RenderNodeAnimator;)V
    .locals 0
    .param p0, "animator"    # Landroid/view/RenderNodeAnimator;

    #@0
    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    #@3
    .line 482
    return-void
.end method

.method private checkMutable()V
    .locals 2

    #@0
    .prologue
    .line 148
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Animator has already started, cannot change it now!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 151
    :cond_0
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "Animator\'s target has been destroyed (trying to modify an animation after activity destroy?)"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 147
    :cond_1
    return-void
.end method

.method private cloneListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->getListeners()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    .line 395
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v0, :cond_0

    #@6
    .line 396
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    check-cast v0, Ljava/util/ArrayList;

    #@c
    .line 398
    .restart local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    return-object v0
.end method

.method private doStart()V
    .locals 3

    #@0
    .prologue
    .line 202
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    #@2
    const/16 v1, 0xb

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 205
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    #@8
    iget-object v0, v0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #@a
    iget v1, p0, Landroid/view/RenderNodeAnimator;->mFinalValue:F

    #@c
    iput v1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    #@e
    .line 208
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->moveToRunningState()V

    #@11
    .line 210
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 212
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    #@17
    const/4 v1, 0x1

    #@18
    const/4 v2, 0x0

    #@19
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    #@1c
    .line 198
    :cond_1
    return-void
.end method

.method private static getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    .locals 2

    #@0
    .prologue
    .line 419
    sget-object v1, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    #@8
    .line 420
    .local v0, "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    if-nez v0, :cond_0

    #@a
    .line 421
    new-instance v0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    #@c
    .end local v0    # "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    invoke-direct {v0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;-><init>()V

    #@f
    .line 422
    .restart local v0    # "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    sget-object v1, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@14
    .line 424
    :cond_0
    return-object v0
.end method

.method private init(J)V
    .locals 1
    .param p1, "ptr"    # J

    #@0
    .prologue
    .line 144
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    #@5
    iput-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@7
    .line 143
    return-void
.end method

.method static isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z
    .locals 2
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;

    #@0
    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    const-class v1, Lcom/android/internal/view/animation/HasNativeInterpolator;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public static mapViewPropertyToRenderProperty(I)I
    .locals 1
    .param p0, "viewProperty"    # I

    #@0
    .prologue
    .line 108
    sget-object v0, Landroid/view/RenderNodeAnimator;->sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private moveToRunningState()V
    .locals 2

    #@0
    .prologue
    .line 217
    const/4 v0, 0x2

    #@1
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@3
    .line 218
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 219
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@c
    move-result-wide v0

    #@d
    invoke-static {v0, v1}, Landroid/view/RenderNodeAnimator;->nStart(J)V

    #@10
    .line 221
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->notifyStartListeners()V

    #@13
    .line 216
    return-void
.end method

.method private static native nCreateAnimator(IF)J
.end method

.method private static native nCreateCanvasPropertyFloatAnimator(JF)J
.end method

.method private static native nCreateCanvasPropertyPaintAnimator(JIF)J
.end method

.method private static native nCreateRevealAnimator(IIFF)J
.end method

.method private static native nEnd(J)V
.end method

.method private static native nGetDuration(J)J
.end method

.method private static native nSetAllowRunningAsync(JZ)V
.end method

.method private static native nSetDuration(JJ)V
.end method

.method private static native nSetInterpolator(JJ)V
.end method

.method private static native nSetListener(JLandroid/view/RenderNodeAnimator;)V
.end method

.method private static native nSetStartDelay(JJ)V
.end method

.method private static native nSetStartValue(JF)V
.end method

.method private static native nStart(J)V
.end method

.method private notifyStartListeners()V
    .locals 4

    #@0
    .prologue
    .line 225
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    #@3
    move-result-object v1

    #@4
    .line 226
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_0

    #@6
    const/4 v2, 0x0

    #@7
    .line 227
    .local v2, "numListeners":I
    :goto_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    #@a
    .line 228
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    #@10
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    #@13
    .line 227
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_1

    #@16
    .line 226
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v2

    #@1a
    .restart local v2    # "numListeners":I
    goto :goto_0

    #@1b
    .line 224
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private processDelayed(J)Z
    .locals 5
    .param p1, "frameTimeMs"    # J

    #@0
    .prologue
    .line 409
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_1

    #@8
    .line 410
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    #@a
    .line 415
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 411
    :cond_1
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    #@e
    sub-long v0, p1, v0

    #@10
    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    #@12
    cmp-long v0, v0, v2

    #@14
    if-ltz v0, :cond_0

    #@16
    .line 412
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    #@19
    .line 413
    const/4 v0, 0x1

    #@1a
    return v0
.end method

.method private releaseNativePtr()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 386
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 387
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    #@a
    .line 388
    iput-object v1, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@c
    .line 385
    :cond_0
    return-void
.end method

.method private setTarget(Landroid/view/RenderNode;)V
    .locals 2
    .param p1, "node"    # Landroid/view/RenderNode;

    #@0
    .prologue
    .line 294
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    #@3
    .line 295
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Target already set!"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 298
    :cond_0
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@15
    move-result-wide v0

    #@16
    invoke-static {v0, v1, p0}, Landroid/view/RenderNodeAnimator;->nSetListener(JLandroid/view/RenderNodeAnimator;)V

    #@19
    .line 299
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    #@1b
    .line 300
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    #@1d
    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->addAnimator(Landroid/view/RenderNodeAnimator;)V

    #@20
    .line 293
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    #@0
    .prologue
    .line 234
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@2
    if-eqz v3, :cond_3

    #@4
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@6
    const/4 v4, 0x3

    #@7
    if-eq v3, v4, :cond_3

    #@9
    .line 235
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@b
    const/4 v4, 0x1

    #@c
    if-ne v3, v4, :cond_0

    #@e
    .line 236
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    #@15
    .line 237
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->moveToRunningState()V

    #@18
    .line 240
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    #@1b
    move-result-object v1

    #@1c
    .line 241
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_1

    #@1e
    const/4 v2, 0x0

    #@1f
    .line 242
    .local v2, "numListeners":I
    :goto_0
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    #@22
    .line 243
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    #@28
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    #@2b
    .line 242
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 241
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v2

    #@32
    .restart local v2    # "numListeners":I
    goto :goto_0

    #@33
    .line 246
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->end()V

    #@36
    .line 233
    .end local v0    # "i":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "numListeners":I
    :cond_3
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 2

    #@0
    .prologue
    .line 488
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "Cannot clone this animator"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public end()V
    .locals 3

    #@0
    .prologue
    .line 252
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_1

    #@5
    .line 253
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@7
    const/4 v1, 0x2

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 254
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    #@11
    .line 255
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    #@14
    .line 257
    :cond_0
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 258
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@1a
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@1d
    move-result-wide v0

    #@1e
    invoke-static {v0, v1}, Landroid/view/RenderNodeAnimator;->nEnd(J)V

    #@21
    .line 259
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 261
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    #@27
    const/4 v1, 0x1

    #@28
    const/4 v2, 0x0

    #@29
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    #@2c
    .line 251
    :cond_1
    :goto_0
    return-void

    #@2d
    .line 265
    :cond_2
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    #@30
    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    #@0
    .prologue
    .line 336
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    #@2
    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method getNativeAnimator()J
    .locals 2

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    #@0
    .prologue
    .line 320
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    #@2
    return-wide v0
.end method

.method public isRunning()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 341
    iget v1, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@3
    if-eq v1, v0, :cond_0

    #@5
    iget v1, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@7
    const/4 v2, 0x2

    #@8
    if-ne v1, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 346
    iget v1, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method protected onFinished()V
    .locals 5

    #@0
    .prologue
    .line 361
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@2
    if-nez v3, :cond_0

    #@4
    .line 364
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->releaseNativePtr()V

    #@7
    .line 365
    return-void

    #@8
    .line 367
    :cond_0
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@a
    const/4 v4, 0x1

    #@b
    if-ne v3, v4, :cond_1

    #@d
    .line 368
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    #@14
    .line 369
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->notifyStartListeners()V

    #@17
    .line 371
    :cond_1
    const/4 v3, 0x3

    #@18
    iput v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@1a
    .line 373
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    #@1d
    move-result-object v1

    #@1e
    .line 374
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_2

    #@20
    const/4 v2, 0x0

    #@21
    .line 375
    .local v2, "numListeners":I
    :goto_0
    const/4 v0, 0x0

    #@22
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    #@24
    .line 376
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    #@2a
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@2d
    .line 375
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 374
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v2

    #@34
    .restart local v2    # "numListeners":I
    goto :goto_0

    #@35
    .line 382
    .restart local v0    # "i":I
    :cond_3
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->releaseNativePtr()V

    #@38
    .line 360
    return-void
.end method

.method public pause()V
    .locals 1

    #@0
    .prologue
    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public resume()V
    .locals 1

    #@0
    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 2
    .param p1, "mayRunAsync"    # Z

    #@0
    .prologue
    .line 493
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    #@3
    .line 494
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@8
    move-result-wide v0

    #@9
    invoke-static {v0, v1, p1}, Landroid/view/RenderNodeAnimator;->nSetAllowRunningAsync(JZ)V

    #@c
    .line 492
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 324
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setDuration(J)Landroid/view/RenderNodeAnimator;
    .locals 5
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 325
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    #@3
    .line 326
    const-wide/16 v0, 0x0

    #@5
    cmp-long v0, p1, v0

    #@7
    if-gez v0, :cond_0

    #@9
    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "duration must be positive; "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 329
    :cond_0
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    #@25
    .line 330
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@27
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@2a
    move-result-wide v0

    #@2b
    long-to-float v2, p1

    #@2c
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    #@2f
    move-result v3

    #@30
    mul-float/2addr v2, v3

    #@31
    float-to-long v2, v2

    #@32
    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetDuration(JJ)V

    #@35
    .line 331
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    #@0
    .prologue
    .line 351
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    #@3
    .line 352
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@5
    .line 350
    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    #@0
    .prologue
    .line 310
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    #@3
    .line 311
    const-wide/16 v0, 0x0

    #@5
    cmp-long v0, p1, v0

    #@7
    if-gez v0, :cond_0

    #@9
    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "startDelay must be positive; "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 314
    :cond_0
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    #@25
    .line 315
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    #@28
    move-result v0

    #@29
    long-to-float v1, p1

    #@2a
    mul-float/2addr v0, v1

    #@2b
    float-to-long v0, v0

    #@2c
    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    #@2e
    .line 309
    return-void
.end method

.method public setStartValue(F)V
    .locals 2
    .param p1, "startValue"    # F

    #@0
    .prologue
    .line 304
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    #@3
    .line 305
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@8
    move-result-wide v0

    #@9
    invoke-static {v0, v1, p1}, Landroid/view/RenderNodeAnimator;->nSetStartValue(JF)V

    #@c
    .line 303
    return-void
.end method

.method public setTarget(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 286
    instance-of v1, p1, Landroid/view/DisplayListCanvas;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 287
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v2, "Not a GLES20RecordingCanvas"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    :cond_0
    move-object v0, p1

    #@e
    .line 289
    check-cast v0, Landroid/view/DisplayListCanvas;

    #@10
    .line 290
    .local v0, "recordingCanvas":Landroid/view/DisplayListCanvas;
    iget-object v1, v0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    #@12
    invoke-direct {p0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/RenderNode;)V

    #@15
    .line 285
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 281
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    #@2
    .line 282
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    #@4
    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@6
    invoke-direct {p0, v0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/RenderNode;)V

    #@9
    .line 280
    return-void
.end method

.method public start()V
    .locals 4

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Missing target!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 180
    :cond_0
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "Already started!"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 184
    :cond_1
    const/4 v0, 0x1

    #@1b
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    #@1d
    .line 185
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->applyInterpolator()V

    #@20
    .line 187
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@22
    if-nez v0, :cond_2

    #@24
    .line 189
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->cancel()V

    #@27
    .line 175
    :goto_0
    return-void

    #@28
    .line 190
    :cond_2
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    #@2a
    const-wide/16 v2, 0x0

    #@2c
    cmp-long v0, v0, v2

    #@2e
    if-lez v0, :cond_3

    #@30
    iget-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    #@32
    if-eqz v0, :cond_3

    #@34
    .line 194
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->addDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    #@3b
    goto :goto_0

    #@3c
    .line 191
    :cond_3
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@3e
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@41
    move-result-wide v0

    #@42
    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    #@44
    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetStartDelay(JJ)V

    #@47
    .line 192
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    #@4a
    goto :goto_0
.end method
