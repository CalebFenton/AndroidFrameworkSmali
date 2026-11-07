.class public Landroid/view/InsetsController;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;
.implements Landroid/view/InsetsAnimationControlCallbacks;
.implements Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsController$Host;,
        Landroid/view/InsetsController$RunningAnimation;,
        Landroid/view/InsetsController$PendingControlRequest;,
        Landroid/view/InsetsController$InternalAnimationControlListener;,
        Landroid/view/InsetsController$AnimationType;,
        Landroid/view/InsetsController$LayoutInsetsDuringAnimation;
    }
.end annotation


# static fields
.field private static final blacklist ANIMATION_DELAY_DIM_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_IN_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_OUT_MS:I = 0x5dc

.field private static final blacklist ANIMATION_DURATION_MOVE_IN_MS:I = 0x113

.field private static final blacklist ANIMATION_DURATION_MOVE_OUT_MS:I = 0x154

.field public static final blacklist ANIMATION_DURATION_RESIZE:I = 0x12c

.field static final blacklist ANIMATION_DURATION_SYNC_IME_MS:I = 0x11d

.field static final blacklist ANIMATION_DURATION_UNSYNC_IME_MS:I = 0xc8

.field public static final blacklist ANIMATION_TYPE_HIDE:I = 0x1

.field public static final blacklist ANIMATION_TYPE_NONE:I = -0x1

.field public static final blacklist ANIMATION_TYPE_RESIZE:I = 0x3

.field public static final blacklist ANIMATION_TYPE_SHOW:I = 0x0

.field public static final blacklist ANIMATION_TYPE_USER:I = 0x2

.field static final blacklist DEBUG:Z = false

.field static final blacklist FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist FLOATING_IME_BOTTOM_INSET_DP:I = -0x50

.field private static final blacklist ID_CAPTION_BAR:I

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_HIDDEN:I = 0x1

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_SHOWN:I = 0x0

.field private static final blacklist LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist PENDING_CONTROL_TIMEOUT_MS:I = 0x7d0

.field public static final blacklist RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final blacklist SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "InsetsController"

.field static final blacklist WARN:Z = false

.field private static blacklist sEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAnimCallback:Ljava/lang/Runnable;

.field private blacklist mAnimCallbackScheduled:Z

.field private blacklist mAnimatingTypes:I

.field private blacklist mAnimationsDisabled:Z

.field private blacklist mAppearanceControlled:I

.field private blacklist mAppearanceFromResource:I

.field private blacklist mBehaviorControlled:Z

.field private blacklist mCancelledForNewAnimationTypes:I

.field private blacklist mCaptionInsetsHeight:I

.field private blacklist mCompatSysUiVisibilityStaled:Z

.field private final blacklist mConsumerCreator:Lcom/android/internal/util/function/TriFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mControllableTypes:I

.field private blacklist mExistingTypes:I

.field private final blacklist mFrame:Landroid/graphics/Rect;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHost:Landroid/view/InsetsController$Host;

.field private blacklist mImeCaptionBarInsetsHeight:I

.field private final blacklist mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

.field private blacklist mIsPredictiveBackImeHideAnimInProgress:Z

.field private final blacklist mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

.field private blacklist mLastActivityType:I

.field private final blacklist mLastDispatchedState:Landroid/view/InsetsState;

.field private blacklist mLastInsets:Landroid/view/WindowInsets;

.field private blacklist mLastLegacySoftInputMode:I

.field private blacklist mLastLegacySystemUiFlags:I

.field private blacklist mLastLegacyWindowFlags:I

.field private blacklist mLastStartedAnimTypes:I

.field private blacklist mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private final blacklist mPendingControlTimeout:Ljava/lang/Runnable;

.field private blacklist mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

.field private final blacklist mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

.field private blacklist mReportedRequestedVisibleTypes:I

.field private blacklist mRequestedVisibleTypes:I

.field private final blacklist mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InsetsController$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSourceConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

.field private blacklist mStartingAnimation:Z

.field private final blacklist mState:Landroid/view/InsetsState;

.field private final blacklist mTmpControlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTypesBeingCancelled:I

.field private blacklist mVisibleTypes:I

.field private blacklist mWindowType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$2LIr3EryRYmtQ1HDd2j7SPwxf78(Landroid/view/InsetsController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$byQpFrvTVUSIm262wbTCVu-YfPc(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$5(Landroid/view/InsetsController$PendingControlRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m0h69hPi9k8nqDnYD5vTLkv4rsM(Landroid/view/InsetsController;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$updateState$4([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$meqKUiuVHZJFS86fhQQzBBmdABw(Landroid/view/InsetsController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController;->lambda$new$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$njZtqr3ZSj8qfjB8biFLGe-UC1E(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$6(Landroid/view/InsetsController$PendingControlRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zHkX5nyqL2mGn5Rg6byt6DH0yFE(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/InsetsController;->lambda$startAnimation$8(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zM05iYQaCKzLG8Raquar1hv37XU(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$7(Landroid/view/InsetsAnimationControlRunner;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimatingTypes(Landroid/view/InsetsController;)I
    .registers 1

    iget p0, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimatingTypes(Landroid/view/InsetsController;I)V
    .registers 2

    iput p1, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelExistingControllers(Landroid/view/InsetsController;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 246
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 248
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 250
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 262
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 264
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 266
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 270
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 275
    nop

    .line 276
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Landroid/view/InsetsController;->ID_CAPTION_BAR:I

    .line 336
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;)V
    .registers 4
    .param p1, "host"    # Landroid/view/InsetsController$Host;

    .line 764
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda1;-><init>()V

    .line 770
    invoke-interface {p1}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 764
    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;Lcom/android/internal/util/function/TriFunction;Landroid/os/Handler;)V

    .line 771
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;Lcom/android/internal/util/function/TriFunction;Landroid/os/Handler;)V
    .registers 6
    .param p1, "host"    # Landroid/view/InsetsController$Host;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsController$Host;",
            "Lcom/android/internal/util/function/TriFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 776
    .local p2, "consumerCreator":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<Landroid/view/InsetsController;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/view/InsetsSourceConsumer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    new-instance v0, Landroid/view/InsetsController$1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$1;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    .line 612
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    .line 615
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    .line 617
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 620
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    .line 625
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    .line 643
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    .line 644
    iput v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    .line 652
    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda9;-><init>(Landroid/view/InsetsController;)V

    iput-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    .line 653
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    .line 660
    iput v0, p0, Landroid/view/InsetsController;->mExistingTypes:I

    .line 663
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    .line 666
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 669
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    .line 672
    iput v0, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    .line 683
    new-instance v0, Landroid/view/InsetsController$2;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$2;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

    .line 707
    new-instance v0, Landroid/view/InsetsController$3;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$3;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

    .line 777
    iput-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 778
    iput-object p2, p0, Landroid/view/InsetsController;->mConsumerCreator:Lcom/android/internal/util/function/TriFunction;

    .line 779
    iput-object p3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    .line 780
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda10;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    .line 827
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 828
    return-void
.end method

.method private blacklist abortPendingImeControlRequest()V
    .registers 3

    .line 1764
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v0, :cond_15

    .line 1765
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v0, v0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1766
    iput-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1767
    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1770
    :cond_15
    return-void
.end method

.method private blacklist applyLocalVisibilityOverride()V
    .registers 3

    .line 1895
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1896
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    .line 1897
    .local v1, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    .line 1895
    .end local v1    # "consumer":Landroid/view/InsetsSourceConsumer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1899
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method private blacklist calculateControllableTypes()I
    .registers 6

    .line 2275
    const/4 v0, 0x0

    .line 2276
    .local v0, "result":I
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_2d

    .line 2277
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 2278
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 2279
    .local v3, "source":Landroid/view/InsetsSource;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_2a

    if-eqz v3, :cond_2a

    .line 2280
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    or-int/2addr v0, v4

    .line 2276
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v3    # "source":Landroid/view/InsetsSource;
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2283
    .end local v1    # "i":I
    :cond_2d
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v0

    return v1
.end method

.method private blacklist cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V
    .registers 10
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "invokeCallback"    # Z

    .line 1827
    const/16 v0, 0x28

    if-eqz p2, :cond_13

    .line 1828
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1830
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->cancel()V

    goto :goto_1e

    .line 1833
    :cond_13
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1841
    :goto_1e
    const/4 v0, 0x0

    .line 1842
    .local v0, "removedTypes":I
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_27
    const/4 v3, 0x0

    if-ltz v1, :cond_84

    .line 1843
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    .line 1844
    .local v4, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v5, p1, :cond_81

    .line 1845
    iget-object v5, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1846
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    .line 1847
    if-eqz p2, :cond_4b

    .line 1848
    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v5}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    goto :goto_84

    .line 1850
    :cond_4b
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v5

    if-eqz v5, :cond_84

    .line 1851
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_84

    .line 1852
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v5

    if-ne v5, v2, :cond_84

    .line 1853
    iget-object v5, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    if-eqz v5, :cond_84

    .line 1856
    invoke-static {}, Landroid/view/inputmethod/Flags;->reportAnimatingInsetsTypes()Z

    move-result v5

    if-nez v5, :cond_6d

    .line 1857
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v5

    goto :goto_6e

    :cond_6d
    move-object v5, v3

    .line 1856
    :goto_6e
    invoke-direct {p0, v5}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1858
    iget-object v5, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v5}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    iget-object v6, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1859
    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 1858
    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurface(Landroid/os/IBinder;)V

    goto :goto_84

    .line 1842
    .end local v4    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    :cond_81
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 1867
    .end local v1    # "i":I
    :cond_84
    :goto_84
    const/4 v1, 0x0

    if-lez v0, :cond_b3

    .line 1868
    iget v4, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    not-int v5, v0

    and-int/2addr v4, v5

    iput v4, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    .line 1869
    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    if-eqz v4, :cond_b3

    .line 1871
    invoke-static {}, Landroid/view/inputmethod/Flags;->reportAnimatingInsetsTypes()Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_a5

    .line 1872
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v4

    if-ne v4, v2, :cond_a5

    goto :goto_a6

    :cond_a5
    move v2, v1

    .line 1873
    .local v2, "dispatchStatsToken":Z
    :goto_a6
    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v5, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    .line 1874
    if-eqz v2, :cond_b0

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    .line 1873
    :cond_b0
    invoke-interface {v4, v5, v3}, Landroid/view/InsetsController$Host;->updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1878
    .end local v2    # "dispatchStatsToken":Z
    :cond_b3
    invoke-virtual {p0, v0, v1}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    .line 1879
    return-void
.end method

.method private blacklist cancelExistingControllers(I)V
    .registers 7
    .param p1, "types"    # I

    .line 1746
    iget v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1747
    .local v0, "originalmTypesBeingCancelled":I
    iget v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1749
    :try_start_7
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_28

    .line 1750
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1751
    .local v3, "runner":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_25

    .line 1752
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1749
    .end local v3    # "runner":Landroid/view/InsetsAnimationControlRunner;
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 1755
    .end local v1    # "i":I
    :cond_28
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_32

    .line 1756
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    .line 1759
    :cond_32
    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1760
    nop

    .line 1761
    return-void

    .line 1759
    :catchall_36
    move-exception v1

    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1760
    throw v1
.end method

.method private blacklist collectSourceControls(ZILandroid/util/SparseArray;ILandroid/view/inputmethod/ImeTracker$Token;Z)Landroid/util/Pair;
    .registers 23
    .param p1, "fromIme"    # Z
    .param p2, "types"    # I
    .param p4, "animationType"    # I
    .param p5, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p6, "fromPredictiveBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;I",
            "Landroid/view/inputmethod/ImeTracker$Token;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1637
    .local p3, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    const/16 v5, 0x23

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1640
    const/4 v4, 0x0

    .line 1641
    .local v4, "typesReady":I
    const/4 v6, 0x1

    .line 1642
    .local v6, "imeReady":Z
    iget-object v7, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .local v7, "i":I
    :goto_1b
    if-ltz v7, :cond_ce

    .line 1643
    iget-object v9, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InsetsSourceConsumer;

    .line 1644
    .local v9, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v10

    and-int v10, v10, p2

    if-nez v10, :cond_31

    .line 1645
    move-object/from16 v15, p3

    goto/16 :goto_ca

    .line 1647
    :cond_31
    const/4 v10, 0x0

    if-eqz v2, :cond_44

    const/4 v11, 0x2

    if-ne v2, v11, :cond_42

    if-eqz p6, :cond_44

    iget-object v11, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1649
    invoke-interface {v11}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v11

    if-nez v11, :cond_42

    goto :goto_44

    :cond_42
    move v11, v10

    goto :goto_45

    :cond_44
    :goto_44
    move v11, v8

    .line 1650
    .local v11, "show":Z
    :goto_45
    const/4 v12, 0x1

    .line 1651
    .local v12, "canRun":Z
    if-eqz v11, :cond_5d

    .line 1653
    invoke-virtual {v9, v1, v3}, Landroid/view/InsetsSourceConsumer;->requestShow(ZLandroid/view/inputmethod/ImeTracker$Token;)I

    move-result v13

    packed-switch v13, :pswitch_data_de

    goto :goto_5c

    .line 1665
    :pswitch_50
    const/4 v12, 0x0

    .line 1668
    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v13

    invoke-virtual {v0, v10, v13}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    goto :goto_5c

    .line 1657
    :pswitch_59
    const/4 v6, 0x0

    .line 1659
    goto :goto_5c

    .line 1655
    :pswitch_5b
    nop

    .line 1669
    :goto_5c
    goto :goto_6f

    .line 1672
    :cond_5d
    if-nez v1, :cond_6b

    if-eqz p6, :cond_6a

    iget-object v13, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1673
    invoke-interface {v13}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v13

    if-eqz v13, :cond_6a

    goto :goto_6b

    :cond_6a
    goto :goto_6c

    :cond_6b
    :goto_6b
    move v10, v8

    .line 1672
    :goto_6c
    invoke-virtual {v9, v10, v3}, Landroid/view/InsetsSourceConsumer;->requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1675
    :goto_6f
    if-nez v12, :cond_74

    .line 1679
    move-object/from16 v15, p3

    goto :goto_ca

    .line 1681
    :cond_74
    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v10

    .line 1682
    .local v10, "control":Landroid/view/InsetsSourceControl;
    if-eqz v10, :cond_a0

    .line 1683
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    if-nez v13, :cond_8c

    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v13

    sget v14, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v13, v14, :cond_89

    goto :goto_8c

    :cond_89
    move-object/from16 v15, p3

    goto :goto_a2

    .line 1684
    :cond_8c
    :goto_8c
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v13

    new-instance v14, Landroid/view/InsetsSourceControl;

    invoke-direct {v14, v10}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    move-object/from16 v15, p3

    invoke-virtual {v15, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1685
    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v13

    or-int/2addr v4, v13

    goto :goto_ca

    .line 1682
    :cond_a0
    move-object/from16 v15, p3

    .line 1686
    :goto_a2
    if-eqz v1, :cond_ca

    .line 1687
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "collectSourceControls can\'t continue for type: ime, fromIme: true requires a control with a leash but we have "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1689
    if-nez v10, :cond_b4

    .line 1690
    const-string v14, "control: null"

    goto :goto_b6

    .line 1691
    :cond_b4
    const-string v14, "control: non-null and control.getLeash(): null"

    :goto_b6
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1687
    const-string v14, "InsetsController"

    invoke-static {v14, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v13

    invoke-interface {v13, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1642
    .end local v9    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v10    # "control":Landroid/view/InsetsSourceControl;
    .end local v11    # "show":Z
    .end local v12    # "canRun":Z
    :cond_ca
    :goto_ca
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1b

    :cond_ce
    move-object/from16 v15, p3

    .line 1696
    .end local v7    # "i":I
    new-instance v5, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_59
        :pswitch_50
    .end packed-switch
.end method

.method private blacklist collectSourceControlsV2(ILandroid/util/SparseArray;)Landroid/util/Pair;
    .registers 10
    .param p1, "types"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1704
    .local p2, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    const/4 v0, 0x0

    .line 1705
    .local v0, "typesReady":I
    const/4 v1, 0x0

    .line 1707
    .local v1, "typesWithoutLeash":I
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_4b

    .line 1708
    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    .line 1709
    .local v3, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    and-int/2addr v4, p1

    if-nez v4, :cond_1c

    .line 1710
    goto :goto_48

    .line 1713
    :cond_1c
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    .line 1714
    .local v4, "control":Landroid/view/InsetsSourceControl;
    if-eqz v4, :cond_48

    .line 1715
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    if-nez v5, :cond_37

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    sget v6, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v5, v6, :cond_31

    goto :goto_37

    .line 1719
    :cond_31
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    or-int/2addr v1, v5

    goto :goto_48

    .line 1716
    :cond_37
    :goto_37
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    new-instance v6, Landroid/view/InsetsSourceControl;

    invoke-direct {v6, v4}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    invoke-virtual {p2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1717
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    or-int/2addr v0, v5

    .line 1707
    .end local v3    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v4    # "control":Landroid/view/InsetsSourceControl;
    :cond_48
    :goto_48
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 1723
    .end local v2    # "i":I
    :cond_4b
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private blacklist controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V
    .registers 16
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "frame"    # Landroid/graphics/Rect;
    .param p5, "fromIme"    # Z
    .param p6, "insetsAnimationSpec"    # Landroid/view/InsetsAnimationSpec;
    .param p7, "animationType"    # I
    .param p8, "layoutInsetsDuringAnimation"    # I
    .param p9, "useInsetsAnimationThread"    # Z
    .param p10, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p11, "fromPredictiveBack"    # Z

    .line 1385
    const/4 v0, 0x0

    if-nez p8, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 1387
    .local v1, "visible":Z
    :goto_6
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-eqz v2, :cond_2d

    if-nez p11, :cond_2d

    if-nez v1, :cond_2d

    .line 1388
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_2d

    iget v2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_2d

    .line 1390
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getImeOnBackInvokedDispatcher()Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/ImeOnBackInvokedDispatcher;->preliminaryClear()V

    .line 1393
    :cond_2d
    if-eqz v1, :cond_30

    move v0, p1

    :cond_30
    invoke-virtual {p0, v0, p1}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 1397
    invoke-direct/range {p0 .. p11}, Landroid/view/InsetsController;->controlAnimationUncheckedInner(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    .line 1403
    move v0, p11

    move-object p11, p10

    move p10, p9

    move p9, p8

    move p8, p7

    move-object p7, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "types":I
    .local v0, "fromPredictiveBack":Z
    .local p2, "types":I
    .local p3, "cancellationSignal":Landroid/os/CancellationSignal;
    .local p4, "listener":Landroid/view/WindowInsetsAnimationControlListener;
    .local p5, "frame":Landroid/graphics/Rect;
    .local p6, "fromIme":Z
    .local p7, "insetsAnimationSpec":Landroid/view/InsetsAnimationSpec;
    .local p8, "animationType":I
    .local p9, "layoutInsetsDuringAnimation":I
    .local p10, "useInsetsAnimationThread":Z
    .local p11, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-direct {p0, p11}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1404
    return-void
.end method

.method private blacklist controlAnimationUncheckedInner(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V
    .registers 34
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "frame"    # Landroid/graphics/Rect;
    .param p5, "fromIme"    # Z
    .param p6, "insetsAnimationSpec"    # Landroid/view/InsetsAnimationSpec;
    .param p7, "animationType"    # I
    .param p8, "layoutInsetsDuringAnimation"    # I
    .param p9, "useInsetsAnimationThread"    # Z
    .param p10, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p11, "fromPredictiveBack"    # Z

    .line 1413
    move-object/from16 v6, p0

    move/from16 v8, p1

    move-object/from16 v4, p3

    move/from16 v9, p7

    move-object/from16 v5, p10

    iget v0, v6, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    and-int/2addr v0, v8

    const/16 v1, 0x21

    const/4 v15, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_79

    .line 1414
    if-eqz v9, :cond_19

    if-ne v9, v15, :cond_18

    goto :goto_19

    :cond_18
    move v15, v2

    .line 1416
    .local v15, "monitoredAnimation":Z
    :cond_19
    :goto_19
    if-eqz v15, :cond_46

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, v8

    if-eqz v0, :cond_46

    .line 1417
    const/16 v0, 0x28

    if-nez v9, :cond_33

    .line 1418
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v5, v0, v3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    goto :goto_3f

    .line 1422
    :cond_33
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v5, v0, v3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1426
    :goto_3f
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1429
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start a new insets animation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1430
    invoke-static {v8}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while an existing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1431
    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is being cancelled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1434
    .end local v15    # "monitoredAnimation":Z
    :cond_79
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1435
    const-string v0, "IC.showRequestFromApiToImeReady"

    const-string v3, "IC.showRequestFromApi"

    const/4 v7, 0x0

    const-wide/16 v10, 0x8

    if-nez v8, :cond_9a

    .line 1437
    invoke-interface {v4, v7}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1439
    invoke-static {v10, v11, v3, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1440
    invoke-static {v10, v11, v0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1441
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1442
    return-void

    .line 1445
    :cond_9a
    iget v1, v6, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    or-int/2addr v1, v8

    iput v1, v6, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 1447
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1450
    .local v1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v12

    const-wide/16 v13, 0x7d0

    if-eqz v12, :cond_11e

    .line 1452
    invoke-direct {v6, v8, v1}, Landroid/view/InsetsController;->collectSourceControlsV2(ILandroid/util/SparseArray;)Landroid/util/Pair;

    move-result-object v12

    .line 1453
    .local v12, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1454
    .local v2, "typesReady":I
    const/4 v7, 0x2

    if-ne v9, v7, :cond_108

    .line 1455
    iget-object v7, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1461
    .local v18, "typesWithoutLeash":I
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v7

    and-int/2addr v7, v8

    if-eqz v7, :cond_fb

    and-int v7, v8, v18

    if-eqz v7, :cond_fb

    .line 1467
    new-instance v7, Landroid/view/InsetsController$PendingControlRequest;

    move-object/from16 v19, v12

    .end local v12    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v19, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    move-wide/from16 v20, v13

    const/4 v14, 0x0

    move-object/from16 v13, p2

    move-object/from16 v10, p6

    move-object/from16 v17, v1

    move v11, v9

    move-object v9, v4

    move-object v4, v0

    move-wide/from16 v0, v20

    move/from16 v20, v15

    const/4 v15, 0x0

    .end local v1    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .local v17, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-direct/range {v7 .. v14}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/InsetsAnimationSpec;IILandroid/os/CancellationSignal;Z)V

    .line 1471
    .local v7, "request":Landroid/view/InsetsController$PendingControlRequest;
    iput-object v7, v6, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1473
    iget-object v9, v6, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v10, v6, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v9, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1476
    if-eqz v13, :cond_105

    .line 1477
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda5;

    invoke-direct {v0, v6, v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda5;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v13, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    goto :goto_105

    .line 1461
    .end local v7    # "request":Landroid/view/InsetsController$PendingControlRequest;
    .end local v17    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v1    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v12    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_fb
    move-object/from16 v13, p2

    move-object v4, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v12

    move/from16 v20, v15

    const/4 v15, 0x0

    .line 1488
    .end local v1    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v12    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v17    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_105
    :goto_105
    if-eq v2, v8, :cond_112

    .line 1494
    return-void

    .line 1454
    .end local v17    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v18    # "typesWithoutLeash":I
    .end local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v1    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v12    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_108
    move-object/from16 v13, p2

    move-object v4, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v12

    move/from16 v20, v15

    const/4 v15, 0x0

    .line 1497
    .end local v1    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v12    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v17    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    :cond_112
    move-object v11, v3

    move-object v10, v4

    move v0, v8

    move-object v1, v13

    const/4 v14, 0x0

    move-object/from16 v4, p3

    move-object v13, v6

    const-wide/16 v5, 0x8

    goto/16 :goto_197

    .line 1498
    .end local v2    # "typesReady":I
    .end local v17    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v1    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    :cond_11e
    move-object v4, v0

    move-object/from16 v17, v1

    move-wide v0, v13

    move/from16 v20, v15

    move-object/from16 v13, p2

    move-object v15, v7

    .end local v1    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v17    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object v11, v3

    move-object v10, v4

    move v2, v8

    move-object/from16 v3, v17

    const/4 v14, 0x0

    move/from16 v4, p7

    move-wide v8, v0

    move-object v0, v6

    move/from16 v1, p5

    move/from16 v6, p11

    .end local v17    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .local v3, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsController;->collectSourceControls(ZILandroid/util/SparseArray;ILandroid/view/inputmethod/ImeTracker$Token;Z)Landroid/util/Pair;

    move-result-object v12

    .line 1500
    .end local v3    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .local v12, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v17    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1501
    .local v16, "typesReady":I
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 1507
    .local v18, "imeReady":Z
    if-nez v18, :cond_18c

    .line 1509
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1510
    new-instance v0, Landroid/view/InsetsController$PendingControlRequest;

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v7, p9

    move-object v6, v13

    move-object/from16 v13, p0

    invoke-direct/range {v0 .. v7}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/InsetsAnimationSpec;IILandroid/os/CancellationSignal;Z)V

    move-object v4, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v6

    .line 1513
    .local v2, "request":Landroid/view/InsetsController$PendingControlRequest;
    iput-object v2, v13, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1514
    iget-object v3, v13, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v5, v13, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1516
    if-eqz v1, :cond_179

    .line 1517
    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda6;

    invoke-direct {v3, v13, v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda6;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v1, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1528
    :cond_179
    invoke-static/range {v17 .. v17}, Landroid/view/InsetsController;->releaseControls(Landroid/util/SparseArray;)V

    .line 1532
    iget v3, v13, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    invoke-virtual {v13, v3, v0}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 1534
    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v11, v14}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1535
    if-nez p5, :cond_18b

    .line 1536
    invoke-static {v5, v6, v10, v14}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1538
    :cond_18b
    return-void

    .line 1507
    .end local v2    # "request":Landroid/view/InsetsController$PendingControlRequest;
    :cond_18c
    move/from16 v0, p1

    move-object/from16 v4, p3

    move-object v1, v13

    const-wide/16 v5, 0x8

    move-object/from16 v13, p0

    move/from16 v2, v16

    .line 1542
    .end local v12    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v16    # "typesReady":I
    .end local v18    # "imeReady":Z
    .local v2, "typesReady":I
    :goto_197
    if-nez v2, :cond_1b2

    .line 1543
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-eqz v3, :cond_1a6

    .line 1545
    invoke-static {v5, v6, v11, v14}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1546
    invoke-interface {v4, v15}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    goto :goto_1b1

    .line 1549
    :cond_1a6
    invoke-interface {v4, v15}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1550
    invoke-static {v5, v6, v11, v14}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1551
    if-nez p5, :cond_1b1

    .line 1552
    invoke-static {v5, v6, v10, v14}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1555
    :cond_1b1
    :goto_1b1
    return-void

    .line 1558
    :cond_1b2
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-eqz v3, :cond_1c0

    .line 1559
    iput v2, v13, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    .line 1560
    invoke-direct {v13, v2}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1561
    iput v14, v13, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    goto :goto_1c3

    .line 1563
    :cond_1c0
    invoke-direct {v13, v2}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1566
    :goto_1c3
    if-eqz p9, :cond_1ef

    .line 1567
    new-instance v0, Landroid/view/InsetsAnimationThreadControlRunner;

    iget-object v3, v13, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v7, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1570
    invoke-interface {v7}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v10

    iget-object v7, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v7}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v12, p10

    move-object v14, v1

    move v5, v2

    move-object v6, v13

    move-object/from16 v1, v17

    move/from16 v13, p1

    move-object/from16 v2, p4

    .end local v2    # "typesReady":I
    .end local v17    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v1    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .local v5, "typesReady":I
    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsAnimationThreadControlRunner;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsAnimationSpec;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;Landroid/view/inputmethod/ImeTracker$Token;)V

    move/from16 v4, p7

    move v2, v5

    move-object/from16 v5, p10

    .end local v1    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v17    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    goto :goto_213

    .line 1571
    .end local v5    # "typesReady":I
    .restart local v2    # "typesReady":I
    :cond_1ef
    move-object v14, v1

    move v5, v2

    move-object v6, v13

    move v13, v0

    .end local v2    # "typesReady":I
    .restart local v5    # "typesReady":I
    new-instance v0, Landroid/view/InsetsAnimationControlImpl;

    iget-object v3, v6, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, v6, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1573
    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v11

    move-object/from16 v7, p0

    move-object/from16 v4, p3

    move-object/from16 v2, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v1, v17

    .end local v17    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v1    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;Landroid/view/InsetsAnimationSpec;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/view/inputmethod/ImeTracker$Token;)V

    move v2, v5

    move v4, v9

    move-object v5, v12

    .end local v5    # "typesReady":I
    .restart local v2    # "typesReady":I
    :goto_213
    nop

    .line 1575
    .local v0, "runner":Landroid/view/InsetsAnimationControlRunner;
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_21a
    if-ltz v3, :cond_234

    .line 1576
    iget-object v7, v6, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsSourceConsumer;

    .line 1577
    .local v7, "consumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v7, :cond_231

    .line 1578
    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getSurfaceParamsApplier()Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/InsetsSourceConsumer;->setSurfaceParamsApplier(Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;)V

    .line 1575
    .end local v7    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_231
    add-int/lit8 v3, v3, -0x1

    goto :goto_21a

    .line 1581
    .end local v3    # "i":I
    :cond_234
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_25a

    .line 1582
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    iget-object v7, v6, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1583
    invoke-interface {v7}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 1582
    const-string v8, "InsetsAnimationControlImpl"

    invoke-virtual {v3, v8, v7, v15}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1584
    move/from16 v3, v20

    if-ne v4, v3, :cond_25a

    .line 1585
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v3

    new-instance v7, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v5, v7}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1588
    :cond_25a
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v7, 0x27

    invoke-interface {v3, v5, v7}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1589
    iget v3, v6, Landroid/view/InsetsController;->mAnimatingTypes:I

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v7

    or-int/2addr v3, v7

    iput v3, v6, Landroid/view/InsetsController;->mAnimatingTypes:I

    .line 1590
    iget-object v3, v6, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v7, v6, Landroid/view/InsetsController;->mAnimatingTypes:I

    invoke-interface {v3, v7, v15}, Landroid/view/InsetsController$Host;->updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1591
    iget-object v3, v6, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v7, Landroid/view/InsetsController$RunningAnimation;

    invoke-direct {v7, v0, v4}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    if-eqz v14, :cond_28b

    .line 1595
    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda7;

    invoke-direct {v3, v6, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda7;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V

    invoke-virtual {v14, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    const-wide/16 v7, 0x8

    const/4 v9, 0x0

    goto :goto_293

    .line 1599
    :cond_28b
    const-string v3, "IC.pendingAnim"

    const-wide/16 v7, 0x8

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1602
    :goto_293
    const/4 v3, 0x1

    invoke-virtual {v6, v13, v3}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    .line 1604
    if-eqz p5, :cond_2aa

    .line 1605
    packed-switch v4, :pswitch_data_2b4

    goto :goto_2a9

    .line 1610
    :pswitch_29d
    const-string v3, "IC.hideRequestFromIme"

    invoke-static {v7, v8, v3, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_2a9

    .line 1607
    :pswitch_2a3
    const-string v3, "IC.showRequestFromIme"

    invoke-static {v7, v8, v3, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1608
    nop

    .line 1611
    :goto_2a9
    goto :goto_2b2

    .line 1613
    :cond_2aa
    const/4 v3, 0x1

    if-ne v4, v3, :cond_2b2

    .line 1614
    const-string v3, "IC.hideRequestFromApi"

    invoke-static {v7, v8, v3, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1616
    :cond_2b2
    :goto_2b2
    return-void

    nop

    :pswitch_data_2b4
    .packed-switch 0x0
        :pswitch_2a3
        :pswitch_29d
    .end packed-switch
.end method

.method private blacklist getLayoutInsetsDuringAnimationMode(IZ)I
    .registers 5
    .param p1, "types"    # I
    .param p2, "fromPredictiveBack"    # Z

    .line 1728
    const/4 v0, 0x0

    if-eqz p2, :cond_c

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1732
    return v0

    .line 1740
    :cond_c
    iget v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v1, p1

    if-eq v1, p1, :cond_12

    .line 1741
    goto :goto_13

    .line 1742
    :cond_12
    const/4 v0, 0x1

    .line 1740
    :goto_13
    return v0
.end method

.method private blacklist handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 15
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1223
    iget-object v12, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1224
    .local v12, "pendingRequest":Landroid/view/InsetsController$PendingControlRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1225
    iget-object v1, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1229
    iget v1, v12, Landroid/view/InsetsController$PendingControlRequest;->types:I

    iget-object v2, v12, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    iget-object v3, v12, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-object v6, v12, Landroid/view/InsetsController$PendingControlRequest;->mInsetsAnimationSpec:Landroid/view/InsetsAnimationSpec;

    iget v7, v12, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    iget v8, v12, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    iget-boolean v9, v12, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    .line 1235
    return-void
.end method

.method private blacklist invokeControllableInsetsChangedListeners()I
    .registers 5

    .line 2290
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 2291
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    .line 2292
    .local v0, "types":I
    iget-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2293
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_1e

    .line 2294
    iget-object v3, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    invoke-interface {v3, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 2293
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2296
    .end local v2    # "i":I
    :cond_1e
    iget v2, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    return v2
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$5(Landroid/view/InsetsController$PendingControlRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/view/InsetsController$PendingControlRequest;

    .line 1478
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_7

    .line 1482
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1484
    :cond_7
    return-void
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$6(Landroid/view/InsetsController$PendingControlRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/view/InsetsController$PendingControlRequest;

    .line 1518
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_7

    .line 1522
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1524
    :cond_7
    return-void
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$7(Landroid/view/InsetsAnimationControlRunner;)V
    .registers 3
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 1596
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1597
    return-void
.end method

.method static synthetic blacklist lambda$new$2(Landroid/view/InsetsController;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/view/InsetsSourceConsumer;
    .registers 7
    .param p0, "controller"    # Landroid/view/InsetsController;
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "type"    # Ljava/lang/Integer;

    .line 765
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 766
    new-instance v0, Landroid/view/ImeInsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v0, v1, v2, p0}, Landroid/view/ImeInsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Landroid/view/InsetsController;)V

    return-object v0

    .line 768
    :cond_1c
    new-instance v0, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/view/InsetsSourceConsumer;-><init>(IILandroid/view/InsetsState;Landroid/view/InsetsController;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$new$3()V
    .registers 16

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 782
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 783
    return-void

    .line 786
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v0, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v1, "finishedAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    new-instance v2, Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    move-object v5, v2

    .line 789
    .local v5, "state":Landroid/view/InsetsState;
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_26
    if-ltz v2, :cond_54

    .line 790
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    .line 792
    .local v3, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v6, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 793
    .local v6, "runner":Landroid/view/InsetsAnimationControlRunner;
    instance-of v7, v6, Landroid/view/WindowInsetsAnimationController;

    if-eqz v7, :cond_51

    .line 798
    iget-boolean v7, v3, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    if-eqz v7, :cond_41

    .line 799
    invoke-interface {v6}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_41
    move-object v7, v6

    check-cast v7, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v7, v5}, Landroid/view/InternalInsetsAnimationController;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 803
    invoke-interface {v6}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    .end local v3    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    .end local v6    # "runner":Landroid/view/InsetsAnimationControlRunner;
    :cond_51
    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    .line 808
    .end local v2    # "i":I
    :cond_54
    iget-object v6, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 809
    invoke-virtual {v2}, Landroid/view/WindowInsets;->isRound()Z

    move-result v8

    iget v9, p0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    iget v10, p0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    iget v11, p0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    iget v12, p0, Landroid/view/InsetsController;->mWindowType:I

    iget v13, p0, Landroid/view/InsetsController;->mLastActivityType:I

    .line 808
    const/4 v14, 0x0

    invoke-virtual/range {v5 .. v14}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v2

    .line 812
    .local v2, "insets":Landroid/view/WindowInsets;
    iget-object v3, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 813
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 812
    invoke-interface {v3, v2, v6}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    .line 821
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_7b
    if-ltz v3, :cond_89

    .line 822
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 821
    add-int/lit8 v3, v3, -0x1

    goto :goto_7b

    .line 824
    .end local v3    # "i":I
    :cond_89
    return-void
.end method

.method private synthetic blacklist lambda$startAnimation$8(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 12
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "types"    # I
    .param p3, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p4, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;
    .param p5, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 2152
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2154
    return-void

    .line 2156
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2157
    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2156
    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2158
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_2e
    if-ltz v0, :cond_41

    .line 2159
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    .line 2160
    .local v4, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v5, p1, :cond_3e

    .line 2161
    iput-boolean v3, v4, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    .line 2158
    .end local v4    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 2164
    .end local v0    # "i":I
    :cond_41
    const-string v0, "IC.pendingAnim"

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2165
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p3, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 2166
    iput-boolean v3, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 2167
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_60

    .line 2168
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/ImeTracker;->onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 2170
    :cond_60
    move-object v0, p1

    check-cast v0, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v0, v3}, Landroid/view/InternalInsetsAnimationController;->setReadyDispatched(Z)V

    .line 2171
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {p5, v0, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    .line 2172
    iput-boolean v4, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 2173
    return-void
.end method

.method static synthetic blacklist lambda$static$0(F)F
    .registers 6
    .param p0, "alphaFraction"    # F

    .line 253
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p0

    .line 254
    .local v1, "fraction":F
    const v2, 0x3eaaaaab

    .line 255
    .local v2, "fractionDelay":F
    const v3, 0x3eaaaaab

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_f

    .line 256
    return v0

    .line 258
    :cond_f
    sub-float v3, v1, v3

    const v4, 0x3f2aaaaa

    div-float/2addr v3, v4

    .line 259
    .local v3, "innerFraction":F
    sget-object v4, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v0, v4

    return v0
.end method

.method static synthetic blacklist lambda$static$1(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .registers 9
    .param p0, "fraction"    # F
    .param p1, "startValue"    # Landroid/graphics/Insets;
    .param p2, "endValue"    # Landroid/graphics/Insets;

    .line 336
    iget v0, p1, Landroid/graphics/Insets;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Insets;->top:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Insets;->right:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Insets;->right:I

    iget v4, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Insets;->bottom:I

    iget v5, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$updateState$4([I)V
    .registers 3
    .param p1, "cancelledUserAnimationTypes"    # [I

    .line 922
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->show(I)V

    return-void
.end method

.method static blacklist releaseControls(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 1619
    .local p0, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_19

    .line 1620
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 1619
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1622
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method private blacklist reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 6
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 2025
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2030
    invoke-static {}, Landroid/view/inputmethod/Flags;->reportAnimatingInsetsTypes()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2031
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .local v0, "typesToReport":I
    goto :goto_1c

    .line 2033
    .end local v0    # "typesToReport":I
    :cond_f
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iget v1, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .restart local v0    # "typesToReport":I
    goto :goto_1c

    .line 2036
    .end local v0    # "typesToReport":I
    :cond_1a
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 2039
    .restart local v0    # "typesToReport":I
    :goto_1c
    iget v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    const/16 v2, 0x30

    if-eq v0, v1, :cond_55

    .line 2040
    iget v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    xor-int/2addr v1, v0

    .line 2041
    .local v1, "diff":I
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2042
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 2044
    :cond_2e
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2045
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2047
    invoke-static {}, Landroid/view/inputmethod/Flags;->reportAnimatingInsetsTypes()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v2, v0

    if-nez v2, :cond_49

    .line 2050
    const/4 p1, 0x0

    .line 2053
    :cond_49
    iget v2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iput v2, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    .line 2054
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v3, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    invoke-interface {v2, v3, p1}, Landroid/view/InsetsController$Host;->updateRequestedVisibleTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2055
    .end local v1    # "diff":I
    :cond_54
    goto :goto_7b

    :cond_55
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 2056
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_7b

    iget-object v1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    if-eqz v1, :cond_7b

    .line 2057
    iget-object v1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v1

    .line 2058
    .local v1, "control":Landroid/view/InsetsSourceControl;
    if-eqz v1, :cond_74

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-nez v3, :cond_7b

    .line 2062
    :cond_74
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2067
    .end local v1    # "control":Landroid/view/InsetsSourceControl;
    :cond_7b
    :goto_7b
    invoke-virtual {p0}, Landroid/view/InsetsController;->updateCompatSysUiVisibility()V

    .line 2068
    return-void
.end method

.method private blacklist updateState(Landroid/view/InsetsState;)V
    .registers 13
    .param p1, "newState"    # Landroid/view/InsetsState;

    .line 884
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 885
    const/4 v0, 0x0

    .line 886
    .local v0, "existingTypes":I
    const/4 v2, 0x0

    .line 887
    .local v2, "visibleTypes":I
    filled-new-array {v1}, [I

    move-result-object v3

    .line 888
    .local v3, "cancelledUserAnimationTypes":[I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v5

    .local v5, "size":I
    :goto_11
    if-ge v4, v5, :cond_46

    .line 889
    new-instance v6, Landroid/view/InsetsSource;

    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 890
    .local v6, "source":Landroid/view/InsetsSource;
    invoke-virtual {v6}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    .line 891
    .local v7, "type":I
    invoke-virtual {p0, v7}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v8

    .line 892
    .local v8, "animationType":I
    iget-object v9, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InsetsSourceConsumer;

    .line 893
    .local v9, "consumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v9, :cond_36

    .line 894
    invoke-virtual {v9, v6, v8}, Landroid/view/InsetsSourceConsumer;->updateSource(Landroid/view/InsetsSource;I)V

    goto :goto_3b

    .line 896
    :cond_36
    iget-object v10, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v10, v6}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 898
    :goto_3b
    or-int/2addr v0, v7

    .line 899
    invoke-virtual {v6}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_43

    .line 900
    or-int/2addr v2, v7

    .line 888
    .end local v6    # "source":Landroid/view/InsetsSource;
    .end local v7    # "type":I
    .end local v8    # "animationType":I
    .end local v9    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 905
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_46
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v4

    not-int v5, v0

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 907
    iget v4, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    const/4 v5, 0x1

    if-eq v4, v2, :cond_5f

    .line 908
    iget v4, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    xor-int/2addr v4, v2

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 909
    iput-boolean v5, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 911
    :cond_5d
    iput v2, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    .line 913
    :cond_5f
    iget v4, p0, Landroid/view/InsetsController;->mExistingTypes:I

    if-eq v4, v0, :cond_70

    .line 914
    iget v4, p0, Landroid/view/InsetsController;->mExistingTypes:I

    xor-int/2addr v4, v0

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 915
    iput-boolean v5, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 917
    :cond_6e
    iput v0, p0, Landroid/view/InsetsController;->mExistingTypes:I

    .line 919
    :cond_70
    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v5, p0, Landroid/view/InsetsController;->mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

    invoke-static {v4, p1, v5}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    .line 921
    aget v1, v3, v1

    if-eqz v1, :cond_85

    .line 922
    iget-object v1, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsController;[I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 924
    :cond_85
    return-void
.end method


# virtual methods
.method public whitelist addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 2302
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2304
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 2305
    return-void
.end method

.method public blacklist applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 15
    .param p1, "types"    # I
    .param p2, "show"    # Z
    .param p3, "fromIme"    # Z
    .param p4, "skipsCallbacks"    # Z
    .param p5, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 2074
    const/4 v0, 0x0

    .line 2075
    .local v0, "skipsAnim":Z
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_26

    .line 2076
    iget-object v1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v1

    .line 2079
    .local v1, "imeControl":Landroid/view/InsetsSourceControl;
    if-eqz v1, :cond_26

    .line 2080
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz p2, :cond_22

    iget-object v2, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 2081
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->hasViewFocusWhenWindowFocusGain()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    move v0, v2

    move v6, v0

    goto :goto_27

    .line 2084
    .end local v1    # "imeControl":Landroid/view/InsetsSourceControl;
    :cond_26
    move v6, v0

    .end local v0    # "skipsAnim":Z
    .local v6, "skipsAnim":Z
    :goto_27
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p4

    move-object v8, p5

    .end local p1    # "types":I
    .end local p2    # "show":Z
    .end local p3    # "fromIme":Z
    .end local p4    # "skipsCallbacks":Z
    .end local p5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v3, "types":I
    .local v4, "show":Z
    .local v5, "fromIme":Z
    .local v7, "skipsCallbacks":Z
    .local v8, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual/range {v2 .. v8}, Landroid/view/InsetsController;->applyAnimation(IZZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2085
    return-void
.end method

.method public blacklist applyAnimation(IZZZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 20
    .param p1, "types"    # I
    .param p2, "show"    # Z
    .param p3, "fromIme"    # Z
    .param p4, "skipsAnim"    # Z
    .param p5, "skipsCallbacks"    # Z
    .param p6, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 2090
    const/4 v1, 0x0

    if-nez p1, :cond_18

    .line 2093
    const-string v2, "IC.showRequestFromApi"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2094
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-nez v2, :cond_17

    .line 2095
    if-nez p3, :cond_17

    .line 2096
    const-string v2, "IC.showRequestFromApiToImeReady"

    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2099
    :cond_17
    return-void

    .line 2102
    :cond_18
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v5

    .line 2103
    .local v5, "hasAnimationCallbacks":Z
    new-instance v3, Landroid/view/InsetsController$InternalAnimationControlListener;

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 2104
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v7

    const/4 v2, 0x1

    if-nez p4, :cond_30

    iget-boolean v4, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    if-eqz v4, :cond_2e

    goto :goto_30

    :cond_2e
    move v8, v1

    goto :goto_31

    :cond_30
    :goto_30
    move v8, v2

    :goto_31
    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 2105
    const/16 v6, -0x50

    invoke-interface {v4, v6}, Landroid/view/InsetsController$Host;->dipToPx(I)I

    move-result v9

    iget-object v10, p0, Landroid/view/InsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-object v11, p0, Landroid/view/InsetsController;->mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move v6, p1

    move v4, p2

    invoke-direct/range {v3 .. v11}, Landroid/view/InsetsController$InternalAnimationControlListener;-><init>(ZZIIZILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;)V

    move v12, v5

    .line 2110
    .end local v5    # "hasAnimationCallbacks":Z
    .local v3, "listener":Landroid/view/InsetsController$InternalAnimationControlListener;
    .local v12, "hasAnimationCallbacks":Z
    nop

    .line 2113
    nop

    .line 2114
    xor-int/lit8 v7, p2, 0x1

    xor-int/lit8 v8, p2, 0x1

    if-eqz v12, :cond_50

    if-eqz p5, :cond_4e

    goto :goto_50

    :cond_4e
    move v9, v1

    goto :goto_51

    :cond_50
    :goto_50
    move v9, v2

    .line 2110
    :goto_51
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    move-object v0, p0

    move v1, p1

    move/from16 v5, p3

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    .line 2117
    return-void
.end method

.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 3
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 1804
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 1805
    return-void
.end method

.method public blacklist calculateInsets(ZIIIII)Landroid/view/WindowInsets;
    .registers 17
    .param p1, "isScreenRound"    # Z
    .param p2, "windowType"    # I
    .param p3, "activityType"    # I
    .param p4, "legacySoftInputMode"    # I
    .param p5, "legacyWindowFlags"    # I
    .param p6, "legacySystemUiFlags"    # I

    .line 933
    iput p2, p0, Landroid/view/InsetsController;->mWindowType:I

    .line 934
    iput p3, p0, Landroid/view/InsetsController;->mLastActivityType:I

    .line 935
    iput p4, p0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    .line 936
    iput p5, p0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    .line 937
    move/from16 v6, p6

    iput v6, p0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    .line 938
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v9, 0x0

    move v3, p1

    move v7, p2

    move v8, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 941
    iget-object v0, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    return-object v0
.end method

.method public blacklist calculateVisibleInsets(IIII)Landroid/graphics/Insets;
    .registers 11
    .param p1, "windowType"    # I
    .param p2, "activityType"    # I
    .param p3, "softInputMode"    # I
    .param p4, "windowFlags"    # I

    .line 949
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "windowType":I
    .end local p2    # "activityType":I
    .end local p3    # "softInputMode":I
    .end local p4    # "windowFlags":I
    .local v2, "windowType":I
    .local v3, "activityType":I
    .local v4, "softInputMode":I
    .local v5, "windowFlags":I
    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public blacklist cancelExistingAnimations()V
    .registers 2

    .line 2124
    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 2125
    return-void
.end method

.method public blacklist computeUserAnimatingTypes()I
    .registers 5

    .line 2009
    const/4 v0, 0x0

    .line 2010
    .local v0, "animatingTypes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 2011
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 2012
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    or-int/2addr v0, v2

    .line 2010
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2015
    .end local v1    # "i":I
    :cond_2d
    return v0
.end method

.method public whitelist controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 17
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 1338
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v0 .. v9}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V

    .line 1341
    return-void
.end method

.method public blacklist controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V
    .registers 25
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "fromIme"    # Z
    .param p5, "durationMs"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "animationType"    # I
    .param p9, "fromPredictiveBack"    # Z

    .line 1349
    move/from16 v1, p1

    move/from16 v11, p9

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v0

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_4f

    if-eqz v11, :cond_20

    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 1350
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v0, v3

    if-nez v0, :cond_20

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    goto :goto_53

    .line 1356
    :cond_20
    if-eqz p4, :cond_31

    .line 1357
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v3, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1359
    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 1357
    const-string v4, "InsetsController#controlWindowInsetsAnimation"

    invoke-virtual {v0, v4, v3, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1362
    :cond_31
    new-instance v6, Landroid/view/InsetsController$4;

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    invoke-direct {v6, p0, v12, v13, v14}, Landroid/view/InsetsController$4;-><init>(Landroid/view/InsetsController;JLandroid/view/animation/Interpolator;)V

    .line 1373
    .local v6, "spec":Landroid/view/InsetsAnimationSpec;
    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 1374
    invoke-direct {p0, v1, v11}, Landroid/view/InsetsController;->getLayoutInsetsDuringAnimationMode(IZ)I

    move-result v8

    .line 1373
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move/from16 v7, p8

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    .line 1376
    return-void

    .line 1349
    .end local v6    # "spec":Landroid/view/InsetsAnimationSpec;
    :cond_4f
    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    .line 1353
    :goto_53
    move-object/from16 v3, p3

    invoke-interface {v3, v2}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1354
    return-void
.end method

.method public blacklist dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 6
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2179
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2180
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    .line 2178
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2181
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 2182
    return-void
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 2128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2129
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "InsetsController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2130
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsPredictiveBackImeHideAnimInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    return-void
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2136
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2137
    .local v0, "token":J
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2138
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_16
    if-ltz v2, :cond_2d

    .line 2139
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 2140
    .local v3, "runner":Landroid/view/InsetsAnimationControlRunner;
    const-wide v4, 0x20b00000002L

    invoke-interface {v3, p1, v4, v5}, Landroid/view/InsetsAnimationControlRunner;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2138
    .end local v3    # "runner":Landroid/view/InsetsAnimationControlRunner;
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 2142
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2143
    return-void
.end method

.method public blacklist getAnimationType(I)I
    .registers 5
    .param p1, "type"    # I

    .line 1961
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_28

    .line 1962
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1963
    .local v1, "runner":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v1, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsType(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1964
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget v2, v2, Landroid/view/InsetsController$RunningAnimation;->type:I

    return v2

    .line 1961
    .end local v1    # "runner":Landroid/view/InsetsAnimationControlRunner;
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1967
    .end local v0    # "i":I
    :cond_28
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getAppearanceControlled()I
    .registers 2

    .line 2221
    iget v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    return v0
.end method

.method blacklist getCancelledForNewAnimationTypes()I
    .registers 2

    .line 1902
    iget v0, p0, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    return v0
.end method

.method public blacklist getHost()Landroid/view/InsetsController$Host;
    .registers 2

    .line 2332
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object v0
.end method

.method public blacklist getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;
    .registers 2

    .line 1925
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    return-object v0
.end method

.method public blacklist getLastDispatchedState()Landroid/view/InsetsState;
    .registers 2

    .line 853
    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public blacklist getRequestedVisibleTypes()I
    .registers 2

    .line 849
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    return v0
.end method

.method public blacklist getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;
    .registers 7
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 1907
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    .line 1908
    .local v0, "consumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v0, :cond_b

    .line 1909
    return-object v0

    .line 1911
    :cond_b
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne p2, v1, :cond_26

    iget-object v1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    if-eqz v1, :cond_26

    .line 1913
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1914
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 1915
    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceConsumer;->setId(I)V

    goto :goto_37

    .line 1917
    :cond_26
    iget-object v1, p0, Landroid/view/InsetsController;->mConsumerCreator:Lcom/android/internal/util/function/TriFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    .line 1919
    :goto_37
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1920
    return-object v0
.end method

.method public blacklist getState()Landroid/view/InsetsState;
    .registers 2

    .line 844
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public whitelist getSystemBarsAppearance()I
    .registers 4

    .line 2216
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsAppearance()I

    move-result v0

    iget v1, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    and-int/2addr v0, v1

    iget v1, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    iget v2, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    not-int v2, v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSystemBarsBehavior()I
    .registers 2

    .line 2258
    iget-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    if-nez v0, :cond_6

    .line 2260
    const/4 v0, 0x1

    return v0

    .line 2262
    :cond_6
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method blacklist hasSurfaceAnimation(I)Z
    .registers 6
    .param p1, "type"    # I

    .line 1977
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 1978
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1979
    .local v2, "runner":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v2, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsType(I)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->willUpdateSurface()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1980
    return v1

    .line 1977
    .end local v2    # "runner":Landroid/view/InsetsAnimationControlRunner;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1983
    .end local v0    # "i":I
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hide(I)V
    .registers 4
    .param p1, "types"    # I

    .line 1239
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1240
    return-void
.end method

.method public blacklist hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 20
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1245
    move-object/from16 v0, p0

    move/from16 v3, p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int v1, p1, v1

    const/4 v2, 0x2

    if-eqz v1, :cond_40

    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hide(ime(), fromIme="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "InsetsController"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    if-nez p3, :cond_40

    .line 1249
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    iget-object v4, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1252
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v4

    .line 1249
    const/4 v5, 0x5

    const/16 v6, 0x1c

    invoke-interface {v1, v2, v5, v6, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    move-object v5, v1

    .end local p3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v1, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    goto :goto_42

    .line 1255
    .end local v1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_40
    move-object/from16 v5, p3

    .end local p3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v5, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_42
    const-wide/16 v6, 0x8

    const/4 v1, 0x0

    if-eqz v3, :cond_5d

    .line 1256
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v4

    iget-object v8, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1257
    invoke-interface {v8}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 1256
    const-string v9, "InsetsController#hide"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v8, v10}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1258
    const-string v4, "IC.hideRequestFromIme"

    invoke-static {v6, v7, v4, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_62

    .line 1260
    :cond_5d
    const-string v4, "IC.hideRequestFromApi"

    invoke-static {v6, v7, v4, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1262
    :goto_62
    const/4 v4, 0x0

    .line 1263
    .local v4, "typesReady":I
    const/4 v6, 0x0

    .line 1264
    .local v6, "hasImeRequestedHidden":Z
    iget-object v7, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    const/4 v8, 0x1

    if-eqz v7, :cond_6b

    move v7, v8

    goto :goto_6c

    :cond_6b
    move v7, v1

    .line 1265
    .local v7, "hadPendingImeControlRequest":Z
    :goto_6c
    const/4 v9, 0x1

    .local v9, "type":I
    :goto_6d
    const/16 v10, 0x200

    if-gt v9, v10, :cond_107

    .line 1266
    and-int v10, p1, v9

    if-nez v10, :cond_77

    .line 1267
    goto/16 :goto_103

    .line 1269
    :cond_77
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v10

    if-ne v9, v10, :cond_7f

    move v10, v8

    goto :goto_80

    :cond_7f
    move v10, v1

    .line 1270
    .local v10, "isImeAnimation":Z
    :goto_80
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v11

    if-eqz v11, :cond_9c

    .line 1271
    if-eqz v10, :cond_9c

    .line 1275
    iget v11, v0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v12

    and-int/2addr v11, v12

    if-nez v11, :cond_9c

    .line 1276
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v11

    const/16 v12, 0x41

    invoke-interface {v11, v5, v12}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1278
    goto/16 :goto_103

    .line 1282
    :cond_9c
    invoke-virtual {v0, v9}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v11

    .line 1283
    .local v11, "animationType":I
    iget v12, v0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v12, v9

    if-eqz v12, :cond_a7

    move v12, v8

    goto :goto_a8

    :cond_a7
    move v12, v1

    .line 1284
    .local v12, "requestedVisible":Z
    :goto_a8
    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v13, :cond_bf

    if-nez v12, :cond_bf

    .line 1286
    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget v14, v13, Landroid/view/InsetsController$PendingControlRequest;->types:I

    not-int v15, v9

    and-int/2addr v14, v15

    iput v14, v13, Landroid/view/InsetsController$PendingControlRequest;->types:I

    .line 1287
    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget v13, v13, Landroid/view/InsetsController$PendingControlRequest;->types:I

    if-nez v13, :cond_bf

    .line 1288
    invoke-direct {v0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1291
    :cond_bf
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v13

    const/4 v14, -0x1

    if-nez v13, :cond_e0

    .line 1292
    if-eqz v10, :cond_e0

    if-nez v12, :cond_e0

    if-ne v11, v14, :cond_e0

    .line 1293
    const/4 v6, 0x1

    .line 1296
    if-nez v7, :cond_d9

    .line 1297
    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v13

    if-eqz v13, :cond_e0

    .line 1298
    :cond_d9
    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v13

    invoke-virtual {v13, v3, v5}, Landroid/view/InsetsSourceConsumer;->requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1302
    :cond_e0
    const/16 v13, 0x20

    if-nez v12, :cond_e6

    if-eq v11, v14, :cond_fa

    :cond_e6
    if-eq v11, v8, :cond_fa

    if-ne v11, v2, :cond_ef

    iget-boolean v14, v0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    if-eqz v14, :cond_ef

    goto :goto_fa

    .line 1313
    :cond_ef
    if-eqz v10, :cond_f8

    .line 1314
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v14

    invoke-interface {v14, v5, v13}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1317
    :cond_f8
    or-int/2addr v4, v9

    goto :goto_103

    .line 1307
    :cond_fa
    :goto_fa
    if-eqz v10, :cond_103

    .line 1308
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v14

    invoke-interface {v14, v5, v13}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1265
    .end local v10    # "isImeAnimation":Z
    .end local v11    # "animationType":I
    .end local v12    # "requestedVisible":Z
    :cond_103
    :goto_103
    shl-int/lit8 v9, v9, 0x1

    goto/16 :goto_6d

    .line 1319
    .end local v9    # "type":I
    :cond_107
    if-eqz v6, :cond_11d

    iget-object v1, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v1, :cond_11d

    .line 1322
    invoke-direct {v0, v5}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1323
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-nez v1, :cond_11d

    .line 1326
    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    .line 1329
    :cond_11d
    const/4 v2, 0x0

    move v1, v4

    .end local v4    # "typesReady":I
    .local v1, "typesReady":I
    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1331
    return-void
.end method

.method public blacklist isBehaviorControlled()Z
    .registers 2

    .line 2266
    iget-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    return v0
.end method

.method public blacklist isPredictiveBackImeHideAnimInProgress()Z
    .registers 2

    .line 1120
    iget-boolean v0, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    return v0
.end method

.method blacklist notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V
    .registers 7
    .param p1, "consumer"    # Landroid/view/InsetsSourceConsumer;

    .line 1808
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v0

    .line 1809
    .local v0, "type":I
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_27

    .line 1810
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1811
    .local v3, "runner":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v3, v0}, Landroid/view/InsetsAnimationControlRunner;->notifyControlRevoked(I)V

    .line 1812
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getControllingTypes()I

    move-result v4

    if-nez v4, :cond_24

    .line 1813
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1809
    .end local v3    # "runner":Landroid/view/InsetsAnimationControlRunner;
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1816
    .end local v1    # "i":I
    :cond_27
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_30

    .line 1817
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1819
    :cond_30
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    if-eq v1, v2, :cond_43

    .line 1822
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1824
    :cond_43
    return-void
.end method

.method public blacklist notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .registers 6
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "shown"    # Z

    .line 1775
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 1776
    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1778
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 1781
    return-void

    .line 1783
    :cond_1b
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 1784
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2e

    .line 1785
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/view/inputmethod/ImeTracker;->onUserFinished(Landroid/view/inputmethod/ImeTracker$Token;Z)V

    goto :goto_57

    .line 1786
    :cond_2e
    if-eqz p2, :cond_41

    .line 1787
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/16 v2, 0x29

    invoke-interface {v1, v0, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1789
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/inputmethod/ImeTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_57

    .line 1793
    :cond_41
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-nez v1, :cond_57

    .line 1794
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-interface {v1, v0, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1796
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/inputmethod/ImeTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1799
    :cond_57
    :goto_57
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1800
    return-void
.end method

.method blacklist notifyVisibilityChanged()V
    .registers 2

    .line 1929
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 1930
    return-void
.end method

.method blacklist onAnimationStateChanged(IZ)V
    .registers 7
    .param p1, "types"    # I
    .param p2, "running"    # Z

    .line 1882
    const/4 v0, 0x0

    .line 1883
    .local v0, "insetsChanged":Z
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_22

    .line 1884
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 1885
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_1f

    .line 1886
    invoke-virtual {v2, p2}, Landroid/view/InsetsSourceConsumer;->onAnimationStateChanged(Z)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1883
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1889
    .end local v1    # "i":I
    :cond_22
    if-eqz v0, :cond_27

    .line 1890
    invoke-virtual {p0}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 1892
    :cond_27
    return-void
.end method

.method public blacklist onControlsChanged([Landroid/view/InsetsSourceControl;)V
    .registers 23
    .param p1, "activeControls"    # [Landroid/view/InsetsSourceControl;

    .line 957
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const/4 v7, 0x0

    if-eqz v6, :cond_1b

    .line 958
    array-length v1, v6

    move v2, v7

    :goto_9
    if-ge v2, v1, :cond_1b

    aget-object v3, v6, v2

    .line 959
    .local v3, "activeControl":Landroid/view/InsetsSourceControl;
    if-eqz v3, :cond_18

    .line 961
    iget-object v4, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 958
    .end local v3    # "activeControl":Landroid/view/InsetsSourceControl;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 966
    :cond_1b
    const/4 v1, 0x0

    .line 967
    .local v1, "controllableTypes":I
    const/4 v2, 0x0

    .line 968
    .local v2, "consumedControlCount":I
    const/4 v8, 0x1

    new-array v11, v8, [I

    .line 969
    .local v11, "showTypes":[I
    new-array v12, v8, [I

    .line 970
    .local v12, "hideTypes":[I
    new-array v13, v8, [I

    .line 971
    .local v13, "cancelTypes":[I
    new-array v14, v8, [I

    .line 972
    .local v14, "transientTypes":[I
    const/4 v3, 0x0

    .line 975
    .local v3, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    iget-object v4, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v8

    move v15, v1

    move v1, v2

    move-object v5, v3

    .end local v2    # "consumedControlCount":I
    .end local v3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v1, "consumedControlCount":I
    .local v4, "i":I
    .local v5, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v15, "controllableTypes":I
    :goto_31
    if-ltz v4, :cond_73

    .line 976
    iget-object v2, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/view/InsetsSourceConsumer;

    .line 977
    .local v9, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v2

    sget v3, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v2, v3, :cond_45

    .line 980
    goto :goto_70

    .line 983
    :cond_45
    iget-object v2, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/view/InsetsSourceControl;

    .line 984
    .local v10, "control":Landroid/view/InsetsSourceControl;
    if-eqz v10, :cond_6d

    .line 985
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v2

    or-int/2addr v15, v2

    .line 986
    add-int/lit8 v1, v1, 0x1

    .line 988
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 989
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v2

    sget v3, Landroid/view/InsetsSource;->ID_IME:I

    if-ne v2, v3, :cond_6d

    .line 990
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getImeStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v5

    .line 997
    :cond_6d
    invoke-virtual/range {v9 .. v14}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    .line 975
    .end local v9    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v10    # "control":Landroid/view/InsetsSourceControl;
    :goto_70
    add-int/lit8 v4, v4, -0x1

    goto :goto_31

    .line 1001
    .end local v4    # "i":I
    :cond_73
    iget-object v2, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_9f

    .line 1002
    iget-object v2, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v8

    .local v2, "i":I
    :goto_82
    if-ltz v2, :cond_9f

    .line 1003
    iget-object v3, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/view/InsetsSourceControl;

    .line 1004
    .restart local v10    # "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v9

    .line 1005
    invoke-virtual/range {v9 .. v14}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    .line 1002
    .end local v10    # "control":Landroid/view/InsetsSourceControl;
    add-int/lit8 v2, v2, -0x1

    goto :goto_82

    .line 1009
    .end local v2    # "i":I
    :cond_9f
    iget-object v2, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_c2

    .line 1011
    iget-object v2, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v8

    .restart local v2    # "i":I
    :goto_ae
    if-ltz v2, :cond_c2

    .line 1012
    iget-object v3, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    iget-object v4, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-interface {v3, v4}, Landroid/view/InsetsAnimationControlRunner;->updateSurfacePosition(Landroid/util/SparseArray;)V

    .line 1011
    add-int/lit8 v2, v2, -0x1

    goto :goto_ae

    .line 1015
    .end local v2    # "i":I
    :cond_c2
    iget-object v2, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1017
    aget v2, v13, v7

    if-eqz v2, :cond_d0

    .line 1018
    aget v2, v13, v7

    invoke-direct {v0, v2}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1023
    :cond_d0
    invoke-direct {v0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result v9

    .line 1024
    .local v9, "animatingTypes":I
    aget v2, v11, v7

    not-int v3, v9

    and-int/2addr v2, v3

    aput v2, v11, v7

    .line 1025
    aget v2, v12, v7

    not-int v3, v9

    and-int/2addr v2, v3

    aput v2, v12, v7

    .line 1027
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 1028
    iget-object v2, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v2, :cond_10b

    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v2

    if-eqz v2, :cond_10b

    .line 1029
    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_10b

    .line 1030
    invoke-direct {v0, v5}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    move/from16 v17, v1

    move-object/from16 v19, v5

    goto/16 :goto_1f6

    .line 1032
    :cond_10b
    aget v2, v11, v7

    const/16 v3, 0x4c

    if-eqz v2, :cond_136

    .line 1033
    aget v2, v11, v7

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    and-int/2addr v2, v4

    if-eqz v2, :cond_121

    .line 1034
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v5, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1037
    :cond_121
    move v2, v1

    .end local v1    # "consumedControlCount":I
    .local v2, "consumedControlCount":I
    aget v1, v11, v7

    move v4, v3

    const/4 v3, 0x0

    move/from16 v16, v4

    const/4 v4, 0x0

    move/from16 v17, v2

    .end local v2    # "consumedControlCount":I
    .local v17, "consumedControlCount":I
    const/4 v2, 0x1

    move/from16 v20, v16

    move/from16 v16, v7

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_13b

    .line 1032
    .end local v17    # "consumedControlCount":I
    .restart local v1    # "consumedControlCount":I
    :cond_136
    move/from16 v17, v1

    move/from16 v16, v7

    move v7, v3

    .line 1040
    .end local v1    # "consumedControlCount":I
    .restart local v17    # "consumedControlCount":I
    :goto_13b
    aget v0, v12, v16

    if-eqz v0, :cond_166

    .line 1041
    aget v0, v12, v16

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_14f

    .line 1042
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v5, v7}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1045
    :cond_14f
    aget v1, v12, v16

    aget v0, v12, v16

    aget v2, v14, v16

    not-int v2, v2

    and-int/2addr v0, v2

    if-nez v0, :cond_15b

    move v4, v8

    goto :goto_15d

    :cond_15b
    move/from16 v4, v16

    :goto_15d
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    move-object v1, v5

    .end local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v1, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    goto :goto_169

    .line 1040
    .end local v1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_166
    move-object/from16 v0, p0

    move-object v1, v5

    .line 1052
    .end local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_169
    aget v2, v11, v16

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v2, v3

    if-nez v2, :cond_186

    aget v2, v12, v16

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v2, v3

    if-nez v2, :cond_186

    .line 1053
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v1, v7}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    move-object/from16 v19, v1

    goto/16 :goto_1f6

    .line 1052
    :cond_186
    move-object/from16 v19, v1

    goto/16 :goto_1f6

    .line 1058
    .end local v17    # "consumedControlCount":I
    .local v1, "consumedControlCount":I
    .restart local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_18a
    move/from16 v17, v1

    move-object v1, v5

    move/from16 v16, v7

    .end local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v1, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v17    # "consumedControlCount":I
    aget v2, v11, v16

    const/16 v7, 0x2e

    const/4 v3, 0x5

    if-eqz v2, :cond_1c1

    .line 1060
    aget v2, v11, v16

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    and-int/2addr v2, v4

    if-nez v2, :cond_1a1

    const/4 v5, 0x0

    goto :goto_1b0

    :cond_1a1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    iget-object v4, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1063
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v4

    .line 1060
    invoke-interface {v2, v8, v3, v7, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    move-object v5, v2

    .line 1064
    .local v5, "newStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_1b0
    move-object v2, v1

    .end local v1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v2, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    aget v1, v11, v16

    move v4, v3

    const/4 v3, 0x0

    move/from16 v18, v4

    const/4 v4, 0x0

    move-object/from16 v19, v2

    .end local v2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v19, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    const/4 v2, 0x1

    move/from16 v10, v18

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_1c4

    .line 1058
    .end local v5    # "newStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v19    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_1c1
    move-object/from16 v19, v1

    move v10, v3

    .line 1067
    .end local v1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v19    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_1c4
    aget v1, v12, v16

    if-eqz v1, :cond_1f6

    .line 1069
    aget v1, v12, v16

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_1d3

    const/4 v5, 0x0

    goto :goto_1e3

    :cond_1d3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    iget-object v2, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1072
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v2

    .line 1069
    const/4 v3, 0x2

    invoke-interface {v1, v3, v10, v7, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    move-object v5, v1

    .line 1073
    .restart local v5    # "newStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_1e3
    aget v1, v12, v16

    aget v2, v12, v16

    aget v3, v14, v16

    not-int v3, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_1ef

    move v4, v8

    goto :goto_1f1

    :cond_1ef
    move/from16 v4, v16

    :goto_1f1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1082
    .end local v5    # "newStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_1f6
    :goto_1f6
    iget v1, v0, Landroid/view/InsetsController;->mControllableTypes:I

    if-eq v1, v15, :cond_207

    .line 1083
    iget v1, v0, Landroid/view/InsetsController;->mControllableTypes:I

    xor-int/2addr v1, v15

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v1

    if-eqz v1, :cond_205

    .line 1084
    iput-boolean v8, v0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 1086
    :cond_205
    iput v15, v0, Landroid/view/InsetsController;->mControllableTypes:I

    .line 1089
    :cond_207
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_210

    .line 1091
    invoke-direct {v0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    .line 1097
    :cond_210
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1098
    return-void
.end method

.method public blacklist onFrameChanged(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 832
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 833
    return-void

    .line 835
    :cond_9
    iget v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    if-eqz v0, :cond_12

    .line 836
    iget v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->setImeCaptionBarInsetsHeight(I)V

    .line 838
    :cond_12
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 839
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 840
    return-void
.end method

.method public blacklist onStateChanged(Landroid/view/InsetsState;)Z
    .registers 7
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 857
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 859
    .local v0, "stateChanged":Z
    if-nez v0, :cond_14

    iget-object v3, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v3, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 860
    return v1

    .line 864
    :cond_14
    new-instance v3, Landroid/view/InsetsState;

    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v3, v4, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 865
    .local v3, "lastState":Landroid/view/InsetsState;
    invoke-direct {p0, p1}, Landroid/view/InsetsController;->updateState(Landroid/view/InsetsState;)V

    .line 866
    invoke-direct {p0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    .line 867
    invoke-virtual {p0}, Landroid/view/InsetsController;->updateCompatSysUiVisibility()V

    .line 869
    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v4, v3, v1, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v1

    if-nez v1, :cond_48

    .line 872
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 873
    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 876
    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    iget-object v4, p0, Landroid/view/InsetsController;->mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

    invoke-static {v1, p1, v4}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    .line 879
    :cond_48
    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 880
    return v2
.end method

.method public blacklist onWindowFocusGained(Z)V
    .registers 3
    .param p1, "hasViewFocused"    # Z

    .line 1948
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    .line 1949
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .registers 2

    .line 1955
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    .line 1956
    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 2316
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    .line 2317
    return-void
.end method

.method public whitelist removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 2310
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2311
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2312
    return-void
.end method

.method public blacklist reportPerceptible(IZ)V
    .registers 7
    .param p1, "types"    # I
    .param p2, "perceptible"    # Z

    .line 2321
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2322
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 2323
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 2324
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_1b

    .line 2325
    invoke-virtual {v2, p2}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 2322
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2328
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method public blacklist scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .registers 4
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 2187
    iget-boolean v0, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    if-nez v0, :cond_1b

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    goto :goto_1b

    .line 2192
    :cond_c
    iget-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    if-nez v0, :cond_1a

    .line 2193
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v1, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->postInsetsAnimationCallback(Ljava/lang/Runnable;)V

    .line 2194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 2196
    :cond_1a
    return-void

    .line 2188
    :cond_1b
    :goto_1b
    iget-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2189
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 2190
    return-void
.end method

.method public blacklist setAnimationsDisabled(Z)V
    .registers 2
    .param p1, "disable"    # Z

    .line 2271
    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    .line 2272
    return-void
.end method

.method public blacklist setImeCaptionBarInsetsHeight(I)V
    .registers 15
    .param p1, "height"    # I

    .line 2226
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2227
    .local v0, "newFrame":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v2, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 2228
    .local v1, "source":Landroid/view/InsetsSource;
    iget v2, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    if-ne v2, p1, :cond_2e

    if-eqz v1, :cond_93

    .line 2229
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    .line 2230
    :cond_2e
    iput p1, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    .line 2231
    iget v2, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    const/4 v3, 0x1

    if-eqz v2, :cond_6e

    .line 2232
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v4, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v2

    .line 2233
    invoke-virtual {v2, v0}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 2234
    sget v2, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v5

    new-instance v6, Landroid/view/InsetsSourceControl;

    sget v7, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    .line 2235
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v8

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    sget-object v12, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/view/InsetsSourceControl;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;)V

    new-array v7, v3, [I

    new-array v8, v3, [I

    new-array v9, v3, [I

    new-array v10, v3, [I

    .line 2234
    invoke-virtual/range {v5 .. v10}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    goto :goto_8e

    .line 2240
    :cond_6e
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v4, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2241
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    sget v4, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/InsetsSourceConsumer;

    .line 2242
    .local v4, "sourceConsumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v4, :cond_8e

    .line 2243
    new-array v6, v3, [I

    new-array v7, v3, [I

    new-array v8, v3, [I

    new-array v9, v3, [I

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    .line 2246
    .end local v4    # "sourceConsumer":Landroid/view/InsetsSourceConsumer;
    :cond_8e
    :goto_8e
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 2248
    :cond_93
    return-void
.end method

.method public blacklist setPredictiveBackImeHideAnimInProgress(Z)V
    .registers 7
    .param p1, "isInProgress"    # Z

    .line 1102
    iput-boolean p1, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    .line 1103
    if-eqz p1, :cond_2a

    .line 1109
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_2a

    .line 1110
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1111
    .local v2, "runner":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_27

    .line 1112
    invoke-interface {v2, v1}, Landroid/view/InsetsAnimationControlRunner;->updateLayoutInsetsDuringAnimation(I)V

    .line 1113
    goto :goto_2a

    .line 1109
    .end local v2    # "runner":Landroid/view/InsetsAnimationControlRunner;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1117
    .end local v0    # "i":I
    :cond_2a
    :goto_2a
    return-void
.end method

.method public blacklist setRequestedVisibleTypes(II)V
    .registers 7
    .param p1, "visibleTypes"    # I
    .param p2, "mask"    # I

    .line 1988
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    .line 1990
    .local v0, "requestedVisibleTypes":I
    iget v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    if-eq v1, v0, :cond_47

    .line 1991
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_30

    iget v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_30

    .line 1992
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_30

    .line 1996
    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getImeOnBackInvokedDispatcher()Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v1

    .line 1997
    invoke-virtual {v1}, Landroid/window/ImeOnBackInvokedDispatcher;->undoPreliminaryClear()V

    .line 1999
    :cond_30
    sget-object v1, Landroid/view/ViewProtoLogGroups;->IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2000
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1999
    const-string v3, "Setting requestedVisibleTypes to %d (was %d)"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2001
    iput v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 2003
    :cond_47
    return-void
.end method

.method public whitelist setSystemBarsAppearance(II)V
    .registers 4
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 2200
    iget v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    .line 2201
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    .line 2202
    return-void
.end method

.method public blacklist setSystemBarsAppearanceFromResource(II)V
    .registers 5
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 2207
    iget v0, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    .line 2210
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v1, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    not-int v1, v1

    and-int/2addr v1, p2

    invoke-interface {v0, p1, v1}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    .line 2211
    return-void
.end method

.method public whitelist setSystemBarsBehavior(I)V
    .registers 3
    .param p1, "behavior"    # I

    .line 2252
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    .line 2253
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->setSystemBarsBehavior(I)V

    .line 2254
    return-void
.end method

.method public blacklist setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 1628
    iput-object p1, p0, Landroid/view/InsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 1629
    return-void
.end method

.method public whitelist show(I)V
    .registers 4
    .param p1, "types"    # I

    .line 1125
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/InsetsController;->show(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1126
    return-void
.end method

.method public blacklist show(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 16
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1131
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show(ime(), fromIme="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InsetsController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    if-nez p3, :cond_3c

    .line 1135
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1138
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v2

    .line 1135
    const/4 v3, 0x5

    const/16 v4, 0x1a

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p3

    move-object v7, p3

    goto :goto_3d

    .line 1142
    :cond_3c
    move-object v7, p3

    .end local p3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v7, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_3d
    const-string p3, "IC.showRequestFromApiToImeReady"

    const-wide/16 v2, 0x8

    const/4 v0, 0x0

    if-eqz p2, :cond_5d

    .line 1143
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1144
    invoke-interface {v5}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 1143
    const-string v6, "InsetsController#show"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v5, v8}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1145
    invoke-static {v2, v3, p3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1146
    const-string p3, "IC.showRequestFromIme"

    invoke-static {v2, v3, p3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_65

    .line 1148
    :cond_5d
    const-string v4, "IC.showRequestFromApi"

    invoke-static {v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1149
    invoke-static {v2, v3, p3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1151
    :goto_65
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result p3

    if-nez p3, :cond_88

    .line 1153
    if-eqz p2, :cond_88

    iget-object p3, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz p3, :cond_88

    .line 1154
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p3

    and-int/2addr p3, p1

    if-eqz p3, :cond_84

    .line 1155
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object p3

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p3, v7, v0}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1157
    :cond_84
    invoke-direct {p0, v7}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1158
    return-void

    .line 1164
    :cond_88
    const/4 p3, 0x0

    .line 1165
    .local p3, "typesReady":I
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 1166
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    .line 1165
    invoke-virtual {v2, v3, v4}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v8

    .line 1167
    .local v8, "imeVisible":Z
    const/4 v2, 0x1

    move v3, p3

    .end local p3    # "typesReady":I
    .local v2, "type":I
    .local v3, "typesReady":I
    :goto_9b
    const/16 p3, 0x200

    if-gt v2, p3, :cond_102

    .line 1168
    and-int p3, p1, v2

    if-nez p3, :cond_a5

    .line 1169
    goto/16 :goto_ff

    .line 1171
    :cond_a5
    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result p3

    .line 1172
    .local p3, "animationType":I
    iget v4, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_b0

    move v4, v1

    goto :goto_b1

    :cond_b0
    move v4, v0

    .line 1173
    .local v4, "requestedVisible":Z
    :goto_b1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    if-ne v2, v5, :cond_b9

    move v5, v1

    goto :goto_ba

    :cond_b9
    move v5, v0

    .line 1174
    .local v5, "isIme":Z
    :goto_ba
    if-eqz v4, :cond_c5

    if-eqz v5, :cond_c0

    if-eqz v8, :cond_c5

    :cond_c0
    const/4 v6, -0x1

    if-ne p3, v6, :cond_c5

    move v6, v1

    goto :goto_c6

    :cond_c5
    move v6, v0

    .line 1176
    .local v6, "alreadyVisible":Z
    :goto_c6
    if-nez p3, :cond_ca

    move v9, v1

    goto :goto_cb

    :cond_ca
    move v9, v0

    .line 1177
    .local v9, "alreadyAnimatingShow":Z
    :goto_cb
    const/16 v10, 0x20

    if-nez v6, :cond_f6

    if-eqz v9, :cond_d2

    goto :goto_f6

    .line 1189
    :cond_d2
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v11

    if-nez v11, :cond_eb

    .line 1190
    if-eqz p2, :cond_eb

    const/4 v11, 0x2

    if-ne p3, v11, :cond_eb

    iget-boolean v11, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    if-nez v11, :cond_eb

    .line 1193
    if-eqz v5, :cond_ff

    .line 1194
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v11

    invoke-interface {v11, v7, v10}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_ff

    .line 1200
    :cond_eb
    if-eqz v5, :cond_f4

    .line 1201
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v11

    invoke-interface {v11, v7, v10}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1204
    :cond_f4
    or-int/2addr v3, v2

    goto :goto_ff

    .line 1183
    :cond_f6
    :goto_f6
    if-eqz v5, :cond_ff

    .line 1184
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v11

    invoke-interface {v11, v7, v10}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1167
    .end local v4    # "requestedVisible":Z
    .end local v5    # "isIme":Z
    .end local v6    # "alreadyVisible":Z
    .end local v9    # "alreadyAnimatingShow":Z
    .end local p3    # "animationType":I
    :cond_ff
    :goto_ff
    shl-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 1207
    .end local v2    # "type":I
    :cond_102
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result p3

    if-nez p3, :cond_10a

    if-eqz p2, :cond_11d

    :cond_10a
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p3

    and-int/2addr p3, v3

    if-eqz p3, :cond_11d

    .line 1209
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object p3

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p3, v7, v0}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1211
    :cond_11d
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v5, p2

    .end local p2    # "fromIme":Z
    .local v5, "fromIme":Z
    invoke-virtual/range {v2 .. v7}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1213
    return-void
.end method

.method public blacklist startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .registers 14
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p3, "types"    # I
    .param p4, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p5, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/view/InsetsAnimationControlRunner;",
            ":",
            "Landroid/view/InternalInsetsAnimationController;",
            ">(TT;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/WindowInsetsAnimation;",
            "Landroid/view/WindowInsetsAnimation$Bounds;",
            ")V"
        }
    .end annotation

    .line 2150
    .local p1, "runner":Landroid/view/InsetsAnimationControlRunner;, "TT;"
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 2151
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda11;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "runner":Landroid/view/InsetsAnimationControlRunner;, "TT;"
    .end local p2    # "listener":Landroid/view/WindowInsetsAnimationControlListener;
    .end local p3    # "types":I
    .end local p4    # "animation":Landroid/view/WindowInsetsAnimation;
    .end local p5    # "bounds":Landroid/view/WindowInsetsAnimation$Bounds;
    .local v3, "runner":Landroid/view/InsetsAnimationControlRunner;, "TT;"
    .local v4, "types":I
    .local v5, "animation":Landroid/view/WindowInsetsAnimation;
    .local v6, "bounds":Landroid/view/WindowInsetsAnimation$Bounds;
    .local v7, "listener":Landroid/view/WindowInsetsAnimationControlListener;
    invoke-direct/range {v1 .. v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda11;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->addOnPreDrawRunnable(Ljava/lang/Runnable;)V

    .line 2174
    return-void
.end method

.method public blacklist updateCompatSysUiVisibility()V
    .registers 6

    .line 1936
    iget-boolean v0, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    if-eqz v0, :cond_16

    .line 1937
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 1938
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v1, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    iget v2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iget v3, p0, Landroid/view/InsetsController;->mControllableTypes:I

    iget v4, p0, Landroid/view/InsetsController;->mExistingTypes:I

    not-int v4, v4

    or-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/view/InsetsController$Host;->updateCompatSysUiVisibility(III)V

    .line 1942
    :cond_16
    return-void
.end method
