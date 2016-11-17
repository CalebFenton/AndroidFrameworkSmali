.class Landroid/widget/PopupWindow$PopupDecorView;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDecorView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupDecorView$1;
    }
.end annotation


# instance fields
.field private final mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method static synthetic -get0(Landroid/widget/PopupWindow$PopupDecorView;)Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListenerAdapter;)Landroid/transition/Transition$TransitionListenerAdapter;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView;->mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow$PopupDecorView;->startEnterTransition(Landroid/transition/Transition;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/PopupWindow;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 2231
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    #@2
    .line 2232
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@5
    .line 2395
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView$1;

    #@7
    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$PopupDecorView$1;-><init>(Landroid/widget/PopupWindow$PopupDecorView;)V

    #@a
    .line 2394
    iput-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    #@c
    .line 2231
    return-void
.end method

.method private startEnterTransition(Landroid/transition/Transition;)V
    .locals 4
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 2320
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getChildCount()I

    #@3
    move-result v1

    #@4
    .line 2321
    .local v1, "count":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@7
    .line 2322
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 2323
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@e
    .line 2324
    const/4 v3, 0x4

    #@f
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@12
    .line 2321
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 2327
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@18
    .line 2329
    const/4 v2, 0x0

    #@19
    :goto_1
    if-ge v2, v1, :cond_1

    #@1b
    .line 2330
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v0

    #@1f
    .line 2331
    .restart local v0    # "child":Landroid/view/View;
    const/4 v3, 0x0

    #@20
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@23
    .line 2329
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_1

    #@26
    .line 2319
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelTransitions()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2387
    invoke-static {p0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    #@4
    .line 2389
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2390
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    #@a
    invoke-virtual {v0, v1}, Landroid/transition/Transition$TransitionListenerAdapter;->onTransitionEnd(Landroid/transition/Transition;)V

    #@d
    .line 2386
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 2237
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x4

    #@6
    if-ne v1, v2, :cond_5

    #@8
    .line 2238
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@b
    move-result-object v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 2239
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 2242
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_2

    #@19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_2

    #@1f
    .line 2243
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@22
    move-result-object v0

    #@23
    .line 2244
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    #@25
    .line 2245
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@28
    .line 2247
    :cond_1
    return v3

    #@29
    .line 2248
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@2c
    move-result v1

    #@2d
    if-ne v1, v3, :cond_3

    #@2f
    .line 2249
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@32
    move-result-object v0

    #@33
    .line 2250
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    #@35
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_3

    #@3b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_4

    #@41
    .line 2255
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@44
    move-result v1

    #@45
    return v1

    #@46
    .line 2251
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    #@48
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    #@4b
    .line 2252
    return v3

    #@4c
    .line 2257
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@4f
    move-result v1

    #@50
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2263
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    #@2
    invoke-static {v0}, Landroid/widget/PopupWindow;->-get7(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    #@a
    invoke-static {v0}, Landroid/widget/PopupWindow;->-get7(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 2264
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 2266
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 2271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@4
    move-result v2

    #@5
    float-to-int v0, v2

    #@6
    .line 2272
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@9
    move-result v2

    #@a
    float-to-int v1, v2

    #@b
    .line 2274
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_2

    #@11
    .line 2275
    if-ltz v0, :cond_0

    #@13
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getWidth()I

    #@16
    move-result v2

    #@17
    if-lt v0, v2, :cond_1

    #@19
    .line 2276
    :cond_0
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    #@1b
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    #@1e
    .line 2277
    return v4

    #@1f
    .line 2275
    :cond_1
    if-ltz v1, :cond_0

    #@21
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getHeight()I

    #@24
    move-result v2

    #@25
    if-ge v1, v2, :cond_0

    #@27
    .line 2278
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@2a
    move-result v2

    #@2b
    const/4 v3, 0x4

    #@2c
    if-ne v2, v3, :cond_3

    #@2e
    .line 2279
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    #@30
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    #@33
    .line 2280
    return v4

    #@34
    .line 2282
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@37
    move-result v2

    #@38
    return v2
.end method

.method public requestEnterTransition(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 2290
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@3
    move-result-object v1

    #@4
    .line 2291
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_0

    #@6
    if-eqz p1, :cond_0

    #@8
    .line 2292
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@b
    move-result-object v0

    #@c
    .line 2295
    .local v0, "enterTransition":Landroid/transition/Transition;
    new-instance v2, Landroid/widget/PopupWindow$PopupDecorView$2;

    #@e
    invoke-direct {v2, p0, v0}, Landroid/widget/PopupWindow$PopupDecorView$2;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V

    #@11
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@14
    .line 2289
    .end local v0    # "enterTransition":Landroid/transition/Transition;
    :cond_0
    return-void
.end method

.method public startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/transition/Transition$TransitionListener;)V
    .locals 5
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "anchorRoot"    # Landroid/view/View;
    .param p3, "listener"    # Landroid/transition/Transition$TransitionListener;

    #@0
    .prologue
    .line 2344
    if-nez p1, :cond_0

    #@2
    .line 2345
    return-void

    #@3
    .line 2351
    :cond_0
    iget-object v4, p0, Landroid/widget/PopupWindow$PopupDecorView;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    #@5
    invoke-virtual {p2, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@8
    .line 2355
    new-instance v4, Landroid/widget/PopupWindow$PopupDecorView$3;

    #@a
    invoke-direct {v4, p0, p2, p3}, Landroid/widget/PopupWindow$PopupDecorView$3;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/View;Landroid/transition/Transition$TransitionListener;)V

    #@d
    iput-object v4, p0, Landroid/widget/PopupWindow$PopupDecorView;->mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    #@f
    .line 2366
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@12
    move-result-object v2

    #@13
    .line 2367
    .local v2, "exitTransition":Landroid/transition/Transition;
    iget-object v4, p0, Landroid/widget/PopupWindow$PopupDecorView;->mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    #@15
    invoke-virtual {v2, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@18
    .line 2369
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getChildCount()I

    #@1b
    move-result v1

    #@1c
    .line 2370
    .local v1, "count":I
    const/4 v3, 0x0

    #@1d
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    #@1f
    .line 2371
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    #@22
    move-result-object v0

    #@23
    .line 2372
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@26
    .line 2370
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 2375
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-static {p0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@2c
    .line 2377
    const/4 v3, 0x0

    #@2d
    :goto_1
    if-ge v3, v1, :cond_2

    #@2f
    .line 2378
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    #@32
    move-result-object v0

    #@33
    .line 2379
    .restart local v0    # "child":Landroid/view/View;
    const/4 v4, 0x4

    #@34
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    #@37
    .line 2377
    add-int/lit8 v3, v3, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 2343
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method
