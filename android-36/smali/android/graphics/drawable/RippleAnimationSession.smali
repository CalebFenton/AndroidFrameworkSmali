.class public final Landroid/graphics/drawable/RippleAnimationSession;
.super Ljava/lang/Object;
.source "RippleAnimationSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;,
        Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;
    }
.end annotation


# static fields
.field private static final blacklist ENTER_ANIM_DURATION:I = 0x1c2

.field private static final blacklist EXIT_ANIM_DURATION:I = 0x177

.field private static final blacklist FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static final blacklist LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final blacklist MAX_NOISE_PHASE:J = 0x20L

.field private static final blacklist NOISE_ANIMATION_DURATION:J = 0x1b58L

.field private static final blacklist TAG:Ljava/lang/String; = "RippleAnimationSession"


# instance fields
.field private blacklist mCanvasProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mCurrentAnimation:Landroid/animation/Animator;

.field private blacklist mForceSoftware:Z

.field private blacklist mLoopAnimation:Landroid/animation/Animator;

.field private blacklist mOnSessionEnd:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/RippleAnimationSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnUpdate:Ljava/lang/Runnable;

.field private final blacklist mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<",
            "Ljava/lang/Float;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStartTime:J


# direct methods
.method public static synthetic blacklist $r8$lambda$45ISwzy9UaDLCMKN2lRX9HrWfco(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleAnimationSession;->lambda$enterSoftware$2(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AFbrh2dr8eiwqrYhkdsSm4e5xjI(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleAnimationSession;->lambda$enterSoftware$1(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Jo_W-6U8q1-HfPXsC57ozDg6TSw(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleAnimationSession;->lambda$exitSoftware$0(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentAnimation(Landroid/graphics/drawable/RippleAnimationSession;)Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLoopAnimation(Landroid/graphics/drawable/RippleAnimationSession;)Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mLoopAnimation:Landroid/animation/Animator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnSessionEnd(Landroid/graphics/drawable/RippleAnimationSession;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mOnSessionEnd:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentAnimation(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/Animator;)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLoopAnimation(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/Animator;)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mLoopAnimation:Landroid/animation/Animator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAnimationEnd(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleAnimationSession;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 46
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleAnimationSession;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/graphics/drawable/RippleAnimationSession;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;Z)V
    .registers 3
    .param p2, "forceSoftware"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<",
            "Ljava/lang/Float;",
            "Landroid/graphics/Paint;",
            ">;Z)V"
        }
    .end annotation

    .line 59
    .local p1, "properties":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Ljava/lang/Float;Landroid/graphics/Paint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 61
    iput-boolean p2, p0, Landroid/graphics/drawable/RippleAnimationSession;->mForceSoftware:Z

    .line 62
    return-void
.end method

.method private blacklist computeDelay()J
    .registers 7

    .line 137
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/drawable/RippleAnimationSession;->mStartTime:J

    sub-long/2addr v0, v2

    .line 138
    .local v0, "timePassed":J
    const-wide/16 v2, 0x1c2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private blacklist enterHardware(Landroid/graphics/RecordingCanvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 177
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleAnimationSession;->getCanvasProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v0

    .line 178
    .local v0, "props":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;>;"
    new-instance v1, Landroid/graphics/animation/RenderNodeAnimator;

    .line 179
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getProgress()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/CanvasProperty;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 180
    .local v1, "expand":Landroid/graphics/animation/RenderNodeAnimator;
    invoke-virtual {v1, p1}, Landroid/graphics/animation/RenderNodeAnimator;->setTarget(Landroid/graphics/RecordingCanvas;)V

    .line 181
    new-instance v2, Landroid/graphics/animation/RenderNodeAnimator;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getNoisePhase()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/CanvasProperty;

    iget-wide v4, p0, Landroid/graphics/drawable/RippleAnimationSession;->mStartTime:J

    const-wide/16 v6, 0x20

    add-long/2addr v4, v6

    long-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 183
    .local v2, "loop":Landroid/graphics/animation/RenderNodeAnimator;
    invoke-virtual {v2, p1}, Landroid/graphics/animation/RenderNodeAnimator;->setTarget(Landroid/graphics/RecordingCanvas;)V

    .line 184
    invoke-direct {p0, v1, v2}, Landroid/graphics/drawable/RippleAnimationSession;->startAnimation(Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 185
    iput-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    .line 186
    return-void
.end method

.method private blacklist enterSoftware()V
    .registers 8

    .line 208
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_36

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 209
    .local v1, "expand":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 213
    iget-wide v2, p0, Landroid/graphics/drawable/RippleAnimationSession;->mStartTime:J

    long-to-float v2, v2

    iget-wide v3, p0, Landroid/graphics/drawable/RippleAnimationSession;->mStartTime:J

    const-wide/16 v5, 0x20

    add-long/2addr v3, v5

    long-to-float v3, v3

    new-array v0, v0, [F

    const/4 v4, 0x0

    aput v2, v0, v4

    const/4 v2, 0x1

    aput v3, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 214
    .local v0, "loop":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/RippleAnimationSession;->startAnimation(Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 219
    iput-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    .line 220
    return-void

    nop

    :array_36
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private blacklist exitHardware(Landroid/graphics/RecordingCanvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 152
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleAnimationSession;->getCanvasProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v0

    .line 153
    .local v0, "props":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;>;"
    new-instance v1, Landroid/graphics/animation/RenderNodeAnimator;

    .line 154
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getProgress()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/CanvasProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 155
    .local v1, "exit":Landroid/graphics/animation/RenderNodeAnimator;
    const-wide/16 v2, 0x177

    invoke-virtual {v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 156
    new-instance v2, Landroid/graphics/drawable/RippleAnimationSession$2;

    invoke-direct {v2, p0, p0, v1}, Landroid/graphics/drawable/RippleAnimationSession$2;-><init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/graphics/drawable/RippleAnimationSession;Landroid/graphics/animation/RenderNodeAnimator;)V

    invoke-virtual {v1, v2}, Landroid/graphics/animation/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 166
    invoke-virtual {v1, p1}, Landroid/graphics/animation/RenderNodeAnimator;->setTarget(Landroid/graphics/RecordingCanvas;)V

    .line 167
    sget-object v2, Landroid/graphics/drawable/RippleAnimationSession;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/graphics/animation/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 169
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->computeDelay()J

    move-result-wide v2

    .line 170
    .local v2, "delay":J
    invoke-virtual {v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setStartDelay(J)V

    .line 171
    invoke-virtual {v1}, Landroid/graphics/animation/RenderNodeAnimator;->start()V

    .line 172
    iput-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    .line 173
    return-void
.end method

.method private blacklist exitSoftware()V
    .registers 4

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_32

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 115
    .local v0, "expand":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->computeDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 117
    new-instance v1, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 121
    new-instance v1, Landroid/graphics/drawable/RippleAnimationSession$1;

    invoke-direct {v1, p0, p0, v0}, Landroid/graphics/drawable/RippleAnimationSession$1;-><init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 131
    sget-object v1, Landroid/graphics/drawable/RippleAnimationSession;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 133
    iput-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    .line 134
    return-void

    nop

    :array_32
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic blacklist lambda$enterSoftware$1(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "expand"    # Landroid/animation/ValueAnimator;
    .param p2, "updatedAnimation"    # Landroid/animation/ValueAnimator;

    .line 210
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->notifyUpdate()V

    .line 211
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleShader;->setProgress(F)V

    .line 212
    return-void
.end method

.method private synthetic blacklist lambda$enterSoftware$2(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "loop"    # Landroid/animation/ValueAnimator;
    .param p2, "updatedAnimation"    # Landroid/animation/ValueAnimator;

    .line 215
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->notifyUpdate()V

    .line 216
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleShader;->setNoisePhase(F)V

    .line 217
    return-void
.end method

.method private synthetic blacklist lambda$exitSoftware$0(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "expand"    # Landroid/animation/ValueAnimator;
    .param p2, "updatedAnimation"    # Landroid/animation/ValueAnimator;

    .line 118
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->notifyUpdate()V

    .line 119
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleShader;->setProgress(F)V

    .line 120
    return-void
.end method

.method private blacklist notifyUpdate()V
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mOnUpdate:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mOnUpdate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 143
    :cond_9
    return-void
.end method

.method private blacklist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 91
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->notifyUpdate()V

    .line 92
    return-void
.end method

.method private blacklist startAnimation(Landroid/animation/Animator;Landroid/animation/Animator;)V
    .registers 5
    .param p1, "expand"    # Landroid/animation/Animator;
    .param p2, "loop"    # Landroid/animation/Animator;

    .line 189
    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 190
    new-instance v0, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;-><init>(Landroid/graphics/drawable/RippleAnimationSession;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    sget-object v0, Landroid/graphics/drawable/RippleAnimationSession;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 193
    const-wide/16 v0, 0x1b58

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 194
    new-instance v0, Landroid/graphics/drawable/RippleAnimationSession$3;

    invoke-direct {v0, p0, p0}, Landroid/graphics/drawable/RippleAnimationSession$3;-><init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/graphics/drawable/RippleAnimationSession;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 201
    sget-object v0, Landroid/graphics/drawable/RippleAnimationSession;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 202
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    .line 203
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mLoopAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mLoopAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 204
    :cond_33
    iput-object p2, p0, Landroid/graphics/drawable/RippleAnimationSession;->mLoopAnimation:Landroid/animation/Animator;

    .line 205
    return-void
.end method

.method private blacklist useRTAnimations(Landroid/graphics/Canvas;)Z
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 106
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mForceSoftware:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 107
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    .line 108
    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    .line 109
    .local v0, "hwCanvas":Landroid/graphics/RecordingCanvas;
    iget-object v2, v0, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    if-eqz v2, :cond_1f

    iget-object v2, v0, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->isAttached()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_1f

    .line 110
    :cond_1d
    const/4 v1, 0x1

    return v1

    .line 109
    :cond_1f
    :goto_1f
    return v1
.end method


# virtual methods
.method blacklist end()V
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 82
    :cond_9
    return-void
.end method

.method blacklist enter(Landroid/graphics/Canvas;)Landroid/graphics/drawable/RippleAnimationSession;
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 69
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mStartTime:J

    .line 70
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleAnimationSession;->useRTAnimations(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 71
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleAnimationSession;->enterHardware(Landroid/graphics/RecordingCanvas;)V

    goto :goto_16

    .line 73
    :cond_13
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->enterSoftware()V

    .line 75
    :goto_16
    return-object p0
.end method

.method blacklist exit(Landroid/graphics/Canvas;)Landroid/graphics/drawable/RippleAnimationSession;
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 85
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleAnimationSession;->useRTAnimations(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleAnimationSession;->exitHardware(Landroid/graphics/RecordingCanvas;)V

    goto :goto_10

    .line 86
    :cond_d
    invoke-direct {p0}, Landroid/graphics/drawable/RippleAnimationSession;->exitSoftware()V

    .line 87
    :goto_10
    return-object p0
.end method

.method blacklist getCanvasProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;>;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCanvasProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    if-nez v0, :cond_73

    .line 238
    new-instance v1, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 239
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 240
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getY()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v3

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 241
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getMaxRadius()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 242
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getNoisePhase()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v5

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 243
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getPaint()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v6

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 244
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getProgress()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v7

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 245
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getColor()I

    move-result v8

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 246
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILandroid/graphics/drawable/RippleShader;)V

    iput-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCanvasProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 248
    :cond_73
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCanvasProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    return-object v0
.end method

.method blacklist getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<",
            "Ljava/lang/Float;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    return-object v0
.end method

.method blacklist isForceSoftware()Z
    .registers 2

    .line 65
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mForceSoftware:Z

    return v0
.end method

.method blacklist setForceSoftwareAnimation(Z)Landroid/graphics/drawable/RippleAnimationSession;
    .registers 2
    .param p1, "forceSw"    # Z

    .line 146
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mForceSoftware:Z

    .line 147
    return-object p0
.end method

.method blacklist setOnAnimationUpdated(Ljava/lang/Runnable;)Landroid/graphics/drawable/RippleAnimationSession;
    .registers 2
    .param p1, "run"    # Ljava/lang/Runnable;

    .line 101
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mOnUpdate:Ljava/lang/Runnable;

    .line 102
    return-object p0
.end method

.method blacklist setOnSessionEnd(Ljava/util/function/Consumer;)Landroid/graphics/drawable/RippleAnimationSession;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/RippleAnimationSession;",
            ">;)",
            "Landroid/graphics/drawable/RippleAnimationSession;"
        }
    .end annotation

    .line 96
    .local p1, "onSessionEnd":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/drawable/RippleAnimationSession;>;"
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession;->mOnSessionEnd:Ljava/util/function/Consumer;

    .line 97
    return-object p0
.end method

.method blacklist setRadius(F)V
    .registers 4
    .param p1, "radius"    # F

    .line 223
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->setRadius(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleShader;->setRadius(F)V

    .line 225
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCanvasProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    if-eqz v0, :cond_28

    .line 226
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCanvasProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->setRadius(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession;->mCanvasProperties:Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleShader;->setRadius(F)V

    .line 229
    :cond_28
    return-void
.end method
