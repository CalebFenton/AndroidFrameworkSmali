.class public Lcom/android/server/wm/BoundsAnimationController;
.super Ljava/lang/Object;
.source "BoundsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;,
        Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;,
        Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ANIMATION_SLOW_DOWN_FACTOR:I = 0x1

.field private static final DEBUG_LOCAL:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppTransition:Lcom/android/server/wm/AppTransition;

.field private final mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

.field private mFinishAnimationAfterTransition:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRunningAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;",
            "Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/BoundsAnimationController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/BoundsAnimationController;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 51
    const-string/jumbo v0, "WindowManager"

    #@3
    .line 50
    sput-object v0, Lcom/android/server/wm/BoundsAnimationController;->TAG:Ljava/lang/String;

    #@5
    .line 47
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/AppTransition;Landroid/os/Handler;)V
    .locals 2
    .param p1, "transition"    # Lcom/android/server/wm/AppTransition;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    #@a
    .line 87
    new-instance v0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;)V

    #@10
    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    #@12
    .line 88
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    #@15
    .line 91
    iput-object p2, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    #@17
    .line 92
    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@19
    .line 93
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@1b
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    #@1d
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    #@20
    .line 90
    return-void
.end method


# virtual methods
.method animateBounds(Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 8
    .param p1, "target"    # Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "animationDuration"    # I

    #@0
    .prologue
    .line 280
    const/4 v5, 0x0

    #@1
    .line 281
    .local v5, "moveToFullscreen":Z
    if-nez p3, :cond_0

    #@3
    .line 282
    new-instance p3, Landroid/graphics/Rect;

    #@5
    .end local p3    # "to":Landroid/graphics/Rect;
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    #@8
    .line 283
    .restart local p3    # "to":Landroid/graphics/Rect;
    invoke-interface {p1, p3}, Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;->getFullScreenBounds(Landroid/graphics/Rect;)V

    #@b
    .line 284
    const/4 v5, 0x1

    #@c
    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v7

    #@12
    check-cast v7, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    #@14
    .line 288
    .local v7, "existing":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    if-eqz v7, :cond_1

    #@16
    const/4 v6, 0x1

    #@17
    .line 293
    .local v6, "replacing":Z
    :goto_0
    if-eqz v6, :cond_3

    #@19
    .line 294
    invoke-virtual {v7, p3}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->isAnimatingTo(Landroid/graphics/Rect;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 299
    return-void

    #@20
    .line 288
    .end local v6    # "replacing":Z
    :cond_1
    const/4 v6, 0x0

    #@21
    goto :goto_0

    #@22
    .line 301
    .restart local v6    # "replacing":Z
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancel()V

    #@25
    .line 304
    :cond_3
    new-instance v0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    #@27
    move-object v1, p0

    #@28
    move-object v2, p1

    #@29
    move-object v3, p2

    #@2a
    move-object v4, p3

    #@2b
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    #@2e
    .line 305
    .local v0, "animator":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    #@30
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 306
    const/4 v1, 0x2

    #@34
    new-array v1, v1, [F

    #@36
    fill-array-data v1, :array_0

    #@39
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setFloatValues([F)V

    #@3c
    .line 307
    const/4 v1, -0x1

    #@3d
    if-eq p4, v1, :cond_4

    #@3f
    .end local p4    # "animationDuration":I
    :goto_1
    mul-int/lit8 v1, p4, 0x1

    #@41
    int-to-long v2, v1

    #@42
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@45
    .line 309
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    #@47
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@4a
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@4d
    .line 310
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->start()V

    #@50
    .line 279
    return-void

    #@51
    .line 308
    .restart local p4    # "animationDuration":I
    :cond_4
    const/16 p4, 0x150

    #@53
    goto :goto_1

    #@54
    .line 306
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
