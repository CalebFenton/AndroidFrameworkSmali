.class public Landroid/window/WindowOnBackInvokedDispatcher;
.super Ljava/lang/Object;
.source "WindowOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackInvokedDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowOnBackInvokedDispatcher$Checker;,
        Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

.field private static final blacklist ENABLE_PREDICTIVE_BACK:Z

.field private static final blacklist PREDICTIVE_BACK_FALLBACK_WINDOW_ATTRIBUTE:Z

.field private static final blacklist TAG:Ljava/lang/String; = "WindowOnBackDispatcher"


# instance fields
.field private final blacklist mAllCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/window/OnBackInvokedCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBackSwipeLinearThreshold:F

.field private blacklist mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

.field private blacklist mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNonLinearProgressFactor:F

.field public final blacklist mOnBackInvokedCallbacks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public final blacklist mProgressAnimator:Landroid/window/BackProgressAnimator;

.field public blacklist mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

.field public final blacklist mTouchTracker:Landroid/window/BackTouchTracker;

.field private blacklist mViewRoot:Landroid/view/ViewRootImpl;

.field private blacklist mWindow:Landroid/view/IWindow;

.field private blacklist mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method public static synthetic blacklist $r8$lambda$bOxWKUMqKOfZPPZ_SwgF6n3M8DE(Landroid/window/WindowOnBackInvokedDispatcher;)Z
    .registers 1

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->callOnKeyPreIme()Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$eYXU65Rm1jI1l58v83gSwB5aHq0(Landroid/window/WindowOnBackInvokedDispatcher;)V
    .registers 1

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->invokeSystemNavigationObserverCallback()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 89
    nop

    .line 90
    const-string v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    sput-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ENABLE_PREDICTIVE_BACK:Z

    .line 91
    nop

    .line 92
    const-string v0, "persist.wm.debug.predictive_back_always_enforce"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    sput-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

    .line 93
    nop

    .line 94
    const-string v0, "persist.wm.debug.predictive_back_fallback_window_attribute"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    sput-boolean v1, Landroid/window/WindowOnBackInvokedDispatcher;->PREDICTIVE_BACK_FALLBACK_WINDOW_ATTRIBUTE:Z

    .line 93
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/window/BackTouchTracker;

    invoke-direct {v0}, Landroid/window/BackTouchTracker;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    .line 82
    new-instance v0, Landroid/window/BackProgressAnimator;

    invoke-direct {v0}, Landroid/window/BackProgressAnimator;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-direct {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method private blacklist callOnKeyPreIme()Z
    .registers 3

    .line 365
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 366
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->injectBackKeyEvents(Z)Z

    move-result v0

    return v0

    .line 368
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist invokeSystemNavigationObserverCallback()V
    .registers 2

    .line 387
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_9

    .line 388
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    .line 390
    :cond_9
    return-void
.end method

.method public static blacklist isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 660
    move-object v0, p0

    .line 661
    .local v0, "originalContext":Landroid/content/Context;
    :goto_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_11

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_11

    .line 662
    move-object v1, p0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_1

    .line 664
    :cond_11
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1d

    .line 665
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 666
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    :goto_1e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 668
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    .line 669
    invoke-static {v1, v2, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Ljava/util/function/Supplier;)Z

    move-result v3

    .line 668
    return v3
.end method

.method public static blacklist isOnBackInvokedCallbackEnabled(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Ljava/util/function/Supplier;)Z
    .registers 10
    .param p0, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Context;",
            ">;)Z"
        }
    .end annotation

    .line 746
    .local p2, "contextSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Context;>;"
    sget-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ENABLE_PREDICTIVE_BACK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 747
    return v1

    .line 750
    :cond_6
    sget-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 751
    return v2

    .line 756
    :cond_c
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->hasOnBackInvokedCallbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 757
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v0

    .line 764
    .local v0, "requestsPredictiveBack":Z
    return v0

    .line 768
    .end local v0    # "requestsPredictiveBack":Z
    :cond_19
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v0

    .line 774
    .restart local v0    # "requestsPredictiveBack":Z
    if-eqz v0, :cond_20

    .line 775
    return v2

    .line 778
    :cond_20
    sget-boolean v3, Landroid/window/WindowOnBackInvokedDispatcher;->PREDICTIVE_BACK_FALLBACK_WINDOW_ATTRIBUTE:Z

    if-eqz v3, :cond_47

    .line 789
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 790
    .local v3, "context":Landroid/content/Context;
    const/4 v4, 0x1

    .line 791
    .local v4, "windowSwipeToDismiss":Z
    if-eqz v3, :cond_46

    .line 792
    const v5, 0x10103f3

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 794
    .local v5, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    if-lez v6, :cond_43

    .line 795
    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    move v4, v1

    .line 797
    :cond_43
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 804
    .end local v5    # "array":Landroid/content/res/TypedArray;
    :cond_46
    move v0, v4

    .line 806
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "windowSwipeToDismiss":Z
    :cond_47
    return v0
.end method

.method static synthetic blacklist lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/window/OnBackInvokedCallback;Ljava/lang/Integer;)V
    .registers 6
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .param p1, "innerPrefix"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/window/OnBackInvokedCallback;
    .param p3, "priority"    # Ljava/lang/Integer;

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method static synthetic blacklist lambda$isOnBackInvokedCallbackEnabled$1(Landroid/content/Context;)Landroid/content/Context;
    .registers 1
    .param p0, "originalContext"    # Landroid/content/Context;

    .line 670
    return-object p0
.end method

.method private blacklist registerSystemNavigationObserverCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 183
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 190
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->removeCallbackInternal(Landroid/window/OnBackInvokedCallback;)V

    .line 192
    :cond_e
    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    .line 193
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist removeCallbackInternal(Landroid/window/OnBackInvokedCallback;)V
    .registers 8
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 287
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    .line 288
    .local v0, "previousTopCallback":Landroid/window/OnBackInvokedCallback;
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 289
    .local v1, "priority":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 290
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/OnBackInvokedCallback;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 292
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_22
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    if-ne v0, p1, :cond_4c

    .line 300
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v3}, Landroid/window/BackProgressAnimator;->removeOnBackCancelledFinishCallback()V

    .line 301
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v3}, Landroid/window/BackProgressAnimator;->removeOnBackInvokedFinishCallback()V

    .line 302
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->sendCancelledIfInProgress(Landroid/window/OnBackInvokedCallback;)V

    .line 303
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v5, v4}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda3;-><init>(Landroid/window/BackProgressAnimator;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 306
    :cond_4c
    return-void
.end method

.method private blacklist sendCancelledIfInProgress(Landroid/window/OnBackInvokedCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 318
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->isBackAnimationInProgress()Z

    move-result v0

    .line 319
    .local v0, "isInProgress":Z
    if-eqz v0, :cond_13

    instance-of v1, p1, Landroid/window/OnBackAnimationCallback;

    if-eqz v1, :cond_13

    .line 320
    move-object v1, p1

    check-cast v1, Landroid/window/OnBackAnimationCallback;

    .line 321
    .local v1, "animatedCallback":Landroid/window/OnBackAnimationCallback;
    invoke-interface {v1}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    .line 325
    .end local v1    # "animatedCallback":Landroid/window/OnBackAnimationCallback;
    goto :goto_36

    .line 326
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCancelIfRunning: isInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowOnBackDispatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_36
    return-void
.end method

.method private blacklist setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 14
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 393
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    if-nez v0, :cond_b

    move-object v5, p1

    goto/16 :goto_7b

    .line 397
    :cond_b
    const/4 v0, 0x0

    .line 398
    .local v0, "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    if-eqz p1, :cond_57

    .line 399
    :try_start_e
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 400
    .local v1, "priority":I
    const/4 v2, 0x0

    .line 401
    .local v2, "overrideAnimation":I
    instance-of v3, p1, Landroid/window/SystemOverrideOnBackInvokedCallback;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_54

    if-eqz v3, :cond_2b

    .line 402
    :try_start_1f
    move-object v3, p1

    check-cast v3, Landroid/window/SystemOverrideOnBackInvokedCallback;

    .line 403
    invoke-interface {v3}, Landroid/window/SystemOverrideOnBackInvokedCallback;->overrideBehavior()I

    move-result v3
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_28

    move v2, v3

    goto :goto_2b

    .line 418
    .end local v0    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v1    # "priority":I
    .end local v2    # "overrideAnimation":I
    :catch_28
    move-exception v0

    move-object v5, p1

    goto :goto_61

    .line 405
    .restart local v0    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v1    # "priority":I
    .restart local v2    # "overrideAnimation":I
    :cond_2b
    :goto_2b
    const/4 v3, -0x1

    if-eq v1, v3, :cond_33

    if-eqz v2, :cond_31

    goto :goto_33

    :cond_31
    const/4 v3, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v3, 0x1

    :goto_34
    move v11, v3

    .line 407
    .local v11, "isSystemCallback":Z
    :try_start_35
    new-instance v4, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;

    iget-object v6, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    iget-object v7, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    iget-object v8, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v9, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda0;-><init>(Landroid/window/WindowOnBackInvokedDispatcher;)V

    new-instance v10, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda1;-><init>(Landroid/window/WindowOnBackInvokedDispatcher;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_47} :catch_54

    move-object v5, p1

    .end local p1    # "callback":Landroid/window/OnBackInvokedCallback;
    .local v5, "callback":Landroid/window/OnBackInvokedCallback;
    :try_start_48
    invoke-direct/range {v4 .. v11}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;-><init>(Landroid/window/OnBackInvokedCallback;Landroid/window/BackTouchTracker;Landroid/window/BackProgressAnimator;Landroid/os/Handler;Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;Z)V

    .line 411
    .local v4, "iCallback":Landroid/window/IOnBackInvokedCallback;
    new-instance p1, Landroid/window/OnBackInvokedCallbackInfo;

    instance-of v3, v5, Landroid/window/OnBackAnimationCallback;

    invoke-direct {p1, v4, v1, v3, v2}, Landroid/window/OnBackInvokedCallbackInfo;-><init>(Landroid/window/IOnBackInvokedCallback;IZI)V

    move-object v0, p1

    goto :goto_58

    .line 418
    .end local v0    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v1    # "priority":I
    .end local v2    # "overrideAnimation":I
    .end local v4    # "iCallback":Landroid/window/IOnBackInvokedCallback;
    .end local v5    # "callback":Landroid/window/OnBackInvokedCallback;
    .end local v11    # "isSystemCallback":Z
    .restart local p1    # "callback":Landroid/window/OnBackInvokedCallback;
    :catch_54
    move-exception v0

    move-object v5, p1

    .end local p1    # "callback":Landroid/window/OnBackInvokedCallback;
    .restart local v5    # "callback":Landroid/window/OnBackInvokedCallback;
    goto :goto_61

    .line 398
    .end local v5    # "callback":Landroid/window/OnBackInvokedCallback;
    .restart local v0    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local p1    # "callback":Landroid/window/OnBackInvokedCallback;
    :cond_57
    move-object v5, p1

    .line 417
    .end local p1    # "callback":Landroid/window/OnBackInvokedCallback;
    .restart local v5    # "callback":Landroid/window/OnBackInvokedCallback;
    :goto_58
    iget-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    invoke-interface {p1, v1, v0}, Landroid/view/IWindowSession;->setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_5f} :catch_60

    .line 420
    .end local v0    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    goto :goto_79

    .line 418
    :catch_60
    move-exception v0

    .line 419
    .local v0, "e":Landroid/os/RemoteException;
    :goto_61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set OnBackInvokedCallback to WM. Error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WindowOnBackDispatcher"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_79
    return-void

    .line 393
    .end local v5    # "callback":Landroid/window/OnBackInvokedCallback;
    .restart local p1    # "callback":Landroid/window/OnBackInvokedCallback;
    :cond_7a
    move-object v5, p1

    .line 394
    .end local p1    # "callback":Landroid/window/OnBackInvokedCallback;
    .restart local v5    # "callback":Landroid/window/OnBackInvokedCallback;
    :goto_7b
    return-void
.end method


# virtual methods
.method public blacklist attachToWindow(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/ViewRootImpl;Landroid/view/ImeBackAnimationController;)V
    .registers 7
    .param p1, "windowSession"    # Landroid/view/IWindowSession;
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p4, "imeBackAnimationController"    # Landroid/view/ImeBackAnimationController;

    .line 151
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    .line 153
    iput-object p2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    .line 154
    iput-object p3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 155
    iput-object p4, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    .line 156
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 157
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 159
    :cond_1a
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public blacklist clear()V
    .registers 6

    .line 338
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 340
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v1}, Landroid/window/ImeOnBackInvokedDispatcher;->clear()V

    .line 341
    iput-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 343
    :cond_f
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 344
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    .line 345
    .local v1, "topCallback":Landroid/window/OnBackInvokedCallback;
    if-eqz v1, :cond_21

    .line 346
    invoke-direct {p0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->sendCancelledIfInProgress(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_28

    .line 349
    :cond_21
    const-string v3, "WindowOnBackDispatcher"

    const-string v4, "There is no topCallback, even if mAllCallbacks is not empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_28
    invoke-direct {p0, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 357
    .end local v1    # "topCallback":Landroid/window/OnBackInvokedCallback;
    :cond_2b
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda3;-><init>(Landroid/window/BackProgressAnimator;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 359
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 360
    iput-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    .line 361
    monitor-exit v0

    .line 362
    return-void

    .line 361
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public blacklist detachFromWindow()V
    .registers 3

    .line 164
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_3
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->clear()V

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    .line 167
    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    .line 168
    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 169
    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    .line 170
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WindowOnBackDispatcher:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 484
    :try_start_2c
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<None>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    monitor-exit v1

    return-void

    .line 489
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Top Callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Callbacks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    new-instance v3, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v3, p2, v0}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 494
    monitor-exit v1

    .line 495
    return-void

    .line 494
    :catchall_8c
    move-exception v2

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_2c .. :try_end_8e} :catchall_8c

    throw v2
.end method

.method public blacklist getTopCallback()Landroid/window/OnBackInvokedCallback;
    .registers 7

    .line 424
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 426
    monitor-exit v0

    return-object v2

    .line 428
    :cond_e
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 429
    .local v3, "priority":Ljava/lang/Integer;
    iget-object v4, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v4, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 430
    .local v4, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/OnBackInvokedCallback;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_40

    .line 431
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/OnBackInvokedCallback;

    monitor-exit v0

    return-object v1

    .line 433
    .end local v3    # "priority":Ljava/lang/Integer;
    .end local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/OnBackInvokedCallback;>;"
    :cond_40
    goto :goto_18

    .line 434
    :cond_41
    monitor-exit v0

    .line 435
    return-object v2

    .line 434
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public blacklist hasImeOnBackInvokedDispatcher()Z
    .registers 2

    .line 682
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isBackGestureInProgress()Z
    .registers 3

    .line 312
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v1}, Landroid/window/BackTouchTracker;->isActive()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 314
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist isOnBackInvokedCallbackEnabled()Z
    .registers 4

    .line 467
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->-$$Nest$mgetContext(Landroid/window/WindowOnBackInvokedDispatcher$Checker;)Landroid/content/Context;

    move-result-object v0

    .line 468
    .local v0, "hostContext":Landroid/content/Context;
    if-nez v0, :cond_11

    .line 469
    const-string v1, "WindowOnBackDispatcher"

    const-string v2, "OnBackInvokedCallback is disabled, host context is removed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v1, 0x0

    return v1

    .line 472
    :cond_11
    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 457
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 458
    .local v0, "maxDistance":F
    iget v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mBackSwipeLinearThreshold:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 459
    .local v1, "linearDistance":F
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    iget v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mNonLinearProgressFactor:F

    invoke-virtual {v2, v1, v0, v3}, Landroid/window/BackTouchTracker;->setProgressThresholds(FFF)V

    .line 461
    return-void
.end method

.method public blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 128
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isBackGestureInProgress()Z

    move-result v0

    if-eqz v0, :cond_3f

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    goto :goto_3f

    .line 131
    :cond_10
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/window/BackTouchTracker;->update(FF)V

    .line 132
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->shouldUpdateStartLocation()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 135
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->updateStartLocation()V

    .line 137
    :cond_2a
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->isBackAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_33

    .line 138
    return-void

    .line 140
    :cond_33
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->createProgressEvent()Landroid/window/BackMotionEvent;

    move-result-object v0

    .line 141
    .local v0, "backEvent":Landroid/window/BackMotionEvent;
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v1, v0}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    .line 142
    return-void

    .line 129
    .end local v0    # "backEvent":Landroid/window/BackMotionEvent;
    :cond_3f
    :goto_3f
    return-void
.end method

.method public whitelist registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    .registers 4
    .param p1, "priority"    # I
    .param p2, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 177
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 178
    invoke-virtual {p0, p2, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 180
    :cond_b
    return-void
.end method

.method public blacklist registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V
    .registers 8
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;
    .param p2, "priority"    # I

    .line 202
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v1, :cond_e

    .line 204
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v1, p2, p1}, Landroid/window/ImeOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 205
    monitor-exit v0

    return-void

    .line 207
    :cond_e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackPrioritySystemNavigationObserver()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_2a

    .line 208
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackSystemOverrideCallback()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 209
    if-ne p2, v2, :cond_2a

    instance-of v1, p1, Landroid/window/SystemOverrideOnBackInvokedCallback;

    if-eqz v1, :cond_2a

    .line 211
    const-string v1, "WindowOnBackDispatcher"

    const-string v2, "System override callbacks cannot be registered to NAVIGATION_OBSERVER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    monitor-exit v0

    return-void

    .line 216
    :cond_2a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackPrioritySystemNavigationObserver()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 217
    if-ne p2, v2, :cond_37

    .line 218
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerSystemNavigationObserverCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 219
    monitor-exit v0

    return-void

    .line 222
    :cond_37
    instance-of v1, p1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    if-eqz v1, :cond_46

    .line 223
    instance-of v1, p1, Landroid/window/ImeOnBackInvokedDispatcher$DefaultImeOnBackAnimationCallback;

    if-eqz v1, :cond_46

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    if-eqz v1, :cond_46

    .line 226
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    move-object p1, v1

    .line 230
    :cond_46
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 231
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_60
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 236
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/OnBackInvokedCallback;>;"
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 240
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 241
    .local v2, "prevPriority":Ljava/lang/Integer;
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    .end local v2    # "prevPriority":Ljava/lang/Integer;
    :cond_87
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    if-ne v2, p1, :cond_8e

    .line 244
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    .line 251
    :cond_8e
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v2

    .line 252
    .local v2, "previousTopCallback":Landroid/window/OnBackInvokedCallback;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    if-eqz v2, :cond_b0

    if-eq v2, p1, :cond_b3

    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    .line 256
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, p2, :cond_b3

    .line 257
    :cond_b0
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 259
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/OnBackInvokedCallback;>;"
    .end local v2    # "previousTopCallback":Landroid/window/OnBackInvokedCallback;
    :cond_b3
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_b5
    move-exception v1

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_3 .. :try_end_b7} :catchall_b5

    throw v1
.end method

.method public blacklist registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 333
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 334
    return-void
.end method

.method public blacklist setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V
    .registers 4
    .param p1, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 676
    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 677
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/window/ImeOnBackInvokedDispatcher;->setHandler(Landroid/os/Handler;)V

    .line 678
    return-void
.end method

.method public blacklist tryInvokeSystemNavigationObserverCallback()V
    .registers 6

    .line 378
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    .line 379
    .local v0, "topCallback":Landroid/window/OnBackInvokedCallback;
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 380
    .local v1, "callbackPriority":Ljava/lang/Integer;
    instance-of v2, v0, Landroid/window/SystemOverrideOnBackInvokedCallback;

    .line 381
    .local v2, "isSystemOverride":Z
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a

    :cond_18
    if-eqz v2, :cond_1d

    .line 382
    :cond_1a
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->invokeSystemNavigationObserverCallback()V

    .line 384
    :cond_1d
    return-void
.end method

.method public whitelist unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 264
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v1, :cond_e

    .line 266
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v1, p1}, Landroid/window/ImeOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 267
    monitor-exit v0

    return-void

    .line 269
    :cond_e
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    if-ne v1, p1, :cond_17

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    .line 271
    monitor-exit v0

    return-void

    .line 273
    :cond_17
    instance-of v1, p1, Landroid/window/ImeOnBackInvokedDispatcher$DefaultImeOnBackAnimationCallback;

    if-eqz v1, :cond_1e

    .line 274
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    move-object p1, v1

    .line 276
    :cond_1e
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 280
    monitor-exit v0

    return-void

    .line 282
    :cond_28
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->removeCallbackInternal(Landroid/window/OnBackInvokedCallback;)V

    .line 283
    monitor-exit v0

    .line 284
    return-void

    .line 283
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public blacklist updateContext(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 444
    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-direct {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 447
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 448
    const v1, 0x105026d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mBackSwipeLinearThreshold:F

    .line 449
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 450
    .local v1, "typedValue":Landroid/util/TypedValue;
    const v2, 0x1050066

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 451
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mNonLinearProgressFactor:F

    .line 452
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 453
    return-void
.end method
