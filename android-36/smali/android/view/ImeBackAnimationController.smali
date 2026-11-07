.class public Landroid/view/ImeBackAnimationController;
.super Ljava/lang/Object;
.source "ImeBackAnimationController.java"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# static fields
.field private static final blacklist BACK_GESTURE:Landroid/view/animation/Interpolator;

.field private static final blacklist EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

.field private static final blacklist PEEK_FRACTION:F = 0.1f

.field private static final blacklist POST_COMMIT_CANCEL_DURATION_MS:I = 0x32

.field private static final blacklist POST_COMMIT_DURATION_MS:I = 0xc8

.field private static final blacklist TAG:Ljava/lang/String; = "ImeBackAnimationController"


# instance fields
.field private final blacklist mInsetsController:Landroid/view/InsetsController;

.field private blacklist mIsPreCommitAnimationInProgress:Z

.field private blacklist mLastProgress:F

.field private blacklist mPostCommitAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mStartRootScrollY:I

.field private blacklist mTriggerBack:Z

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;

.field private blacklist mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;


# direct methods
.method public static synthetic blacklist $r8$lambda$k6hhw-kcx_rhv-_zA6i_ff-iUwA(Landroid/view/ImeBackAnimationController;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->lambda$startPostCommitAnim$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPreCommitAnimationInProgress(Landroid/view/ImeBackAnimationController;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastProgress(Landroid/view/ImeBackAnimationController;)F
    .registers 1

    iget p0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerBack(Landroid/view/ImeBackAnimationController;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Landroid/view/ImeBackAnimationController;)Landroid/view/ViewRootImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowInsetsAnimationController(Landroid/view/ImeBackAnimationController;)Landroid/view/WindowInsetsAnimationController;
    .registers 1

    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStartRootScrollY(Landroid/view/ImeBackAnimationController;I)V
    .registers 2

    iput p1, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowInsetsAnimationController(Landroid/view/ImeBackAnimationController;Landroid/view/WindowInsetsAnimationController;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misAdjustPan(Landroid/view/ImeBackAnimationController;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isAdjustPan()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreset(Landroid/view/ImeBackAnimationController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->reset()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPreCommitProgress(Landroid/view/ImeBackAnimationController;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->setPreCommitProgress(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartPostCommitAnim(Landroid/view/ImeBackAnimationController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->startPostCommitAnim(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 60
    new-instance v0, Landroid/view/animation/BackGestureInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BackGestureInterpolator;-><init>()V

    sput-object v0, Landroid/view/ImeBackAnimationController;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/ImeBackAnimationController;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/InsetsController;)V
    .registers 4
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "insetsController"    # Landroid/view/InsetsController;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    .line 66
    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    .line 69
    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    .line 70
    iput v0, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    .line 73
    iput-object p2, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    .line 74
    iput-object p1, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 75
    return-void
.end method

.method private blacklist isAdjustPan()Z
    .registers 3

    .line 286
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist isBackAnimationAllowed()Z
    .registers 4

    .line 268
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 269
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ne v0, v1, :cond_17

    .line 272
    return v2

    .line 279
    :cond_17
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 281
    invoke-virtual {v0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_33
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-nez v0, :cond_3c

    :cond_3b
    const/4 v2, 0x1

    .line 279
    :cond_3c
    return v2
.end method

.method private blacklist isHideAnimationInProgress()Z
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private synthetic blacklist lambda$startPostCommitAnim$0(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 204
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_12

    .line 205
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->setInterpolatedProgress(F)V

    goto :goto_15

    .line 207
    :cond_12
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->reset()V

    .line 209
    :goto_15
    return-void
.end method

.method private blacklist notifyHideIme()V
    .registers 6

    .line 236
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x34

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 245
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    .line 246
    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->notifyImeHidden(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 247
    return-void
.end method

.method private blacklist reset()V
    .registers 3

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    .line 251
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->resetPostCommitAnimator()V

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    .line 254
    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    .line 255
    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1, v0}, Landroid/view/InsetsController;->setPredictiveBackImeHideAnimInProgress(Z)V

    .line 256
    iput v0, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    .line 257
    return-void
.end method

.method private blacklist resetPostCommitAnimator()V
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 261
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    .line 264
    :cond_c
    return-void
.end method

.method private blacklist setInterpolatedProgress(F)V
    .registers 10
    .param p1, "progress"    # F

    .line 165
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_39

    .line 166
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    int-to-float v0, v0

    .line 167
    .local v0, "hiddenY":F
    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    int-to-float v1, v1

    .line 168
    .local v1, "shownY":F
    sub-float v2, v1, v0

    .line 169
    .local v2, "imeHeight":F
    mul-float v3, p1, v2

    sub-float v3, v2, v3

    float-to-int v3, v3

    .line 170
    .local v3, "newY":I
    iget v4, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_2f

    .line 171
    iget-object v4, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget v6, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    int-to-float v6, v6

    sub-float v7, v5, p1

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/view/ViewRootImpl;->setScrollY(I)V

    .line 173
    :cond_2f
    iget-object v4, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    const/4 v6, 0x0

    invoke-static {v6, v6, v6, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v6

    invoke-interface {v4, v6, v5, p1}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    .line 176
    .end local v0    # "hiddenY":F
    .end local v1    # "shownY":F
    .end local v2    # "imeHeight":F
    .end local v3    # "newY":I
    :cond_39
    return-void
.end method

.method private blacklist setPreCommitProgress(F)V
    .registers 4
    .param p1, "progress"    # F

    .line 160
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 161
    :cond_7
    sget-object v0, Landroid/view/ImeBackAnimationController;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->setInterpolatedProgress(F)V

    .line 162
    return-void
.end method

.method private blacklist startPostCommitAnim(Z)V
    .registers 10
    .param p1, "triggerBack"    # Z

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    .line 180
    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v1, :cond_97

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_97

    .line 184
    :cond_f
    iput-boolean p1, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    .line 185
    if-eqz p1, :cond_16

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 186
    .local v1, "targetProgress":F
    :goto_17
    sget-object v2, Landroid/view/ImeBackAnimationController;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    iget v3, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    .line 187
    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v0

    const/4 v2, 0x1

    aput v1, v3, v2

    .line 186
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    .line 190
    if-eqz p1, :cond_4c

    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    .line 191
    invoke-interface {v3}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    if-eqz v3, :cond_4c

    .line 192
    sget-object v3, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 193
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    const-wide/16 v4, 0x11d

    .local v4, "duration":J
    goto :goto_57

    .line 194
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v4    # "duration":J
    :cond_4c
    if-eqz p1, :cond_53

    .line 195
    sget-object v3, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 196
    .restart local v3    # "interpolator":Landroid/view/animation/Interpolator;
    const-wide/16 v4, 0xc8

    .restart local v4    # "duration":J
    goto :goto_57

    .line 198
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v4    # "duration":J
    :cond_53
    sget-object v3, Landroid/view/ImeBackAnimationController;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 199
    .restart local v3    # "interpolator":Landroid/view/animation/Interpolator;
    const-wide/16 v4, 0x32

    .line 201
    .restart local v4    # "duration":J
    :goto_57
    iget-object v6, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 202
    iget-object v6, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 203
    iget-object v6, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/ImeBackAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Landroid/view/ImeBackAnimationController$$ExternalSyntheticLambda0;-><init>(Landroid/view/ImeBackAnimationController;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    iget-object v6, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/ImeBackAnimationController$2;

    invoke-direct {v7, p0, p1}, Landroid/view/ImeBackAnimationController$2;-><init>(Landroid/view/ImeBackAnimationController;Z)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 225
    iget-object v6, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 226
    if-eqz p1, :cond_96

    .line 227
    iget-object v6, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v6, v2}, Landroid/view/InsetsController;->setPredictiveBackImeHideAnimInProgress(Z)V

    .line 228
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->notifyHideIme()V

    .line 230
    iget-object v6, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 231
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    invoke-virtual {v0, v6, v2}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    .line 233
    :cond_96
    return-void

    .line 181
    .end local v1    # "targetProgress":F
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v4    # "duration":J
    :cond_97
    :goto_97
    iput-boolean p1, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    .line 182
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ImeBackAnimationController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLastProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mTriggerBack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsPreCommitAnimationInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mStartRootScrollY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isBackAnimationAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isAdjustPan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isAdjustPan()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isHideAnimationInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method blacklist isAnimationInProgress()Z
    .registers 2

    .line 295
    iget-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public whitelist onBackCancelled()V
    .registers 2

    .line 137
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 138
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->startPostCommitAnim(Z)V

    .line 139
    return-void
.end method

.method public whitelist onBackInvoked()V
    .registers 2

    .line 143
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    if-nez v0, :cond_b

    goto :goto_10

    .line 149
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->startPostCommitAnim(Z)V

    goto :goto_13

    .line 147
    :cond_10
    :goto_10
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->notifyHideIme()V

    .line 151
    :goto_13
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 154
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getImeOnBackInvokedDispatcher()Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->preliminaryClear()V

    .line 157
    :cond_2a
    return-void
.end method

.method public whitelist onBackProgressed(Landroid/window/BackEvent;)V
    .registers 3
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 131
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v0

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    .line 132
    iget v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->setPreCommitProgress(F)V

    .line 133
    return-void
.end method

.method public whitelist onBackStarted(Landroid/window/BackEvent;)V
    .registers 13
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 79
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 84
    const-string v0, "ImeBackAnimationController"

    const-string v1, "onBackStarted -> not playing predictive back animation due to softinput mode adjustResize AND no animation callback registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 88
    :cond_e
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 90
    return-void

    .line 92
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    .line 93
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_24

    .line 97
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->resetPostCommitAnimator()V

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->setPreCommitProgress(F)V

    .line 99
    return-void

    .line 101
    :cond_24
    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    new-instance v4, Landroid/view/ImeBackAnimationController$1;

    invoke-direct {v4, p0}, Landroid/view/ImeBackAnimationController$1;-><init>(Landroid/view/ImeBackAnimationController;)V

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V

    .line 127
    return-void
.end method
