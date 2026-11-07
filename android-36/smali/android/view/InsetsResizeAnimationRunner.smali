.class public Landroid/view/InsetsResizeAnimationRunner;
.super Ljava/lang/Object;
.source "InsetsResizeAnimationRunner.java"

# interfaces
.implements Landroid/view/InsetsAnimationControlRunner;
.implements Landroid/view/InternalInsetsAnimationController;
.implements Landroid/view/WindowInsetsAnimationControlListener;


# instance fields
.field private final blacklist mAnimation:Landroid/view/WindowInsetsAnimation;

.field private blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mCancelled:Z

.field private final blacklist mController:Landroid/view/InsetsAnimationControlCallbacks;

.field private blacklist mFinished:Z

.field private final blacklist mFromState:Landroid/view/InsetsState;

.field private final blacklist mToState:Landroid/view/InsetsState;

.field private final blacklist mTypes:I


# direct methods
.method public static synthetic blacklist $r8$lambda$ISS11IaXBeR3DU0xwVF986dFNKU(Landroid/view/InsetsResizeAnimationRunner;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsResizeAnimationRunner;->lambda$onReady$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmController(Landroid/view/InsetsResizeAnimationRunner;)Landroid/view/InsetsAnimationControlCallbacks;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFinished(Landroid/view/InsetsResizeAnimationRunner;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;)V
    .registers 22
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "fromState"    # Landroid/view/InsetsState;
    .param p3, "toState"    # Landroid/view/InsetsState;
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "duration"    # J
    .param p7, "types"    # I
    .param p8, "controller"    # Landroid/view/InsetsAnimationControlCallbacks;

    .line 61
    move-object v0, p2

    move-object/from16 v1, p3

    move/from16 v5, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mFromState:Landroid/view/InsetsState;

    .line 63
    iput-object v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mToState:Landroid/view/InsetsState;

    .line 64
    iput v5, p0, Landroid/view/InsetsResizeAnimationRunner;->mTypes:I

    .line 65
    move-object/from16 v2, p8

    iput-object v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    .line 66
    new-instance v3, Landroid/view/WindowInsetsAnimation;

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    invoke-direct {v3, v5, v8, v9, v10}, Landroid/view/WindowInsetsAnimation;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v3, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    .line 67
    iget-object v3, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/WindowInsetsAnimation;->setAlpha(F)V

    .line 68
    const/4 v3, 0x0

    invoke-virtual {p2, p1, v5, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v11

    .line 70
    .local v11, "fromInsets":Landroid/graphics/Insets;
    invoke-virtual {v1, p1, v5, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v12

    .line 72
    .local v12, "toInsets":Landroid/graphics/Insets;
    iget-object v6, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    new-instance v7, Landroid/view/WindowInsetsAnimation$Bounds;

    .line 73
    invoke-static {v11, v12}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v11, v12}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v4

    invoke-direct {v7, v3, v4}, Landroid/view/WindowInsetsAnimation$Bounds;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    .line 72
    move-object v4, p0

    move-object v3, p0

    invoke-interface/range {v2 .. v7}, Landroid/view/InsetsAnimationControlCallbacks;->startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V

    .line 74
    return-void
.end method

.method private synthetic blacklist lambda$onReady$0(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 132
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    .line 133
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-interface {v0, p0}, Landroid/view/InsetsAnimationControlCallbacks;->scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V

    .line 134
    return-void
.end method


# virtual methods
.method public blacklist applyChangeInsets(Landroid/view/InsetsState;)Z
    .registers 6
    .param p1, "outState"    # Landroid/view/InsetsState;

    .line 148
    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    if-eqz v0, :cond_6

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_6
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v0

    .line 152
    .local v0, "fraction":F
    iget-object v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFromState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mToState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsResizeAnimationRunner$2;

    invoke-direct {v3, p0, v0, p1}, Landroid/view/InsetsResizeAnimationRunner$2;-><init>(Landroid/view/InsetsResizeAnimationRunner;FLandroid/view/InsetsState;)V

    invoke-static {v1, v2, v3}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    .line 169
    iget-boolean v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    if-eqz v1, :cond_22

    .line 170
    iget-object v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Landroid/view/InsetsAnimationControlCallbacks;->notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 172
    :cond_22
    iget-boolean v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    return v1
.end method

.method public blacklist cancel()V
    .registers 2

    .line 110
    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    if-eqz v0, :cond_9

    goto :goto_16

    .line 113
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    .line 114
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_15

    .line 115
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 117
    :cond_15
    return-void

    .line 111
    :cond_16
    :goto_16
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 177
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 178
    .local v0, "token":J
    const-wide v2, 0x10800000001L

    iget-boolean v4, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 179
    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 180
    const-wide v2, 0x10900000003L

    const-string v4, "null"

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 181
    const-wide v2, 0x10900000004L

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 182
    iget-object v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v2}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v2

    const-wide v3, 0x10200000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 183
    const-wide v2, 0x10800000006L

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 184
    const-wide v2, 0x10200000007L

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 185
    const-wide v2, 0x10200000008L

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 186
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 187
    return-void
.end method

.method public whitelist finish(Z)V
    .registers 2
    .param p1, "shown"    # Z

    .line 220
    return-void
.end method

.method public blacklist getAnimation()Landroid/view/WindowInsetsAnimation;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    return-object v0
.end method

.method public blacklist getAnimationType()I
    .registers 2

    .line 93
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getControllingTypes()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mTypes:I

    return v0
.end method

.method public whitelist getCurrentAlpha()F
    .registers 2

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCurrentFraction()F
    .registers 2

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCurrentInsets()Landroid/graphics/Insets;
    .registers 2

    .line 201
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getDurationMs()J
    .registers 3

    .line 247
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getHiddenStateInsets()Landroid/graphics/Insets;
    .registers 2

    .line 191
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getInsetsInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getShownStateInsets()Landroid/graphics/Insets;
    .registers 2

    .line 196
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
    .registers 2

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSurfaceParamsApplier()Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;
    .registers 2

    .line 98
    sget-object v0, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->DEFAULT:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    return-object v0
.end method

.method public whitelist getTypes()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mTypes:I

    return v0
.end method

.method public blacklist hasZeroInsetsIme()Z
    .registers 2

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isCancelled()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    return v0
.end method

.method public whitelist isFinished()Z
    .registers 2

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyControlRevoked(I)V
    .registers 2
    .param p1, "types"    # I

    .line 229
    return-void
.end method

.method public whitelist onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .registers 2
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 265
    return-void
.end method

.method public whitelist onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .registers 2
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 261
    return-void
.end method

.method public whitelist onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .registers 6
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;
    .param p2, "types"    # I

    .line 126
    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 127
    return-void

    .line 129
    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_36

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    .line 130
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v1}, Landroid/view/WindowInsetsAnimation;->getDurationMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 131
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsResizeAnimationRunner;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 135
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/InsetsResizeAnimationRunner$1;

    invoke-direct {v1, p0}, Landroid/view/InsetsResizeAnimationRunner$1;-><init>(Landroid/view/InsetsResizeAnimationRunner;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 144
    return-void

    :array_36
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public whitelist setInsetsAndAlpha(Landroid/graphics/Insets;FF)V
    .registers 4
    .param p1, "insets"    # Landroid/graphics/Insets;
    .param p2, "alpha"    # F
    .param p3, "fraction"    # F

    .line 216
    return-void
.end method

.method public blacklist setReadyDispatched(Z)V
    .registers 2
    .param p1, "dispatched"    # Z

    .line 257
    return-void
.end method

.method public blacklist updateLayoutInsetsDuringAnimation(I)V
    .registers 2
    .param p1, "layoutInsetsDuringAnimation"    # I

    .line 270
    return-void
.end method

.method public blacklist updateSurfacePosition(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    return-void
.end method

.method public blacklist willUpdateSurface()Z
    .registers 2

    .line 237
    const/4 v0, 0x0

    return v0
.end method
