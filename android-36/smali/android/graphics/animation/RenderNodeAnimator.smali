.class public Landroid/graphics/animation/RenderNodeAnimator;
.super Landroid/animation/Animator;
.source "RenderNodeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;,
        Landroid/graphics/animation/RenderNodeAnimator$ViewListener;
    }
.end annotation


# static fields
.field public static final blacklist ALPHA:I = 0xb

.field public static final blacklist LAST_VALUE:I = 0xb

.field public static final blacklist PAINT_ALPHA:I = 0x1

.field public static final blacklist PAINT_STROKE_WIDTH:I = 0x0

.field public static final blacklist ROTATION:I = 0x5

.field public static final blacklist ROTATION_X:I = 0x6

.field public static final blacklist ROTATION_Y:I = 0x7

.field public static final blacklist SCALE_X:I = 0x3

.field public static final blacklist SCALE_Y:I = 0x4

.field private static final blacklist STATE_DELAYED:I = 0x1

.field private static final blacklist STATE_FINISHED:I = 0x3

.field private static final blacklist STATE_PREPARE:I = 0x0

.field private static final blacklist STATE_RUNNING:I = 0x2

.field public static final blacklist TRANSLATION_X:I = 0x0

.field public static final blacklist TRANSLATION_Y:I = 0x1

.field public static final blacklist TRANSLATION_Z:I = 0x2

.field public static final blacklist X:I = 0x8

.field public static final blacklist Y:I = 0x9

.field public static final blacklist Z:I = 0xa

.field private static blacklist sAnimationHelper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFinalValue:F

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mInterpolator:Landroid/animation/TimeInterpolator;

.field private blacklist mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private blacklist mRenderProperty:I

.field private blacklist mStartDelay:J

.field private blacklist mStartTime:J

.field private blacklist mState:I

.field private blacklist mTarget:Landroid/graphics/RenderNode;

.field private final blacklist mUiThreadHandlesDelay:Z

.field private blacklist mUnscaledDuration:J

.field private blacklist mUnscaledStartDelay:J

.field private blacklist mViewListener:Landroid/graphics/animation/RenderNodeAnimator$ViewListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mprocessDelayed(Landroid/graphics/animation/RenderNodeAnimator;J)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/graphics/animation/RenderNodeAnimator;->processDelayed(J)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 421
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/graphics/animation/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor blacklist <init>(IF)V
    .registers 5
    .param p1, "property"    # I
    .param p2, "finalValue"    # F

    .line 100
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mRenderProperty:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    .line 78
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 86
    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    .line 101
    iput p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mRenderProperty:I

    .line 102
    iput p2, p0, Landroid/graphics/animation/RenderNodeAnimator;->mFinalValue:F

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 104
    invoke-static {p1, p2}, Landroid/graphics/animation/RenderNodeAnimator;->nCreateAnimator(IF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->init(J)V

    .line 105
    return-void
.end method

.method public constructor blacklist <init>(IIFF)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .line 127
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mRenderProperty:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    .line 78
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 86
    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    .line 128
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/animation/RenderNodeAnimator;->nCreateRevealAnimator(IIFF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->init(J)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 130
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/CanvasProperty;F)V
    .registers 6
    .param p2, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 107
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mRenderProperty:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    .line 78
    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    .line 79
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 86
    iput-wide v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    .line 108
    nop

    .line 109
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v1

    .line 108
    invoke-static {v1, v2, p2}, Landroid/graphics/animation/RenderNodeAnimator;->nCreateCanvasPropertyFloatAnimator(JF)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/graphics/animation/RenderNodeAnimator;->init(J)V

    .line 110
    iput-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 111
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/CanvasProperty;IF)V
    .registers 7
    .param p2, "paintField"    # I
    .param p3, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;IF)V"
        }
    .end annotation

    .line 121
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mRenderProperty:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    .line 78
    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    .line 79
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 86
    iput-wide v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    .line 122
    nop

    .line 123
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v1

    .line 122
    invoke-static {v1, v2, p2, p3}, Landroid/graphics/animation/RenderNodeAnimator;->nCreateCanvasPropertyPaintAnimator(JIF)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/graphics/animation/RenderNodeAnimator;->init(J)V

    .line 124
    iput-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 125
    return-void
.end method

.method private blacklist applyInterpolator()V
    .registers 5

    .line 151
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_9

    goto :goto_35

    .line 154
    :cond_9
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0}, Landroid/graphics/animation/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 155
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    check-cast v0, Landroid/graphics/animation/NativeInterpolator;

    invoke-interface {v0}, Landroid/graphics/animation/NativeInterpolator;->createNativeInterpolator()J

    move-result-wide v0

    .local v0, "ni":J
    goto :goto_2b

    .line 157
    .end local v0    # "ni":J
    :cond_1a
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->nGetDuration(J)J

    move-result-wide v0

    .line 158
    .local v0, "duration":J
    iget-object v2, p0, Landroid/graphics/animation/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v0, v1}, Landroid/graphics/animation/FallbackLUTInterpolator;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v2

    move-wide v0, v2

    .line 160
    .local v0, "ni":J
    :goto_2b
    iget-object v2, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->nSetInterpolator(JJ)V

    .line 161
    return-void

    .line 151
    .end local v0    # "ni":J
    :cond_35
    :goto_35
    return-void
.end method

.method private static blacklist callOnFinished(Landroid/graphics/animation/RenderNodeAnimator;)V
    .registers 5
    .param p0, "animator"    # Landroid/graphics/animation/RenderNodeAnimator;

    .line 477
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 478
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/graphics/animation/RenderNodeAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/graphics/animation/RenderNodeAnimator$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/animation/RenderNodeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 480
    :cond_12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/graphics/animation/RenderNodeAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/graphics/animation/RenderNodeAnimator$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/animation/RenderNodeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    :goto_28
    return-void
.end method

.method private blacklist checkMutable()V
    .registers 3

    .line 137
    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    if-nez v0, :cond_11

    .line 140
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_9

    .line 144
    return-void

    .line 141
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator\'s target has been destroyed (trying to modify an animation after activity destroy?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator has already started, cannot change it now!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist cloneListeners()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Landroid/graphics/animation/RenderNodeAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 389
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v0, :cond_d

    .line 390
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 392
    :cond_d
    return-object v0
.end method

.method private blacklist doStart()V
    .registers 3

    .line 194
    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mRenderProperty:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mViewListener:Landroid/graphics/animation/RenderNodeAnimator$ViewListener;

    if-eqz v0, :cond_11

    .line 195
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mViewListener:Landroid/graphics/animation/RenderNodeAnimator$ViewListener;

    iget v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mFinalValue:F

    invoke-interface {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator$ViewListener;->onAlphaAnimationStart(F)V

    .line 198
    :cond_11
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->moveToRunningState()V

    .line 200
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mViewListener:Landroid/graphics/animation/RenderNodeAnimator$ViewListener;

    if-eqz v0, :cond_1e

    .line 202
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mViewListener:Landroid/graphics/animation/RenderNodeAnimator$ViewListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator$ViewListener;->invalidateParent(Z)V

    .line 204
    :cond_1e
    return-void
.end method

.method private static blacklist getHelper()Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;
    .registers 2

    .line 413
    sget-object v0, Landroid/graphics/animation/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;

    .line 414
    .local v0, "helper":Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;
    if-nez v0, :cond_15

    .line 415
    new-instance v1, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;

    invoke-direct {v1}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;-><init>()V

    move-object v0, v1

    .line 416
    sget-object v1, Landroid/graphics/animation/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 418
    :cond_15
    return-object v0
.end method

.method private blacklist init(J)V
    .registers 4
    .param p1, "ptr"    # J

    .line 133
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 134
    return-void
.end method

.method static blacklist isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z
    .registers 3
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 147
    invoke-interface {p0}, Landroid/animation/TimeInterpolator;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/animation/HasNativeInterpolator;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private blacklist moveToRunningState()V
    .registers 3

    .line 207
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    .line 208
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_10

    .line 209
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->nStart(J)V

    .line 211
    :cond_10
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->notifyStartListeners()V

    .line 212
    return-void
.end method

.method private static native blacklist nCreateAnimator(IF)J
.end method

.method private static native blacklist nCreateCanvasPropertyFloatAnimator(JF)J
.end method

.method private static native blacklist nCreateCanvasPropertyPaintAnimator(JIF)J
.end method

.method private static native blacklist nCreateRevealAnimator(IIFF)J
.end method

.method private static native blacklist nEnd(J)V
.end method

.method private static native blacklist nGetDuration(J)J
.end method

.method private static native blacklist nSetAllowRunningAsync(JZ)V
.end method

.method private static native blacklist nSetDuration(JJ)V
.end method

.method private static native blacklist nSetInterpolator(JJ)V
.end method

.method private static native blacklist nSetListener(JLandroid/graphics/animation/RenderNodeAnimator;)V
.end method

.method private static native blacklist nSetStartDelay(JJ)V
.end method

.method private static native blacklist nSetStartValue(JF)V
.end method

.method private static native blacklist nStart(J)V
.end method

.method private blacklist notifyStartListeners()V
    .registers 5

    .line 215
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 216
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 217
    .local v1, "numListeners":I
    :goto_c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_1b

    .line 218
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 220
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist processDelayed(J)Z
    .registers 7
    .param p1, "frameTimeMs"    # J

    .line 403
    iget-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 404
    iput-wide p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartTime:J

    goto :goto_1a

    .line 405
    :cond_b
    iget-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartTime:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    .line 406
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->doStart()V

    .line 407
    const/4 v0, 0x1

    return v0

    .line 409
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist releaseNativePtr()V
    .registers 2

    .line 380
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_c

    .line 381
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 384
    :cond_c
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 5

    .line 224
    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_36

    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_36

    .line 225
    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 226
    invoke-static {}, Landroid/graphics/animation/RenderNodeAnimator;->getHelper()Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/graphics/animation/RenderNodeAnimator;)V

    .line 227
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->moveToRunningState()V

    .line 230
    :cond_18
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 231
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v0, :cond_20

    const/4 v1, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 232
    .local v1, "numListeners":I
    :goto_24
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v1, :cond_33

    .line 233
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 236
    .end local v2    # "i":I
    :cond_33
    invoke-virtual {p0}, Landroid/graphics/animation/RenderNodeAnimator;->end()V

    .line 238
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v1    # "numListeners":I
    :cond_36
    return-void
.end method

.method public whitelist clone()Landroid/animation/Animator;
    .registers 3

    .line 486
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot clone this animator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/graphics/animation/RenderNodeAnimator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist end()V
    .registers 3

    .line 242
    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2f

    .line 243
    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_14

    .line 244
    invoke-static {}, Landroid/graphics/animation/RenderNodeAnimator;->getHelper()Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/graphics/animation/RenderNodeAnimator;)V

    .line 245
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->doStart()V

    .line 247
    :cond_14
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_2c

    .line 248
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->nEnd(J)V

    .line 249
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mViewListener:Landroid/graphics/animation/RenderNodeAnimator$ViewListener;

    if-eqz v0, :cond_2f

    .line 251
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mViewListener:Landroid/graphics/animation/RenderNodeAnimator$ViewListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator$ViewListener;->invalidateParent(Z)V

    goto :goto_2f

    .line 255
    :cond_2c
    invoke-virtual {p0}, Landroid/graphics/animation/RenderNodeAnimator;->onFinished()V

    .line 258
    :cond_2f
    :goto_2f
    return-void
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 325
    iget-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    return-wide v0
.end method

.method public whitelist getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 351
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public blacklist getNativeAnimator()J
    .registers 3

    .line 396
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getStartDelay()J
    .registers 3

    .line 309
    iget-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    return-wide v0
.end method

.method public whitelist getTotalDuration()J
    .registers 5

    .line 330
    iget-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    iget-wide v2, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist isRunning()Z
    .registers 4

    .line 335
    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return v1
.end method

.method public whitelist isStarted()Z
    .registers 2

    .line 340
    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected blacklist onFinished()V
    .registers 5

    .line 355
    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    if-nez v0, :cond_8

    .line 358
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->releaseNativePtr()V

    .line 359
    return-void

    .line 361
    :cond_8
    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 362
    invoke-static {}, Landroid/graphics/animation/RenderNodeAnimator;->getHelper()Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/graphics/animation/RenderNodeAnimator;)V

    .line 363
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->notifyStartListeners()V

    .line 365
    :cond_17
    const/4 v0, 0x3

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    .line 367
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 368
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v0, :cond_22

    const/4 v1, 0x0

    goto :goto_26

    :cond_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 369
    .local v1, "numListeners":I
    :goto_26
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    if-ge v2, v1, :cond_35

    .line 370
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 376
    .end local v2    # "i":I
    :cond_35
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->releaseNativePtr()V

    .line 377
    return-void
.end method

.method public whitelist pause()V
    .registers 2

    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist resume()V
    .registers 2

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist setAllowRunningAsynchronously(Z)V
    .registers 4
    .param p1, "mayRunAsync"    # Z

    .line 491
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->checkMutable()V

    .line 492
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/animation/RenderNodeAnimator;->nSetAllowRunningAsync(JZ)V

    .line 493
    return-void
.end method

.method public bridge synthetic whitelist setDuration(J)Landroid/animation/Animator;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;
    .registers 7
    .param p1, "duration"    # J

    .line 314
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->checkMutable()V

    .line 315
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1c

    .line 318
    iput-wide p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    .line 319
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    long-to-float v2, p1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->nSetDuration(JJ)V

    .line 320
    return-object p0

    .line 316
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 345
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->checkMutable()V

    .line 346
    iput-object p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 347
    return-void
.end method

.method public whitelist setStartDelay(J)V
    .registers 6
    .param p1, "startDelay"    # J

    .line 299
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->checkMutable()V

    .line 300
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_15

    .line 303
    iput-wide p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 304
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    long-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    .line 305
    return-void

    .line 301
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDelay must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setStartValue(F)V
    .registers 4
    .param p1, "startValue"    # F

    .line 293
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->checkMutable()V

    .line 294
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/animation/RenderNodeAnimator;->nSetStartValue(JF)V

    .line 295
    return-void
.end method

.method public final blacklist setTarget(Landroid/graphics/RecordingCanvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 277
    iget-object v0, p1, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, v0}, Landroid/graphics/animation/RenderNodeAnimator;->setTarget(Landroid/graphics/RenderNode;)V

    .line 278
    return-void
.end method

.method protected blacklist setTarget(Landroid/graphics/RenderNode;)V
    .registers 4
    .param p1, "node"    # Landroid/graphics/RenderNode;

    .line 282
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->checkMutable()V

    .line 283
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mTarget:Landroid/graphics/RenderNode;

    if-nez v0, :cond_18

    .line 286
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroid/graphics/animation/RenderNodeAnimator;->nSetListener(JLandroid/graphics/animation/RenderNodeAnimator;)V

    .line 287
    iput-object p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mTarget:Landroid/graphics/RenderNode;

    .line 288
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mTarget:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p0}, Landroid/graphics/RenderNode;->addAnimator(Landroid/graphics/animation/RenderNodeAnimator;)V

    .line 289
    return-void

    .line 284
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setViewListener(Landroid/graphics/animation/RenderNodeAnimator$ViewListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/graphics/animation/RenderNodeAnimator$ViewListener;

    .line 272
    iput-object p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mViewListener:Landroid/graphics/animation/RenderNodeAnimator$ViewListener;

    .line 273
    return-void
.end method

.method public whitelist start()V
    .registers 5

    .line 165
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mTarget:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_4d

    .line 169
    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    if-nez v0, :cond_45

    .line 173
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    .line 174
    iget-object v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_16

    .line 175
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mHandler:Landroid/os/Handler;

    .line 177
    :cond_16
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->applyInterpolator()V

    .line 179
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_21

    .line 181
    invoke-virtual {p0}, Landroid/graphics/animation/RenderNodeAnimator;->cancel()V

    goto :goto_44

    .line 182
    :cond_21
    iget-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_36

    iget-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    if-nez v0, :cond_2e

    goto :goto_36

    .line 186
    :cond_2e
    invoke-static {}, Landroid/graphics/animation/RenderNodeAnimator;->getHelper()Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->addDelayedAnimation(Landroid/graphics/animation/RenderNodeAnimator;)V

    goto :goto_44

    .line 183
    :cond_36
    :goto_36
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->nSetStartDelay(JJ)V

    .line 184
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->doStart()V

    .line 188
    :goto_44
    return-void

    .line 170
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing target!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
