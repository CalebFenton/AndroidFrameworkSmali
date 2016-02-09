.class final Lcom/android/internal/policy/PhoneWindow$DecorView;
.super Landroid/widget/FrameLayout;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecorView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;
    }
.end annotation


# instance fields
.field private final mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private final mBarEnterExitDuration:I

.field private mChanging:Z

.field mDefaultOpacity:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final mFeatureId:I

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private mLastBottomInset:I

.field private mLastHasBottomStableInset:Z

.field private mLastHasRightStableInset:Z

.field private mLastHasTopStableInset:Z

.field private mLastRightInset:I

.field private mLastTopInset:I

.field private mLastWindowFlags:I

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private final mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

.field private mNavigationGuard:Landroid/view/View;

.field private mPrimaryActionMode:Landroid/view/ActionMode;

.field private mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private mRootScrollY:I

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field private final mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

.field private mStatusGuard:Landroid/view/View;

.field private mWatchingForMenu:Z

.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method static synthetic -get0(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupFloatingActionModeViews()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V
    .locals 9
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2259
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@3
    .line 2260
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@6
    .line 2194
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDefaultOpacity:I

    #@9
    .line 2199
    new-instance v0, Landroid/graphics/Rect;

    #@b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    #@10
    .line 2201
    new-instance v0, Landroid/graphics/Rect;

    #@12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@15
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@17
    .line 2203
    new-instance v0, Landroid/graphics/Rect;

    #@19
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1c
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@1e
    .line 2205
    new-instance v0, Landroid/graphics/Rect;

    #@20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@23
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    #@25
    .line 2228
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@27
    .line 2232
    const-string/jumbo v5, "android:status:background"

    #@2a
    .line 2229
    const/4 v1, 0x4

    #@2b
    const/high16 v2, 0x4000000

    #@2d
    .line 2230
    const/16 v3, 0x30

    #@2f
    .line 2231
    const/4 v4, 0x3

    #@30
    .line 2233
    const v6, 0x102002f

    #@33
    .line 2234
    const/16 v7, 0x400

    #@35
    .line 2228
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/PhoneWindow$ColorViewState;-><init>(IIIILjava/lang/String;II)V

    #@38
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@3a
    .line 2235
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@3c
    .line 2239
    const-string/jumbo v5, "android:navigation:background"

    #@3f
    .line 2236
    const/4 v1, 0x2

    #@40
    const/high16 v2, 0x8000000

    #@42
    .line 2237
    const/16 v3, 0x50

    #@44
    .line 2238
    const/4 v4, 0x5

    #@45
    .line 2240
    const v6, 0x1020030

    #@48
    move v7, v8

    #@49
    .line 2235
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/PhoneWindow$ColorViewState;-><init>(IIIILjava/lang/String;II)V

    #@4c
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@4e
    .line 2247
    new-instance v0, Lcom/android/internal/widget/BackgroundFallback;

    #@50
    invoke-direct {v0}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    #@53
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    #@55
    .line 2249
    iput v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastTopInset:I

    #@57
    .line 2250
    iput v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    #@59
    .line 2251
    iput v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    #@5b
    .line 2252
    iput-boolean v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    #@5d
    .line 2253
    iput-boolean v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    #@5f
    .line 2254
    iput-boolean v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    #@61
    .line 2255
    iput v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastWindowFlags:I

    #@63
    .line 2257
    iput v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mRootScrollY:I

    #@65
    .line 2261
    iput p3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@67
    .line 2264
    const v0, 0x10c000e

    #@6a
    .line 2263
    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@6d
    move-result-object v0

    #@6e
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    #@70
    .line 2266
    const v0, 0x10c000f

    #@73
    .line 2265
    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@76
    move-result-object v0

    #@77
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    #@79
    .line 2268
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7c
    move-result-object v0

    #@7d
    .line 2269
    const v1, 0x10e00b7

    #@80
    .line 2268
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@83
    move-result v0

    #@84
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    #@86
    .line 2259
    return-void
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2799
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2800
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    #@a
    .line 2801
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@c
    .line 2803
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 2804
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 2805
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@16
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@19
    move-result-object v0

    #@1a
    .line 2806
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@1c
    .line 2805
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@1f
    .line 2807
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@21
    .line 2809
    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@23
    .line 2798
    :cond_2
    return-void
.end method

.method private cleanupPrimaryActionMode()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2789
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2790
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@7
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    #@a
    .line 2791
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@c
    .line 2793
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 2794
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    #@15
    .line 2788
    :cond_1
    return-void
.end method

.method private createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    #@0
    .prologue
    .line 3344
    packed-switch p1, :pswitch_data_0

    #@3
    .line 3347
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 3349
    :pswitch_0
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 3344
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    #@0
    .prologue
    .line 3493
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3494
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@6
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    #@9
    .line 3496
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupFloatingActionModeViews()V

    #@c
    .line 3498
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    #@e
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    #@10
    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;)V

    #@13
    .line 3499
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@15
    .line 3501
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$DecorView$4;

    #@17
    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView$4;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    #@1a
    .line 3500
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@1c
    .line 3508
    return-object v0
.end method

.method private createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 12
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v11, 0x0

    #@3
    .line 3362
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V

    #@6
    .line 3363
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupPrimaryActionMode()V

    #@9
    .line 3364
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@b
    if-nez v7, :cond_0

    #@d
    .line 3365
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@f
    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    #@12
    move-result v7

    #@13
    if-eqz v7, :cond_2

    #@15
    .line 3367
    new-instance v5, Landroid/util/TypedValue;

    #@17
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    #@1a
    .line 3368
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@1f
    move-result-object v2

    #@20
    .line 3369
    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    const v7, 0x1010431

    #@23
    invoke-virtual {v2, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@26
    .line 3372
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    #@28
    if-eqz v7, :cond_1

    #@2a
    .line 3373
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    #@2c
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@33
    move-result-object v1

    #@34
    .line 3374
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@37
    .line 3375
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    #@39
    invoke-virtual {v1, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@3c
    .line 3377
    new-instance v0, Landroid/view/ContextThemeWrapper;

    #@3e
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    #@40
    invoke-direct {v0, v7, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@43
    .line 3378
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@4a
    .line 3383
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_0
    new-instance v7, Lcom/android/internal/widget/ActionBarContextView;

    #@4c
    invoke-direct {v7, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    #@4f
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@51
    .line 3384
    new-instance v7, Landroid/widget/PopupWindow;

    #@53
    .line 3385
    const v10, 0x1160020

    #@56
    .line 3384
    invoke-direct {v7, v0, v11, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@59
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@5b
    .line 3386
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@5d
    .line 3387
    const/4 v10, 0x2

    #@5e
    .line 3386
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    #@61
    .line 3388
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@63
    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@65
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@68
    .line 3389
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@6a
    const/4 v10, -0x1

    #@6b
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@6e
    .line 3391
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@71
    move-result-object v7

    #@72
    .line 3392
    const v10, 0x10102eb

    #@75
    .line 3391
    invoke-virtual {v7, v10, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@78
    .line 3393
    iget v7, v5, Landroid/util/TypedValue;->data:I

    #@7a
    .line 3394
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7d
    move-result-object v10

    #@7e
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@81
    move-result-object v10

    #@82
    .line 3393
    invoke-static {v7, v10}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@85
    move-result v3

    #@86
    .line 3395
    .local v3, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@88
    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    #@8b
    .line 3396
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@8d
    const/4 v10, -0x2

    #@8e
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@91
    .line 3397
    new-instance v7, Lcom/android/internal/policy/PhoneWindow$DecorView$2;

    #@93
    invoke-direct {v7, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$2;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    #@96
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    #@98
    .line 3438
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v3    # "height":I
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@9a
    if-eqz v7, :cond_4

    #@9c
    .line 3439
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@9e
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    #@a1
    .line 3440
    new-instance v4, Lcom/android/internal/view/StandaloneActionMode;

    #@a3
    .line 3441
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@a5
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@a8
    move-result-object v10

    #@a9
    iget-object v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@ab
    .line 3442
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@ad
    if-nez v7, :cond_3

    #@af
    move v7, v8

    #@b0
    .line 3440
    :goto_2
    invoke-direct {v4, v10, v11, p1, v7}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    #@b3
    .line 3443
    .local v4, "mode":Landroid/view/ActionMode;
    return-object v4

    #@b4
    .line 3380
    .end local v4    # "mode":Landroid/view/ActionMode;
    .restart local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v5    # "outValue":Landroid/util/TypedValue;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    #@b6
    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto :goto_0

    #@b7
    .line 3432
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_2
    const v7, 0x10203a9

    #@ba
    .line 3431
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    #@bd
    move-result-object v6

    #@be
    check-cast v6, Landroid/view/ViewStub;

    #@c0
    .line 3433
    .local v6, "stub":Landroid/view/ViewStub;
    if-eqz v6, :cond_0

    #@c2
    .line 3434
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@c5
    move-result-object v7

    #@c6
    check-cast v7, Lcom/android/internal/widget/ActionBarContextView;

    #@c8
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@ca
    goto :goto_1

    #@cb
    .end local v6    # "stub":Landroid/view/ViewStub;
    :cond_3
    move v7, v9

    #@cc
    .line 3442
    goto :goto_2

    #@cd
    .line 3445
    :cond_4
    return-object v11
.end method

.method private drawableChanged()V
    .locals 11

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 3166
    iget-boolean v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mChanging:Z

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 3167
    return-void

    #@6
    .line 3170
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@8
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@a
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@c
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@e
    add-int/2addr v5, v6

    #@f
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@11
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@13
    .line 3171
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@15
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@17
    .line 3170
    add-int/2addr v6, v7

    #@18
    .line 3171
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@1a
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@1c
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@1e
    iget v8, v8, Landroid/graphics/Rect;->right:I

    #@20
    add-int/2addr v7, v8

    #@21
    .line 3172
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@23
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    #@25
    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@27
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #@29
    add-int/2addr v8, v9

    #@2a
    .line 3170
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setPadding(IIII)V

    #@2d
    .line 3173
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestLayout()V

    #@30
    .line 3174
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->invalidate()V

    #@33
    .line 3176
    const/4 v4, -0x1

    #@34
    .line 3182
    .local v4, "opacity":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@37
    move-result-object v0

    #@38
    .line 3183
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@3b
    move-result-object v2

    #@3c
    .line 3184
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@3e
    .line 3185
    if-nez v2, :cond_3

    #@40
    .line 3186
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@43
    move-result v4

    #@44
    .line 3219
    :cond_1
    :goto_0
    iput v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDefaultOpacity:I

    #@46
    .line 3220
    iget v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@48
    if-gez v5, :cond_2

    #@4a
    .line 3221
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@4c
    invoke-static {v5, v4}, Lcom/android/internal/policy/PhoneWindow;->-wrap6(Lcom/android/internal/policy/PhoneWindow;I)V

    #@4f
    .line 3165
    :cond_2
    return-void

    #@50
    .line 3187
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@52
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@54
    if-gtz v5, :cond_8

    #@56
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@58
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@5a
    if-gtz v5, :cond_8

    #@5c
    .line 3188
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@5e
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@60
    if-gtz v5, :cond_8

    #@62
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@64
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@66
    if-gtz v5, :cond_8

    #@68
    .line 3191
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@6b
    move-result v3

    #@6c
    .line 3192
    .local v3, "fop":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@6f
    move-result v1

    #@70
    .line 3195
    .local v1, "bop":I
    if-eq v3, v10, :cond_4

    #@72
    if-ne v1, v10, :cond_5

    #@74
    .line 3196
    :cond_4
    const/4 v4, -0x1

    #@75
    .line 3195
    goto :goto_0

    #@76
    .line 3197
    :cond_5
    if-nez v3, :cond_6

    #@78
    .line 3198
    move v4, v1

    #@79
    goto :goto_0

    #@7a
    .line 3199
    :cond_6
    if-nez v1, :cond_7

    #@7c
    .line 3200
    move v4, v3

    #@7d
    goto :goto_0

    #@7e
    .line 3202
    :cond_7
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    #@81
    move-result v4

    #@82
    goto :goto_0

    #@83
    .line 3210
    .end local v1    # "bop":I
    .end local v3    # "fop":I
    :cond_8
    const/4 v4, -0x3

    #@84
    goto :goto_0
.end method

.method private endOnGoingFadeAnimation()V
    .locals 1

    #@0
    .prologue
    .line 3449
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3450
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@6
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    #@9
    .line 3448
    :cond_0
    return-void
.end method

.method private isOutOfBounds(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, -0x5

    #@2
    .line 2420
    if-lt p1, v1, :cond_0

    #@4
    if-ge p2, v1, :cond_1

    #@6
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getWidth()I

    #@a
    move-result v1

    #@b
    add-int/lit8 v1, v1, 0x5

    #@d
    if-gt p1, v1, :cond_0

    #@f
    .line 2421
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getHeight()I

    #@12
    move-result v1

    #@13
    add-int/lit8 v1, v1, 0x5

    #@15
    if-gt p2, v1, :cond_0

    #@17
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method private setHandledActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 3354
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 3355
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    #@9
    .line 3353
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3356
    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x1

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 3357
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    #@14
    goto :goto_0
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 3512
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@2
    .line 3513
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    #@4
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    #@6
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    #@b
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@d
    .line 3514
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@f
    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    #@11
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@13
    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V

    #@16
    .line 3515
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@18
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    #@1b
    .line 3516
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@1d
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@20
    move-result-object v0

    #@21
    .line 3517
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@23
    .line 3516
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@26
    .line 3511
    return-void
.end method

.method private setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 3455
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V

    #@3
    .line 3456
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@5
    .line 3457
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@7
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    #@a
    .line 3458
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@c
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    #@11
    .line 3459
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 3460
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    #@17
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    #@1a
    .line 3487
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@1c
    .line 3488
    const/16 v1, 0x20

    #@1e
    .line 3487
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    #@21
    .line 3454
    return-void

    #@22
    .line 3462
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@24
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@26
    const/4 v2, 0x2

    #@27
    new-array v2, v2, [F

    #@29
    fill-array-data v2, :array_0

    #@2c
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@32
    .line 3463
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@34
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$DecorView$3;

    #@36
    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$3;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    #@39
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3c
    .line 3485
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@3e
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@41
    goto :goto_0

    #@42
    .line 3462
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 6
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    #@0
    .prologue
    .line 2744
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    #@2
    invoke-direct {v3, p0, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V

    #@5
    .line 2745
    .local v3, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    const/4 v2, 0x0

    #@6
    .line 2746
    .local v2, "mode":Landroid/view/ActionMode;
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@8
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@b
    move-result-object v4

    #@c
    if-eqz v4, :cond_0

    #@e
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@10
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_3

    #@16
    .line 2760
    .end local v2    # "mode":Landroid/view/ActionMode;
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    #@18
    .line 2761
    invoke-virtual {v2}, Landroid/view/ActionMode;->getType()I

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_4

    #@1e
    .line 2762
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupPrimaryActionMode()V

    #@21
    .line 2763
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@23
    .line 2778
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    #@25
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@27
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@2a
    move-result-object v4

    #@2b
    if-eqz v4, :cond_2

    #@2d
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2f
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_8

    #@35
    .line 2785
    :cond_2
    :goto_2
    return-object v2

    #@36
    .line 2748
    .restart local v2    # "mode":Landroid/view/ActionMode;
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@38
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@3b
    move-result-object v4

    #@3c
    invoke-interface {v4, v3, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    move-result-object v2

    #@40
    .local v2, "mode":Landroid/view/ActionMode;
    goto :goto_0

    #@41
    .line 2749
    .local v2, "mode":Landroid/view/ActionMode;
    :catch_0
    move-exception v0

    #@42
    .line 2751
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    if-nez p3, :cond_0

    #@44
    .line 2753
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@46
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@49
    move-result-object v4

    #@4a
    invoke-interface {v4, v3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_2

    #@4d
    move-result-object v2

    #@4e
    .local v2, "mode":Landroid/view/ActionMode;
    goto :goto_0

    #@4f
    .line 2764
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    .end local v2    # "mode":Landroid/view/ActionMode;
    :cond_4
    invoke-virtual {v2}, Landroid/view/ActionMode;->getType()I

    #@52
    move-result v4

    #@53
    const/4 v5, 0x1

    #@54
    if-ne v4, v5, :cond_1

    #@56
    .line 2765
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@58
    if-eqz v4, :cond_5

    #@5a
    .line 2766
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@5c
    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    #@5f
    .line 2768
    :cond_5
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@61
    goto :goto_1

    #@62
    .line 2771
    :cond_6
    invoke-direct {p0, p3, v3, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    #@65
    move-result-object v2

    #@66
    .line 2772
    .restart local v2    # "mode":Landroid/view/ActionMode;
    if-eqz v2, :cond_7

    #@68
    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v3, v2, v4}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@6f
    move-result v4

    #@70
    if-eqz v4, :cond_7

    #@72
    .line 2773
    invoke-direct {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    #@75
    goto :goto_1

    #@76
    .line 2775
    :cond_7
    const/4 v2, 0x0

    #@77
    .local v2, "mode":Landroid/view/ActionMode;
    goto :goto_1

    #@78
    .line 2780
    .end local v2    # "mode":Landroid/view/ActionMode;
    :cond_8
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@7a
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@7d
    move-result-object v4

    #@7e
    invoke-interface {v4, v2}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_1

    #@81
    goto :goto_2

    #@82
    .line 2781
    :catch_1
    move-exception v0

    #@83
    .restart local v0    # "ame":Ljava/lang/AbstractMethodError;
    goto :goto_2

    #@84
    .line 2754
    .restart local v2    # "mode":Landroid/view/ActionMode;
    :catch_2
    move-exception v1

    #@85
    .local v1, "ame2":Ljava/lang/AbstractMethodError;
    goto :goto_0
.end method

.method private updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V
    .locals 14
    .param p1, "state"    # Lcom/android/internal/policy/PhoneWindow$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "rightMargin"    # I
    .param p7, "animate"    # Z

    #@0
    .prologue
    .line 2979
    if-lez p4, :cond_4

    #@2
    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->systemUiHideFlag:I

    #@4
    and-int v10, v10, p2

    #@6
    if-nez v10, :cond_4

    #@8
    .line 2980
    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@a
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@d
    move-result-object v10

    #@e
    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@10
    iget v11, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->hideWindowFlag:I

    #@12
    and-int/2addr v10, v11

    #@13
    if-nez v10, :cond_4

    #@15
    .line 2981
    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@17
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@1a
    move-result-object v10

    #@1b
    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1d
    const/high16 v11, -0x80000000

    #@1f
    and-int/2addr v10, v11

    #@20
    if-eqz v10, :cond_3

    #@22
    const/4 v10, 0x1

    #@23
    .line 2979
    :goto_0
    iput-boolean v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    #@25
    .line 2982
    iget-boolean v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    #@27
    if-eqz v10, :cond_6

    #@29
    .line 2983
    const/high16 v10, -0x1000000

    #@2b
    and-int v10, v10, p3

    #@2d
    if-eqz v10, :cond_6

    #@2f
    .line 2984
    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@31
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@34
    move-result-object v10

    #@35
    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@37
    iget v11, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->translucentFlag:I

    #@39
    and-int/2addr v10, v11

    #@3a
    if-nez v10, :cond_5

    #@3c
    const/4 v6, 0x1

    #@3d
    .line 2986
    .local v6, "show":Z
    :goto_1
    const/4 v9, 0x0

    #@3e
    .line 2987
    .local v9, "visibilityChanged":Z
    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    #@40
    .line 2989
    .local v7, "view":Landroid/view/View;
    if-eqz p5, :cond_7

    #@42
    const/4 v4, -0x1

    #@43
    .line 2990
    .local v4, "resolvedHeight":I
    :goto_2
    if-eqz p5, :cond_8

    #@45
    move/from16 v5, p4

    #@47
    .line 2991
    .local v5, "resolvedWidth":I
    :goto_3
    if-eqz p5, :cond_9

    #@49
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->horizontalGravity:I

    #@4b
    .line 2993
    .local v3, "resolvedGravity":I
    :goto_4
    if-nez v7, :cond_a

    #@4d
    .line 2994
    if-eqz v6, :cond_0

    #@4f
    .line 2995
    new-instance v7, Landroid/view/View;

    #@51
    .end local v7    # "view":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    #@53
    invoke-direct {v7, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@56
    .restart local v7    # "view":Landroid/view/View;
    iput-object v7, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    #@58
    .line 2996
    move/from16 v0, p3

    #@5a
    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    #@5d
    .line 2997
    iget-object v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->transitionName:Ljava/lang/String;

    #@5f
    invoke-virtual {v7, v10}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    #@62
    .line 2998
    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->id:I

    #@64
    invoke-virtual {v7, v10}, Landroid/view/View;->setId(I)V

    #@67
    .line 2999
    const/4 v9, 0x1

    #@68
    .line 3000
    const/4 v10, 0x4

    #@69
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    #@6c
    .line 3001
    const/4 v10, 0x0

    #@6d
    iput v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    #@6f
    .line 3003
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    #@71
    invoke-direct {v2, v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@74
    .line 3005
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, p6

    #@76
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@78
    .line 3006
    invoke-virtual {p0, v7, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7b
    .line 3007
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewTranslations()V

    #@7e
    .line 3026
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_5
    if-eqz v9, :cond_2

    #@80
    .line 3027
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@83
    move-result-object v10

    #@84
    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->cancel()V

    #@87
    .line 3028
    if-eqz p7, :cond_11

    #@89
    .line 3029
    if-eqz v6, :cond_10

    #@8b
    .line 3030
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    #@8e
    move-result v10

    #@8f
    if-eqz v10, :cond_1

    #@91
    .line 3031
    const/4 v10, 0x0

    #@92
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    #@95
    .line 3032
    const/4 v10, 0x0

    #@96
    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    #@99
    .line 3034
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@9c
    move-result-object v10

    #@9d
    const/high16 v11, 0x3f800000    # 1.0f

    #@9f
    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@a2
    move-result-object v10

    #@a3
    iget-object v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    #@a5
    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@a8
    move-result-object v10

    #@a9
    .line 3035
    iget v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    #@ab
    int-to-long v12, v11

    #@ac
    .line 3034
    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@af
    .line 2978
    :cond_2
    :goto_6
    return-void

    #@b0
    .line 2981
    .end local v3    # "resolvedGravity":I
    .end local v4    # "resolvedHeight":I
    .end local v5    # "resolvedWidth":I
    .end local v6    # "show":Z
    .end local v7    # "view":Landroid/view/View;
    .end local v9    # "visibilityChanged":Z
    :cond_3
    const/4 v10, 0x0

    #@b1
    goto/16 :goto_0

    #@b3
    .line 2979
    :cond_4
    const/4 v10, 0x0

    #@b4
    goto/16 :goto_0

    #@b6
    .line 2984
    :cond_5
    const/4 v6, 0x0

    #@b7
    .restart local v6    # "show":Z
    goto :goto_1

    #@b8
    .line 2982
    .end local v6    # "show":Z
    :cond_6
    const/4 v6, 0x0

    #@b9
    .restart local v6    # "show":Z
    goto :goto_1

    #@ba
    .line 2989
    .restart local v7    # "view":Landroid/view/View;
    .restart local v9    # "visibilityChanged":Z
    :cond_7
    move/from16 v4, p4

    #@bc
    .restart local v4    # "resolvedHeight":I
    goto :goto_2

    #@bd
    .line 2990
    :cond_8
    const/4 v5, -0x1

    #@be
    .restart local v5    # "resolvedWidth":I
    goto :goto_3

    #@bf
    .line 2991
    :cond_9
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->verticalGravity:I

    #@c1
    .restart local v3    # "resolvedGravity":I
    goto :goto_4

    #@c2
    .line 3010
    :cond_a
    if-eqz v6, :cond_d

    #@c4
    const/4 v8, 0x0

    #@c5
    .line 3011
    .local v8, "vis":I
    :goto_7
    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    #@c7
    if-eq v10, v8, :cond_e

    #@c9
    const/4 v9, 0x1

    #@ca
    .line 3012
    :goto_8
    iput v8, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    #@cc
    .line 3013
    if-eqz v6, :cond_0

    #@ce
    .line 3014
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@d1
    move-result-object v2

    #@d2
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    #@d4
    .line 3015
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@d6
    if-ne v10, v4, :cond_b

    #@d8
    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    #@da
    if-eq v10, v5, :cond_f

    #@dc
    .line 3017
    :cond_b
    :goto_9
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@de
    .line 3018
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    #@e0
    .line 3019
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@e2
    .line 3020
    move/from16 v0, p6

    #@e4
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@e6
    .line 3021
    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@e9
    .line 3023
    :cond_c
    move/from16 v0, p3

    #@eb
    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    #@ee
    goto :goto_5

    #@ef
    .line 3010
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "vis":I
    :cond_d
    const/4 v8, 0x4

    #@f0
    .restart local v8    # "vis":I
    goto :goto_7

    #@f1
    .line 3011
    :cond_e
    const/4 v9, 0x0

    #@f2
    goto :goto_8

    #@f3
    .line 3016
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_f
    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@f5
    if-ne v10, v3, :cond_b

    #@f7
    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@f9
    move/from16 v0, p6

    #@fb
    if-eq v10, v0, :cond_c

    #@fd
    goto :goto_9

    #@fe
    .line 3037
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "vis":I
    :cond_10
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@101
    move-result-object v10

    #@102
    const/4 v11, 0x0

    #@103
    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@106
    move-result-object v10

    #@107
    iget-object v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    #@109
    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@10c
    move-result-object v10

    #@10d
    .line 3038
    iget v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    #@10f
    int-to-long v12, v11

    #@110
    .line 3037
    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@113
    move-result-object v10

    #@114
    .line 3039
    new-instance v11, Lcom/android/internal/policy/PhoneWindow$DecorView$1;

    #@116
    invoke-direct {v11, p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView$1;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/policy/PhoneWindow$ColorViewState;)V

    #@119
    .line 3037
    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    #@11c
    goto :goto_6

    #@11d
    .line 3048
    :cond_11
    const/high16 v10, 0x3f800000    # 1.0f

    #@11f
    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    #@122
    .line 3049
    if-eqz v6, :cond_12

    #@124
    const/4 v10, 0x0

    #@125
    :goto_a
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    #@128
    goto :goto_6

    #@129
    :cond_12
    const/4 v10, 0x4

    #@12a
    goto :goto_a
.end method

.method private updateColorViewTranslations()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3057
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mRootScrollY:I

    #@3
    .line 3058
    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@5
    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 3059
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@b
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    #@d
    if-lez v0, :cond_2

    #@f
    move v1, v0

    #@10
    :goto_0
    int-to-float v1, v1

    #@11
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    #@14
    .line 3061
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@16
    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 3062
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@1c
    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    #@1e
    if-gez v0, :cond_3

    #@20
    .end local v0    # "rootScrollY":I
    :goto_1
    int-to-float v2, v0

    #@21
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    #@24
    .line 3054
    :cond_1
    return-void

    #@25
    .restart local v0    # "rootScrollY":I
    :cond_2
    move v1, v2

    #@26
    .line 3059
    goto :goto_0

    #@27
    :cond_3
    move v0, v2

    #@28
    .line 3062
    goto :goto_1
.end method

.method private updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 26
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 2877
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object v16

    #@8
    .line 2878
    .local v16, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v16

    #@a
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getWindowSystemUiVisibility()I

    #@f
    move-result v3

    #@10
    or-int v4, v2, v3

    #@12
    .line 2880
    .local v4, "sysUiVisibility":I
    move-object/from16 v0, p0

    #@14
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@16
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get6(Lcom/android/internal/policy/PhoneWindow;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_3

    #@1c
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_3

    #@22
    .line 2881
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->isLaidOut()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_8

    #@28
    const/16 v20, 0x0

    #@2a
    .line 2882
    .local v20, "disallowAnimate":Z
    :goto_0
    move-object/from16 v0, p0

    #@2c
    iget v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastWindowFlags:I

    #@2e
    move-object/from16 v0, v16

    #@30
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@32
    xor-int/2addr v2, v3

    #@33
    .line 2883
    const/high16 v3, -0x80000000

    #@35
    .line 2882
    and-int/2addr v2, v3

    #@36
    if-eqz v2, :cond_9

    #@38
    const/4 v2, 0x1

    #@39
    :goto_1
    or-int v20, v20, v2

    #@3b
    .line 2884
    .local v20, "disallowAnimate":Z
    move-object/from16 v0, v16

    #@3d
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3f
    move-object/from16 v0, p0

    #@41
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastWindowFlags:I

    #@43
    .line 2886
    if-eqz p1, :cond_0

    #@45
    .line 2887
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    #@48
    move-result v2

    #@49
    .line 2888
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@4c
    move-result v3

    #@4d
    .line 2887
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@50
    move-result v2

    #@51
    move-object/from16 v0, p0

    #@53
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastTopInset:I

    #@55
    .line 2889
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    #@58
    move-result v2

    #@59
    .line 2890
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@5c
    move-result v3

    #@5d
    .line 2889
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@60
    move-result v2

    #@61
    move-object/from16 v0, p0

    #@63
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    #@65
    .line 2891
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    #@68
    move-result v2

    #@69
    .line 2892
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@6c
    move-result v3

    #@6d
    .line 2891
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@70
    move-result v2

    #@71
    move-object/from16 v0, p0

    #@73
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    #@75
    .line 2897
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    #@78
    move-result v2

    #@79
    if-eqz v2, :cond_a

    #@7b
    const/16 v23, 0x1

    #@7d
    .line 2898
    .local v23, "hasTopStableInset":Z
    :goto_2
    move-object/from16 v0, p0

    #@7f
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    #@81
    move/from16 v0, v23

    #@83
    if-eq v0, v2, :cond_b

    #@85
    const/4 v2, 0x1

    #@86
    :goto_3
    or-int v20, v20, v2

    #@88
    .line 2899
    move/from16 v0, v23

    #@8a
    move-object/from16 v1, p0

    #@8c
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    #@8e
    .line 2901
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    #@91
    move-result v2

    #@92
    if-eqz v2, :cond_c

    #@94
    const/16 v21, 0x1

    #@96
    .line 2902
    .local v21, "hasBottomStableInset":Z
    :goto_4
    move-object/from16 v0, p0

    #@98
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    #@9a
    move/from16 v0, v21

    #@9c
    if-eq v0, v2, :cond_d

    #@9e
    const/4 v2, 0x1

    #@9f
    :goto_5
    or-int v20, v20, v2

    #@a1
    .line 2903
    move/from16 v0, v21

    #@a3
    move-object/from16 v1, p0

    #@a5
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    #@a7
    .line 2905
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    #@aa
    move-result v2

    #@ab
    if-eqz v2, :cond_e

    #@ad
    const/16 v22, 0x1

    #@af
    .line 2906
    .local v22, "hasRightStableInset":Z
    :goto_6
    move-object/from16 v0, p0

    #@b1
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    #@b3
    move/from16 v0, v22

    #@b5
    if-eq v0, v2, :cond_f

    #@b7
    const/4 v2, 0x1

    #@b8
    :goto_7
    or-int v20, v20, v2

    #@ba
    .line 2907
    move/from16 v0, v22

    #@bc
    move-object/from16 v1, p0

    #@be
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    #@c0
    .line 2910
    .end local v21    # "hasBottomStableInset":Z
    .end local v22    # "hasRightStableInset":Z
    .end local v23    # "hasTopStableInset":Z
    :cond_0
    move-object/from16 v0, p0

    #@c2
    iget v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    #@c4
    if-nez v2, :cond_10

    #@c6
    move-object/from16 v0, p0

    #@c8
    iget v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    #@ca
    if-lez v2, :cond_10

    #@cc
    const/4 v7, 0x1

    #@cd
    .line 2911
    .local v7, "navBarToRightEdge":Z
    :goto_8
    if-eqz v7, :cond_11

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    #@d3
    .line 2912
    .local v6, "navBarSize":I
    :goto_9
    move-object/from16 v0, p0

    #@d5
    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@d7
    move-object/from16 v0, p0

    #@d9
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@db
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get7(Lcom/android/internal/policy/PhoneWindow;)I

    #@de
    move-result v5

    #@df
    .line 2914
    if-eqz p2, :cond_1

    #@e1
    if-eqz v20, :cond_12

    #@e3
    :cond_1
    const/4 v9, 0x0

    #@e4
    .line 2913
    :goto_a
    const/4 v8, 0x0

    #@e5
    move-object/from16 v2, p0

    #@e7
    .line 2912
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V

    #@ea
    .line 2916
    if-eqz v7, :cond_13

    #@ec
    .line 2917
    move-object/from16 v0, p0

    #@ee
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@f0
    iget-boolean v0, v2, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    #@f2
    move/from16 v25, v0

    #@f4
    .line 2918
    :goto_b
    if-eqz v25, :cond_14

    #@f6
    move-object/from16 v0, p0

    #@f8
    iget v14, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    #@fa
    .line 2919
    .local v14, "statusBarRightInset":I
    :goto_c
    move-object/from16 v0, p0

    #@fc
    iget-object v9, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@fe
    move-object/from16 v0, p0

    #@100
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@102
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get11(Lcom/android/internal/policy/PhoneWindow;)I

    #@105
    move-result v11

    #@106
    .line 2920
    move-object/from16 v0, p0

    #@108
    iget v12, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastTopInset:I

    #@10a
    .line 2921
    if-eqz p2, :cond_2

    #@10c
    if-eqz v20, :cond_15

    #@10e
    :cond_2
    const/4 v15, 0x0

    #@10f
    .line 2920
    :goto_d
    const/4 v13, 0x0

    #@110
    move-object/from16 v8, p0

    #@112
    move v10, v4

    #@113
    .line 2919
    invoke-direct/range {v8 .. v15}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V

    #@116
    .line 2929
    .end local v6    # "navBarSize":I
    .end local v7    # "navBarToRightEdge":Z
    .end local v14    # "statusBarRightInset":I
    .end local v20    # "disallowAnimate":Z
    :cond_3
    move-object/from16 v0, v16

    #@118
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@11a
    const/high16 v3, -0x80000000

    #@11c
    and-int/2addr v2, v3

    #@11d
    if-eqz v2, :cond_17

    #@11f
    .line 2930
    and-int/lit16 v2, v4, 0x200

    #@121
    if-nez v2, :cond_17

    #@123
    .line 2931
    and-int/lit8 v2, v4, 0x2

    #@125
    if-nez v2, :cond_16

    #@127
    const/16 v19, 0x1

    #@129
    .line 2933
    .local v19, "consumingNavBar":Z
    :goto_e
    if-eqz v19, :cond_18

    #@12b
    move-object/from16 v0, p0

    #@12d
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    #@12f
    move/from16 v18, v0

    #@131
    .line 2934
    .local v18, "consumedRight":I
    :goto_f
    if-eqz v19, :cond_19

    #@133
    move-object/from16 v0, p0

    #@135
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    #@137
    move/from16 v17, v0

    #@139
    .line 2936
    .local v17, "consumedBottom":I
    :goto_10
    move-object/from16 v0, p0

    #@13b
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@13d
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get1(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    #@140
    move-result-object v2

    #@141
    if-eqz v2, :cond_6

    #@143
    .line 2937
    move-object/from16 v0, p0

    #@145
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@147
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get1(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    #@14a
    move-result-object v2

    #@14b
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@14e
    move-result-object v2

    #@14f
    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@151
    .line 2936
    if-eqz v2, :cond_6

    #@153
    .line 2938
    move-object/from16 v0, p0

    #@155
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@157
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get1(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    #@15a
    move-result-object v2

    #@15b
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15e
    move-result-object v24

    #@15f
    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    #@161
    .line 2939
    .local v24, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v24

    #@163
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@165
    move/from16 v0, v18

    #@167
    if-ne v2, v0, :cond_4

    #@169
    move-object/from16 v0, v24

    #@16b
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@16d
    move/from16 v0, v17

    #@16f
    if-eq v2, v0, :cond_5

    #@171
    .line 2940
    :cond_4
    move/from16 v0, v18

    #@173
    move-object/from16 v1, v24

    #@175
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@177
    .line 2941
    move/from16 v0, v17

    #@179
    move-object/from16 v1, v24

    #@17b
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@17d
    .line 2942
    move-object/from16 v0, p0

    #@17f
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@181
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get1(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    #@184
    move-result-object v2

    #@185
    move-object/from16 v0, v24

    #@187
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@18a
    .line 2944
    if-nez p1, :cond_5

    #@18c
    .line 2947
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestApplyInsets()V

    #@18f
    .line 2950
    :cond_5
    if-eqz p1, :cond_6

    #@191
    .line 2952
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    #@194
    move-result v2

    #@195
    .line 2953
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@198
    move-result v3

    #@199
    .line 2954
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@19c
    move-result v5

    #@19d
    sub-int v5, v5, v18

    #@19f
    .line 2955
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@1a2
    move-result v8

    #@1a3
    sub-int v8, v8, v17

    #@1a5
    .line 2951
    move-object/from16 v0, p1

    #@1a7
    invoke-virtual {v0, v2, v3, v5, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@1aa
    move-result-object p1

    #@1ab
    .line 2959
    .end local v24    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    if-eqz p1, :cond_7

    #@1ad
    .line 2960
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    #@1b0
    move-result-object p1

    #@1b1
    .line 2962
    :cond_7
    return-object p1

    #@1b2
    .line 2881
    .end local v17    # "consumedBottom":I
    .end local v18    # "consumedRight":I
    .end local v19    # "consumingNavBar":Z
    :cond_8
    const/16 v20, 0x1

    #@1b4
    .local v20, "disallowAnimate":Z
    goto/16 :goto_0

    #@1b6
    .line 2882
    :cond_9
    const/4 v2, 0x0

    #@1b7
    goto/16 :goto_1

    #@1b9
    .line 2897
    .local v20, "disallowAnimate":Z
    :cond_a
    const/16 v23, 0x0

    #@1bb
    .restart local v23    # "hasTopStableInset":Z
    goto/16 :goto_2

    #@1bd
    .line 2898
    :cond_b
    const/4 v2, 0x0

    #@1be
    goto/16 :goto_3

    #@1c0
    .line 2901
    :cond_c
    const/16 v21, 0x0

    #@1c2
    .restart local v21    # "hasBottomStableInset":Z
    goto/16 :goto_4

    #@1c4
    .line 2902
    :cond_d
    const/4 v2, 0x0

    #@1c5
    goto/16 :goto_5

    #@1c7
    .line 2905
    :cond_e
    const/16 v22, 0x0

    #@1c9
    .restart local v22    # "hasRightStableInset":Z
    goto/16 :goto_6

    #@1cb
    .line 2906
    :cond_f
    const/4 v2, 0x0

    #@1cc
    goto/16 :goto_7

    #@1ce
    .line 2910
    .end local v21    # "hasBottomStableInset":Z
    .end local v22    # "hasRightStableInset":Z
    .end local v23    # "hasTopStableInset":Z
    :cond_10
    const/4 v7, 0x0

    #@1cf
    .restart local v7    # "navBarToRightEdge":Z
    goto/16 :goto_8

    #@1d1
    .line 2911
    :cond_11
    move-object/from16 v0, p0

    #@1d3
    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    #@1d5
    .restart local v6    # "navBarSize":I
    goto/16 :goto_9

    #@1d7
    .line 2914
    :cond_12
    const/4 v9, 0x1

    #@1d8
    goto/16 :goto_a

    #@1da
    .line 2916
    :cond_13
    const/16 v25, 0x0

    #@1dc
    .local v25, "statusBarNeedsRightInset":Z
    goto/16 :goto_b

    #@1de
    .line 2918
    .end local v25    # "statusBarNeedsRightInset":Z
    :cond_14
    const/4 v14, 0x0

    #@1df
    .restart local v14    # "statusBarRightInset":I
    goto/16 :goto_c

    #@1e1
    .line 2921
    :cond_15
    const/4 v15, 0x1

    #@1e2
    goto/16 :goto_d

    #@1e4
    .line 2931
    .end local v6    # "navBarSize":I
    .end local v7    # "navBarToRightEdge":Z
    .end local v14    # "statusBarRightInset":I
    .end local v20    # "disallowAnimate":Z
    :cond_16
    const/16 v19, 0x0

    #@1e6
    .restart local v19    # "consumingNavBar":Z
    goto/16 :goto_e

    #@1e8
    .line 2929
    .end local v19    # "consumingNavBar":Z
    :cond_17
    const/16 v19, 0x0

    #@1ea
    .restart local v19    # "consumingNavBar":Z
    goto/16 :goto_e

    #@1ec
    .line 2933
    :cond_18
    const/16 v18, 0x0

    #@1ee
    .restart local v18    # "consumedRight":I
    goto/16 :goto_f

    #@1f0
    .line 2934
    :cond_19
    const/16 v17, 0x0

    #@1f2
    .restart local v17    # "consumedBottom":I
    goto/16 :goto_10
.end method

.method private updateNavigationGuard(Landroid/view/WindowInsets;)V
    .locals 8
    .param p1, "insets"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    .line 3138
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@5
    move-result-object v2

    #@6
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@8
    const/16 v3, 0x7db

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 3140
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@e
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get0(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    #@11
    move-result-object v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 3141
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@16
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get0(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1d
    move-result-object v2

    #@1e
    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 3143
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@24
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get0(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2e
    .line 3144
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@31
    move-result v2

    #@32
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@34
    .line 3145
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@36
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get0(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@3d
    .line 3149
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    #@3f
    if-nez v2, :cond_2

    #@41
    .line 3150
    new-instance v2, Landroid/view/View;

    #@43
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    #@45
    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@48
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    #@4a
    .line 3151
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    #@4c
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    #@4e
    .line 3152
    const v4, 0x1060032

    #@51
    .line 3151
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    #@54
    move-result v3

    #@55
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    #@58
    .line 3153
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    #@5a
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@5c
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    #@5e
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->indexOfChild(Landroid/view/View;)I

    #@61
    move-result v3

    #@62
    .line 3154
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    #@64
    .line 3155
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@67
    move-result v5

    #@68
    .line 3154
    const/4 v6, -0x1

    #@69
    .line 3156
    const v7, 0x800053

    #@6c
    .line 3154
    invoke-direct {v4, v6, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@6f
    .line 3153
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@72
    .line 3136
    :cond_1
    :goto_0
    return-void

    #@73
    .line 3158
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    #@75
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@78
    move-result-object v0

    #@79
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@7b
    .line 3159
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@7e
    move-result v2

    #@7f
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@81
    .line 3160
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    #@83
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@86
    goto :goto_0
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 14
    .param p1, "insets"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3067
    const/4 v6, 0x0

    #@2
    .line 3069
    .local v6, "showStatusGuard":Z
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@4
    if-eqz v7, :cond_3

    #@6
    .line 3070
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@8
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b
    move-result-object v7

    #@c
    instance-of v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    if-eqz v7, :cond_3

    #@10
    .line 3073
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@12
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object v1

    #@16
    .line 3072
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@18
    .line 3074
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    #@19
    .line 3075
    .local v2, "mlpChanged":Z
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@1b
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_a

    #@21
    .line 3076
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@23
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->-get12(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@26
    move-result-object v7

    #@27
    if-nez v7, :cond_0

    #@29
    .line 3077
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2b
    new-instance v9, Landroid/graphics/Rect;

    #@2d
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    #@30
    invoke-static {v7, v9}, Lcom/android/internal/policy/PhoneWindow;->-set4(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@33
    .line 3079
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@35
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->-get12(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@38
    move-result-object v5

    #@39
    .line 3083
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@3b
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->-get0(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v7, p1, v5}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    #@42
    .line 3084
    iget v7, v5, Landroid/graphics/Rect;->top:I

    #@44
    if-nez v7, :cond_5

    #@46
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@49
    move-result v3

    #@4a
    .line 3085
    .local v3, "newMargin":I
    :goto_0
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@4c
    if-eq v7, v3, :cond_1

    #@4e
    .line 3086
    const/4 v2, 0x1

    #@4f
    .line 3087
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@52
    move-result v7

    #@53
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@55
    .line 3089
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    #@57
    if-nez v7, :cond_6

    #@59
    .line 3090
    new-instance v7, Landroid/view/View;

    #@5b
    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    #@5d
    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@60
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    #@62
    .line 3091
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    #@64
    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    #@66
    .line 3092
    const v10, 0x1060032

    #@69
    .line 3091
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    #@6c
    move-result v9

    #@6d
    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    #@70
    .line 3093
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    #@72
    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@74
    iget-object v9, v9, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    #@76
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->indexOfChild(Landroid/view/View;)I

    #@79
    move-result v9

    #@7a
    .line 3094
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    #@7c
    .line 3095
    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@7e
    .line 3094
    const/4 v12, -0x1

    #@7f
    .line 3095
    const v13, 0x800033

    #@82
    .line 3094
    invoke-direct {v10, v12, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@85
    .line 3093
    invoke-virtual {p0, v7, v9, v10}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@88
    .line 3108
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    #@8a
    if-eqz v7, :cond_7

    #@8c
    const/4 v6, 0x1

    #@8d
    .line 3114
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@8f
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->-wrap2(Lcom/android/internal/policy/PhoneWindow;)I

    #@92
    move-result v7

    #@93
    and-int/lit16 v7, v7, 0x400

    #@95
    if-nez v7, :cond_8

    #@97
    const/4 v4, 0x1

    #@98
    .line 3117
    .local v4, "nonOverlay":Z
    :goto_3
    if-eqz v4, :cond_9

    #@9a
    move v7, v6

    #@9b
    .line 3116
    :goto_4
    invoke-virtual {p1, v8, v7, v8, v8}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    #@9e
    move-result-object p1

    #@9f
    .line 3125
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    #@a1
    .line 3126
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@a3
    invoke-virtual {v7, v1}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@a6
    .line 3130
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    #@a8
    if-eqz v7, :cond_4

    #@aa
    .line 3131
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    #@ac
    if-eqz v6, :cond_b

    #@ae
    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    #@b1
    .line 3133
    :cond_4
    return-object p1

    #@b2
    .line 3084
    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "mlpChanged":Z
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :cond_5
    const/4 v3, 0x0

    #@b3
    .restart local v3    # "newMargin":I
    goto :goto_0

    #@b4
    .line 3098
    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    #@b6
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b9
    move-result-object v0

    #@ba
    .line 3097
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@bc
    .line 3099
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@be
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@c0
    if-eq v7, v9, :cond_1

    #@c2
    .line 3100
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@c4
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@c6
    .line 3101
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    #@c8
    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@cb
    goto :goto_1

    #@cc
    .line 3108
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const/4 v6, 0x0

    #@cd
    goto :goto_2

    #@ce
    .line 3114
    :cond_8
    const/4 v4, 0x0

    #@cf
    .restart local v4    # "nonOverlay":Z
    goto :goto_3

    #@d0
    :cond_9
    move v7, v8

    #@d1
    .line 3117
    goto :goto_4

    #@d2
    .line 3120
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_a
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@d4
    if-eqz v7, :cond_2

    #@d6
    .line 3121
    const/4 v2, 0x1

    #@d7
    .line 3122
    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@d9
    goto :goto_5

    #@da
    .line 3131
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_b
    const/16 v8, 0x8

    #@dc
    goto :goto_6
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2377
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 2378
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 2379
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result v1

    #@14
    .line 2378
    :goto_0
    return v1

    #@15
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@17
    if-gez v1, :cond_0

    #@19
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@1c
    move-result v1

    #@1d
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 2285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@5
    move-result v4

    #@6
    .line 2286
    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@9
    move-result v0

    #@a
    .line 2287
    .local v0, "action":I
    if-nez v0, :cond_0

    #@c
    const/4 v3, 0x1

    #@d
    .line 2289
    .local v3, "isDown":Z
    :goto_0
    if-eqz v3, :cond_2

    #@f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@12
    move-result v5

    #@13
    if-nez v5, :cond_2

    #@15
    .line 2292
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@17
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->-get9(Lcom/android/internal/policy/PhoneWindow;)I

    #@1a
    move-result v5

    #@1b
    if-lez v5, :cond_1

    #@1d
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@1f
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->-get9(Lcom/android/internal/policy/PhoneWindow;)I

    #@22
    move-result v5

    #@23
    if-eq v5, v4, :cond_1

    #@25
    .line 2293
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@28
    move-result v2

    #@29
    .line 2294
    .local v2, "handled":Z
    if-eqz v2, :cond_1

    #@2b
    .line 2295
    return v8

    #@2c
    .line 2287
    .end local v2    # "handled":Z
    .end local v3    # "isDown":Z
    :cond_0
    const/4 v3, 0x0

    #@2d
    .restart local v3    # "isDown":Z
    goto :goto_0

    #@2e
    .line 2301
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@30
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@33
    move-result-object v5

    #@34
    if-eqz v5, :cond_2

    #@36
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@38
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@3b
    move-result-object v5

    #@3c
    iget-boolean v5, v5, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@3e
    if-eqz v5, :cond_2

    #@40
    .line 2302
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@42
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@44
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@47
    move-result-object v6

    #@48
    invoke-static {v5, v6, v4, p1, v7}, Lcom/android/internal/policy/PhoneWindow;->-wrap0(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    #@4b
    move-result v5

    #@4c
    if-eqz v5, :cond_2

    #@4e
    .line 2303
    return v8

    #@4f
    .line 2308
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@51
    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@54
    move-result v5

    #@55
    if-nez v5, :cond_4

    #@57
    .line 2309
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@59
    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5c
    move-result-object v1

    #@5d
    .line 2310
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_3

    #@5f
    iget v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@61
    if-gez v5, :cond_3

    #@63
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@66
    move-result v2

    #@67
    .line 2312
    .restart local v2    # "handled":Z
    :goto_1
    if-eqz v2, :cond_4

    #@69
    .line 2313
    return v8

    #@6a
    .line 2311
    .end local v2    # "handled":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@6d
    move-result v2

    #@6e
    .restart local v2    # "handled":Z
    goto :goto_1

    #@6f
    .line 2317
    .end local v1    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "handled":Z
    :cond_4
    if-eqz v3, :cond_5

    #@71
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@73
    iget v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@75
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@78
    move-result v7

    #@79
    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    #@7c
    move-result v5

    #@7d
    :goto_2
    return v5

    #@7e
    .line 2318
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@80
    iget v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@82
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@85
    move-result v7

    #@86
    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    #@89
    move-result v5

    #@8a
    goto :goto_2
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 2325
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@4
    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@7
    move-result-object v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 2326
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@c
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@e
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@15
    move-result v5

    #@16
    invoke-static {v3, v4, v5, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->-wrap0(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    #@19
    move-result v1

    #@1a
    .line 2328
    .local v1, "handled":Z
    if-eqz v1, :cond_1

    #@1c
    .line 2329
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@1e
    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@21
    move-result-object v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 2330
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@26
    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@29
    move-result-object v3

    #@2a
    iput-boolean v6, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    #@2c
    .line 2332
    :cond_0
    return v6

    #@2d
    .line 2337
    .end local v1    # "handled":Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2f
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@32
    move-result-object v0

    #@33
    .line 2338
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    #@35
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@37
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_3

    #@3d
    .line 2339
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@40
    move-result v1

    #@41
    .line 2340
    .restart local v1    # "handled":Z
    :goto_0
    if-eqz v1, :cond_4

    #@43
    .line 2341
    return v6

    #@44
    .line 2338
    .end local v1    # "handled":Z
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@46
    if-gez v3, :cond_2

    #@48
    .line 2339
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@4b
    move-result v1

    #@4c
    .restart local v1    # "handled":Z
    goto :goto_0

    #@4d
    .line 2348
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@4f
    invoke-static {v3, v7, v7}, Lcom/android/internal/policy/PhoneWindow;->-wrap1(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@52
    move-result-object v2

    #@53
    .line 2349
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_5

    #@55
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@57
    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@5a
    move-result-object v3

    #@5b
    if-nez v3, :cond_5

    #@5d
    .line 2350
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@5f
    invoke-virtual {v3, v2, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@62
    .line 2351
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@64
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@67
    move-result v4

    #@68
    invoke-static {v3, v2, v4, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->-wrap0(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    #@6b
    move-result v1

    #@6c
    .line 2353
    iput-boolean v7, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@6e
    .line 2354
    if-eqz v1, :cond_5

    #@70
    .line 2355
    return v6

    #@71
    .line 2358
    :cond_5
    return v7
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 2523
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 2524
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 2529
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 2525
    :cond_1
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 2526
    const/4 v1, 0x1

    #@1c
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2363
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 2364
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 2365
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result v1

    #@14
    .line 2364
    :goto_0
    return v1

    #@15
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@17
    if-gez v1, :cond_0

    #@19
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@1c
    move-result v1

    #@1d
    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2370
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 2371
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 2372
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result v1

    #@14
    .line 2371
    :goto_0
    return v1

    #@15
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@17
    if-gez v1, :cond_0

    #@19
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@1c
    move-result v1

    #@1d
    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 2690
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 2692
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2693
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@c
    .line 2689
    :cond_0
    return-void
.end method

.method public finishChanging()V
    .locals 1

    #@0
    .prologue
    .line 2818
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mChanging:Z

    #@3
    .line 2819
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    #@6
    .line 2817
    return-void
.end method

.method public isTransitionGroup()Z
    .locals 1

    #@0
    .prologue
    .line 2873
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    .line 2861
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@9
    .line 2862
    const/4 v0, 0x1

    #@a
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@d
    move-result-object p1

    #@e
    .line 2863
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@11
    move-result-object p1

    #@12
    .line 2864
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateNavigationGuard(Landroid/view/WindowInsets;)V

    #@15
    .line 2865
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 2866
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    #@1e
    .line 2868
    :cond_0
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    #@0
    .prologue
    .line 3256
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    #@3
    .line 3258
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateWindowResizeState()V

    #@6
    .line 3260
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@8
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@b
    move-result-object v0

    #@c
    .line 3261
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@e
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 3265
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@18
    const/4 v2, -0x1

    #@19
    if-ne v1, v2, :cond_1

    #@1b
    .line 3273
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@1d
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-wrap5(Lcom/android/internal/policy/PhoneWindow;)V

    #@20
    .line 3255
    :cond_1
    return-void

    #@21
    .line 3261
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@23
    if-gez v1, :cond_0

    #@25
    .line 3262
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    #@28
    goto :goto_0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3310
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 3311
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    #@9
    .line 3309
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 3279
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    #@5
    .line 3281
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@7
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@a
    move-result-object v0

    #@b
    .line 3282
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@d
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@f
    if-gez v2, :cond_0

    #@11
    .line 3283
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    #@14
    .line 3286
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@16
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get4(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    #@19
    move-result-object v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 3287
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@1e
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get4(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    #@25
    .line 3290
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@27
    if-eqz v2, :cond_3

    #@29
    .line 3291
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    #@2b
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@2e
    .line 3292
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@30
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_2

    #@36
    .line 3293
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@38
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    #@3b
    .line 3295
    :cond_2
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@3d
    .line 3297
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@3f
    if-eqz v2, :cond_4

    #@41
    .line 3298
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@43
    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    #@46
    .line 3299
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@48
    .line 3302
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@4a
    invoke-static {v2, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->-wrap1(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@4d
    move-result-object v1

    #@4e
    .line 3303
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_5

    #@50
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@52
    if-eqz v2, :cond_5

    #@54
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@56
    if-gez v2, :cond_5

    #@58
    .line 3304
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@5a
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    #@5d
    .line 3278
    :cond_5
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 2279
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 2280
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    #@5
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@7
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get1(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@d
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get0(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V

    #@14
    .line 2278
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@4
    move-result v0

    #@5
    .line 2427
    .local v0, "action":I
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@7
    if-ltz v3, :cond_0

    #@9
    .line 2428
    if-nez v0, :cond_0

    #@b
    .line 2429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@e
    move-result v3

    #@f
    float-to-int v1, v3

    #@10
    .line 2430
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@13
    move-result v3

    #@14
    float-to-int v2, v3

    #@15
    .line 2431
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->isOutOfBounds(II)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 2432
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@1d
    iget v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@1f
    invoke-virtual {v3, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    #@22
    .line 2433
    const/4 v3, 0x1

    #@23
    return v3

    #@24
    .line 2439
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 2678
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    #@3
    .line 2679
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@5
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getOutsets(Landroid/graphics/Rect;)V

    #@c
    .line 2680
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@e
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@11
    move-result-object v0

    #@12
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@14
    if-lez v0, :cond_0

    #@16
    .line 2681
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@18
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@1b
    move-result-object v0

    #@1c
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@1e
    neg-int v0, v0

    #@1f
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->offsetLeftAndRight(I)V

    #@22
    .line 2683
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@24
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@27
    move-result-object v0

    #@28
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@2a
    if-lez v0, :cond_1

    #@2c
    .line 2684
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2e
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@31
    move-result-object v0

    #@32
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@34
    neg-int v0, v0

    #@35
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->offsetTopAndBottom(I)V

    #@38
    .line 2677
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 2578
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v19

    #@4
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v19

    #@8
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@b
    move-result-object v9

    #@c
    .line 2579
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    #@e
    move/from16 v19, v0

    #@10
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    #@12
    move/from16 v20, v0

    #@14
    move/from16 v0, v19

    #@16
    move/from16 v1, v20

    #@18
    if-ge v0, v1, :cond_8

    #@1a
    const/4 v7, 0x1

    #@1b
    .line 2581
    .local v7, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@1e
    move-result v17

    #@1f
    .line 2582
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@22
    move-result v5

    #@23
    .line 2584
    .local v5, "heightMode":I
    const/4 v2, 0x0

    #@24
    .line 2585
    .local v2, "fixedWidth":Z
    const/high16 v19, -0x80000000

    #@26
    move/from16 v0, v17

    #@28
    move/from16 v1, v19

    #@2a
    if-ne v0, v1, :cond_0

    #@2c
    .line 2586
    if-eqz v7, :cond_9

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@32
    move-object/from16 v19, v0

    #@34
    move-object/from16 v0, v19

    #@36
    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    #@38
    .line 2587
    .local v14, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v14, :cond_0

    #@3a
    iget v0, v14, Landroid/util/TypedValue;->type:I

    #@3c
    move/from16 v19, v0

    #@3e
    if-eqz v19, :cond_0

    #@40
    .line 2589
    iget v0, v14, Landroid/util/TypedValue;->type:I

    #@42
    move/from16 v19, v0

    #@44
    const/16 v20, 0x5

    #@46
    move/from16 v0, v19

    #@48
    move/from16 v1, v20

    #@4a
    if-ne v0, v1, :cond_a

    #@4c
    .line 2590
    invoke-virtual {v14, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@4f
    move-result v19

    #@50
    move/from16 v0, v19

    #@52
    float-to-int v15, v0

    #@53
    .line 2597
    .local v15, "w":I
    :goto_2
    if-lez v15, :cond_0

    #@55
    .line 2598
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@58
    move-result v18

    #@59
    .line 2600
    .local v18, "widthSize":I
    move/from16 v0, v18

    #@5b
    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    #@5e
    move-result v19

    #@5f
    const/high16 v20, 0x40000000    # 2.0f

    #@61
    .line 2599
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@64
    move-result p1

    #@65
    .line 2601
    const/4 v2, 0x1

    #@66
    .line 2606
    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    .end local v18    # "widthSize":I
    :cond_0
    const/high16 v19, -0x80000000

    #@68
    move/from16 v0, v19

    #@6a
    if-ne v5, v0, :cond_1

    #@6c
    .line 2607
    if-eqz v7, :cond_c

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@72
    move-object/from16 v19, v0

    #@74
    move-object/from16 v0, v19

    #@76
    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    #@78
    .line 2608
    .local v13, "tvh":Landroid/util/TypedValue;
    :goto_3
    if-eqz v13, :cond_1

    #@7a
    iget v0, v13, Landroid/util/TypedValue;->type:I

    #@7c
    move/from16 v19, v0

    #@7e
    if-eqz v19, :cond_1

    #@80
    .line 2610
    iget v0, v13, Landroid/util/TypedValue;->type:I

    #@82
    move/from16 v19, v0

    #@84
    const/16 v20, 0x5

    #@86
    move/from16 v0, v19

    #@88
    move/from16 v1, v20

    #@8a
    if-ne v0, v1, :cond_d

    #@8c
    .line 2611
    invoke-virtual {v13, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@8f
    move-result v19

    #@90
    move/from16 v0, v19

    #@92
    float-to-int v3, v0

    #@93
    .line 2617
    .local v3, "h":I
    :goto_4
    if-lez v3, :cond_1

    #@95
    .line 2618
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@98
    move-result v6

    #@99
    .line 2620
    .local v6, "heightSize":I
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    #@9c
    move-result v19

    #@9d
    const/high16 v20, 0x40000000    # 2.0f

    #@9f
    .line 2619
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a2
    move-result p2

    #@a3
    .line 2625
    .end local v3    # "h":I
    .end local v6    # "heightSize":I
    .end local v13    # "tvh":Landroid/util/TypedValue;
    :cond_1
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@a7
    move-object/from16 v19, v0

    #@a9
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@ac
    move-result-object v19

    #@ad
    move-object/from16 v0, p0

    #@af
    move-object/from16 v1, v19

    #@b1
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getOutsets(Landroid/graphics/Rect;)V

    #@b4
    .line 2626
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@b8
    move-object/from16 v19, v0

    #@ba
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@bd
    move-result-object v19

    #@be
    move-object/from16 v0, v19

    #@c0
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@c2
    move/from16 v19, v0

    #@c4
    if-gtz v19, :cond_2

    #@c6
    move-object/from16 v0, p0

    #@c8
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@ca
    move-object/from16 v19, v0

    #@cc
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@cf
    move-result-object v19

    #@d0
    move-object/from16 v0, v19

    #@d2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@d4
    move/from16 v19, v0

    #@d6
    if-lez v19, :cond_3

    #@d8
    .line 2627
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@db
    move-result v11

    #@dc
    .line 2628
    .local v11, "mode":I
    if-eqz v11, :cond_3

    #@de
    .line 2629
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@e1
    move-result v4

    #@e2
    .line 2631
    .local v4, "height":I
    move-object/from16 v0, p0

    #@e4
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@e6
    move-object/from16 v19, v0

    #@e8
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@eb
    move-result-object v19

    #@ec
    move-object/from16 v0, v19

    #@ee
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@f0
    move/from16 v19, v0

    #@f2
    add-int v19, v19, v4

    #@f4
    move-object/from16 v0, p0

    #@f6
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@f8
    move-object/from16 v20, v0

    #@fa
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@fd
    move-result-object v20

    #@fe
    move-object/from16 v0, v20

    #@100
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@102
    move/from16 v20, v0

    #@104
    add-int v19, v19, v20

    #@106
    .line 2630
    move/from16 v0, v19

    #@108
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@10b
    move-result p2

    #@10c
    .line 2634
    .end local v4    # "height":I
    .end local v11    # "mode":I
    :cond_3
    move-object/from16 v0, p0

    #@10e
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@110
    move-object/from16 v19, v0

    #@112
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@115
    move-result-object v19

    #@116
    move-object/from16 v0, v19

    #@118
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@11a
    move/from16 v19, v0

    #@11c
    if-gtz v19, :cond_4

    #@11e
    move-object/from16 v0, p0

    #@120
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@122
    move-object/from16 v19, v0

    #@124
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@127
    move-result-object v19

    #@128
    move-object/from16 v0, v19

    #@12a
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@12c
    move/from16 v19, v0

    #@12e
    if-lez v19, :cond_5

    #@130
    .line 2635
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@133
    move-result v11

    #@134
    .line 2636
    .restart local v11    # "mode":I
    if-eqz v11, :cond_5

    #@136
    .line 2637
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@139
    move-result v16

    #@13a
    .line 2639
    .local v16, "width":I
    move-object/from16 v0, p0

    #@13c
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@13e
    move-object/from16 v19, v0

    #@140
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@143
    move-result-object v19

    #@144
    move-object/from16 v0, v19

    #@146
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@148
    move/from16 v19, v0

    #@14a
    add-int v19, v19, v16

    #@14c
    move-object/from16 v0, p0

    #@14e
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@150
    move-object/from16 v20, v0

    #@152
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    #@155
    move-result-object v20

    #@156
    move-object/from16 v0, v20

    #@158
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@15a
    move/from16 v20, v0

    #@15c
    add-int v19, v19, v20

    #@15e
    .line 2638
    move/from16 v0, v19

    #@160
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@163
    move-result p1

    #@164
    .line 2643
    .end local v11    # "mode":I
    .end local v16    # "width":I
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@167
    .line 2645
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getMeasuredWidth()I

    #@16a
    move-result v16

    #@16b
    .line 2646
    .restart local v16    # "width":I
    const/4 v8, 0x0

    #@16c
    .line 2648
    .local v8, "measure":Z
    const/high16 v19, 0x40000000    # 2.0f

    #@16e
    move/from16 v0, v16

    #@170
    move/from16 v1, v19

    #@172
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@175
    move-result p1

    #@176
    .line 2650
    if-nez v2, :cond_6

    #@178
    const/high16 v19, -0x80000000

    #@17a
    move/from16 v0, v17

    #@17c
    move/from16 v1, v19

    #@17e
    if-ne v0, v1, :cond_6

    #@180
    .line 2651
    if-eqz v7, :cond_f

    #@182
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@186
    move-object/from16 v19, v0

    #@188
    move-object/from16 v0, v19

    #@18a
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    #@18c
    .line 2652
    .local v12, "tv":Landroid/util/TypedValue;
    :goto_5
    iget v0, v12, Landroid/util/TypedValue;->type:I

    #@18e
    move/from16 v19, v0

    #@190
    if-eqz v19, :cond_6

    #@192
    .line 2654
    iget v0, v12, Landroid/util/TypedValue;->type:I

    #@194
    move/from16 v19, v0

    #@196
    const/16 v20, 0x5

    #@198
    move/from16 v0, v19

    #@19a
    move/from16 v1, v20

    #@19c
    if-ne v0, v1, :cond_10

    #@19e
    .line 2655
    invoke-virtual {v12, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@1a1
    move-result v19

    #@1a2
    move/from16 v0, v19

    #@1a4
    float-to-int v10, v0

    #@1a5
    .line 2662
    .local v10, "min":I
    :goto_6
    move/from16 v0, v16

    #@1a7
    if-ge v0, v10, :cond_6

    #@1a9
    .line 2663
    const/high16 v19, 0x40000000    # 2.0f

    #@1ab
    move/from16 v0, v19

    #@1ad
    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1b0
    move-result p1

    #@1b1
    .line 2664
    const/4 v8, 0x1

    #@1b2
    .line 2671
    .end local v10    # "min":I
    .end local v12    # "tv":Landroid/util/TypedValue;
    :cond_6
    if-eqz v8, :cond_7

    #@1b4
    .line 2672
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@1b7
    .line 2577
    :cond_7
    return-void

    #@1b8
    .line 2579
    .end local v2    # "fixedWidth":Z
    .end local v5    # "heightMode":I
    .end local v7    # "isPortrait":Z
    .end local v8    # "measure":Z
    .end local v16    # "width":I
    .end local v17    # "widthMode":I
    :cond_8
    const/4 v7, 0x0

    #@1b9
    .restart local v7    # "isPortrait":Z
    goto/16 :goto_0

    #@1bb
    .line 2586
    .restart local v2    # "fixedWidth":Z
    .restart local v5    # "heightMode":I
    .restart local v17    # "widthMode":I
    :cond_9
    move-object/from16 v0, p0

    #@1bd
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@1bf
    move-object/from16 v19, v0

    #@1c1
    move-object/from16 v0, v19

    #@1c3
    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    #@1c5
    .restart local v14    # "tvw":Landroid/util/TypedValue;
    goto/16 :goto_1

    #@1c7
    .line 2591
    :cond_a
    iget v0, v14, Landroid/util/TypedValue;->type:I

    #@1c9
    move/from16 v19, v0

    #@1cb
    const/16 v20, 0x6

    #@1cd
    move/from16 v0, v19

    #@1cf
    move/from16 v1, v20

    #@1d1
    if-ne v0, v1, :cond_b

    #@1d3
    .line 2592
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1d5
    move/from16 v19, v0

    #@1d7
    move/from16 v0, v19

    #@1d9
    int-to-float v0, v0

    #@1da
    move/from16 v19, v0

    #@1dc
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1de
    move/from16 v20, v0

    #@1e0
    move/from16 v0, v20

    #@1e2
    int-to-float v0, v0

    #@1e3
    move/from16 v20, v0

    #@1e5
    move/from16 v0, v19

    #@1e7
    move/from16 v1, v20

    #@1e9
    invoke-virtual {v14, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    #@1ec
    move-result v19

    #@1ed
    move/from16 v0, v19

    #@1ef
    float-to-int v15, v0

    #@1f0
    .restart local v15    # "w":I
    goto/16 :goto_2

    #@1f2
    .line 2594
    .end local v15    # "w":I
    :cond_b
    const/4 v15, 0x0

    #@1f3
    .restart local v15    # "w":I
    goto/16 :goto_2

    #@1f5
    .line 2607
    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    :cond_c
    move-object/from16 v0, p0

    #@1f7
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@1f9
    move-object/from16 v19, v0

    #@1fb
    move-object/from16 v0, v19

    #@1fd
    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    #@1ff
    .restart local v13    # "tvh":Landroid/util/TypedValue;
    goto/16 :goto_3

    #@201
    .line 2612
    :cond_d
    iget v0, v13, Landroid/util/TypedValue;->type:I

    #@203
    move/from16 v19, v0

    #@205
    const/16 v20, 0x6

    #@207
    move/from16 v0, v19

    #@209
    move/from16 v1, v20

    #@20b
    if-ne v0, v1, :cond_e

    #@20d
    .line 2613
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    #@20f
    move/from16 v19, v0

    #@211
    move/from16 v0, v19

    #@213
    int-to-float v0, v0

    #@214
    move/from16 v19, v0

    #@216
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    #@218
    move/from16 v20, v0

    #@21a
    move/from16 v0, v20

    #@21c
    int-to-float v0, v0

    #@21d
    move/from16 v20, v0

    #@21f
    move/from16 v0, v19

    #@221
    move/from16 v1, v20

    #@223
    invoke-virtual {v13, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    #@226
    move-result v19

    #@227
    move/from16 v0, v19

    #@229
    float-to-int v3, v0

    #@22a
    .restart local v3    # "h":I
    goto/16 :goto_4

    #@22c
    .line 2615
    .end local v3    # "h":I
    :cond_e
    const/4 v3, 0x0

    #@22d
    .restart local v3    # "h":I
    goto/16 :goto_4

    #@22f
    .line 2651
    .end local v3    # "h":I
    .end local v13    # "tvh":Landroid/util/TypedValue;
    .restart local v8    # "measure":Z
    .restart local v16    # "width":I
    :cond_f
    move-object/from16 v0, p0

    #@231
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@233
    move-object/from16 v19, v0

    #@235
    move-object/from16 v0, v19

    #@237
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    #@239
    .restart local v12    # "tv":Landroid/util/TypedValue;
    goto/16 :goto_5

    #@23b
    .line 2656
    :cond_10
    iget v0, v12, Landroid/util/TypedValue;->type:I

    #@23d
    move/from16 v19, v0

    #@23f
    const/16 v20, 0x6

    #@241
    move/from16 v0, v19

    #@243
    move/from16 v1, v20

    #@245
    if-ne v0, v1, :cond_11

    #@247
    .line 2657
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    #@249
    move/from16 v19, v0

    #@24b
    move/from16 v0, v19

    #@24d
    int-to-float v0, v0

    #@24e
    move/from16 v19, v0

    #@250
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    #@252
    move/from16 v20, v0

    #@254
    move/from16 v0, v20

    #@256
    int-to-float v0, v0

    #@257
    move/from16 v20, v0

    #@259
    move/from16 v0, v19

    #@25b
    move/from16 v1, v20

    #@25d
    invoke-virtual {v12, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    #@260
    move-result v19

    #@261
    move/from16 v0, v19

    #@263
    float-to-int v10, v0

    #@264
    .restart local v10    # "min":I
    goto/16 :goto_6

    #@266
    .line 2659
    .end local v10    # "min":I
    :cond_11
    const/4 v10, 0x0

    #@267
    .restart local v10    # "min":I
    goto/16 :goto_6
.end method

.method public onRootViewScrollYChanged(I)V
    .locals 0
    .param p1, "rootScrollY"    # I

    #@0
    .prologue
    .line 3338
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mRootScrollY:I

    #@2
    .line 3339
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewTranslations()V

    #@5
    .line 3337
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2416
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3227
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    #@4
    .line 3231
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    if-eqz p1, :cond_4

    #@e
    .line 3235
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@13
    move-result-object v0

    #@14
    .line 3236
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    #@16
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@18
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_5

    #@1e
    .line 3240
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 3241
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@24
    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    #@27
    .line 3243
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@29
    if-eqz v1, :cond_3

    #@2b
    .line 3244
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@2d
    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    #@30
    .line 3226
    :cond_3
    return-void

    #@31
    .line 3231
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@33
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get9(Lcom/android/internal/policy/PhoneWindow;)I

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_0

    #@39
    .line 3232
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@3b
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    #@3e
    goto :goto_0

    #@3f
    .line 3236
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@41
    if-gez v1, :cond_1

    #@43
    .line 3237
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    #@46
    goto :goto_1
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .param p1, "visible"    # I

    #@0
    .prologue
    .line 2856
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@5
    .line 2855
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2503
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 2504
    return-void

    #@e
    .line 2510
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 2511
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@14
    const/4 v1, 0x6

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 2514
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    #@1a
    move-result v0

    #@1b
    const/4 v1, 0x1

    #@1c
    if-ne v0, v1, :cond_3

    #@1e
    .line 2515
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@25
    .line 2502
    :goto_0
    return-void

    #@26
    .line 2512
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@28
    const/4 v1, 0x2

    #@29
    if-eq v0, v1, :cond_1

    #@2b
    .line 2513
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@2d
    const/4 v1, 0x5

    #@2e
    if-eq v0, v1, :cond_1

    #@30
    .line 2517
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    #@33
    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 2836
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 2837
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getWindowToken()Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2838
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateWindowResizeState()V

    #@c
    .line 2835
    :cond_0
    return-void
.end method

.method public setBackgroundFallback(I)V
    .locals 3
    .param p1, "resId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 2273
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    #@4
    if-eqz p1, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@11
    .line 2274
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_1

    #@17
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    #@19
    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    :cond_1
    move v0, v1

    #@20
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWillNotDraw(Z)V

    #@23
    .line 2272
    return-void

    #@24
    .line 2274
    :cond_2
    const/4 v0, 0x1

    #@25
    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    #@0
    .prologue
    .line 2534
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    #@3
    move-result v1

    #@4
    .line 2535
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    #@6
    .line 2536
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    #@8
    .line 2537
    .local v2, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    #@b
    .line 2539
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v3

    #@f
    .line 2540
    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@11
    .line 2541
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    #@13
    .line 2542
    .local v4, "frameOffsets":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    #@15
    iget v7, v4, Landroid/graphics/Rect;->left:I

    #@17
    add-int/2addr v6, v7

    #@18
    iput v6, v2, Landroid/graphics/Rect;->left:I

    #@1a
    .line 2543
    iget v6, v2, Landroid/graphics/Rect;->top:I

    #@1c
    iget v7, v4, Landroid/graphics/Rect;->top:I

    #@1e
    add-int/2addr v6, v7

    #@1f
    iput v6, v2, Landroid/graphics/Rect;->top:I

    #@21
    .line 2544
    iget v6, v2, Landroid/graphics/Rect;->right:I

    #@23
    iget v7, v4, Landroid/graphics/Rect;->right:I

    #@25
    sub-int/2addr v6, v7

    #@26
    iput v6, v2, Landroid/graphics/Rect;->right:I

    #@28
    .line 2545
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    #@2a
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    #@2c
    sub-int/2addr v6, v7

    #@2d
    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    #@2f
    .line 2546
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@32
    .line 2547
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@34
    .line 2548
    .local v5, "framePadding":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    #@36
    iget v7, v5, Landroid/graphics/Rect;->left:I

    #@38
    iget v8, v4, Landroid/graphics/Rect;->left:I

    #@3a
    sub-int/2addr v7, v8

    #@3b
    add-int/2addr v6, v7

    #@3c
    iput v6, v2, Landroid/graphics/Rect;->left:I

    #@3e
    .line 2549
    iget v6, v2, Landroid/graphics/Rect;->top:I

    #@40
    iget v7, v5, Landroid/graphics/Rect;->top:I

    #@42
    iget v8, v4, Landroid/graphics/Rect;->top:I

    #@44
    sub-int/2addr v7, v8

    #@45
    add-int/2addr v6, v7

    #@46
    iput v6, v2, Landroid/graphics/Rect;->top:I

    #@48
    .line 2550
    iget v6, v2, Landroid/graphics/Rect;->right:I

    #@4a
    iget v7, v5, Landroid/graphics/Rect;->right:I

    #@4c
    iget v8, v4, Landroid/graphics/Rect;->right:I

    #@4e
    sub-int/2addr v7, v8

    #@4f
    sub-int/2addr v6, v7

    #@50
    iput v6, v2, Landroid/graphics/Rect;->right:I

    #@52
    .line 2551
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    #@54
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    #@56
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    #@58
    sub-int/2addr v7, v8

    #@59
    sub-int/2addr v6, v7

    #@5a
    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    #@5c
    .line 2554
    .end local v4    # "frameOffsets":Landroid/graphics/Rect;
    .end local v5    # "framePadding":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@5f
    move-result-object v0

    #@60
    .line 2555
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@62
    .line 2556
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@65
    .line 2573
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawingBounds":Landroid/graphics/Rect;
    .end local v3    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v1
.end method

.method public setSurfaceFormat(I)V
    .locals 1
    .param p1, "format"    # I

    #@0
    .prologue
    .line 3328
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    #@5
    .line 3327
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepOn"    # Z

    #@0
    .prologue
    const/16 v1, 0x80

    #@2
    .line 3332
    if-eqz p1, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    #@9
    .line 3331
    :goto_0
    return-void

    #@a
    .line 3333
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    #@f
    goto :goto_0
.end method

.method public setSurfaceType(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 3324
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    #@5
    .line 3323
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 2823
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 2824
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 2825
    if-eqz p1, :cond_1

    #@b
    .line 2826
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@d
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@10
    .line 2830
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    #@13
    .line 2822
    :cond_0
    return-void

    #@14
    .line 2828
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@16
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@19
    goto :goto_0
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 2843
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 2844
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 2845
    if-eqz p1, :cond_1

    #@b
    .line 2846
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@d
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@10
    .line 2850
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    #@13
    .line 2842
    :cond_0
    return-void

    #@14
    .line 2848
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@16
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@19
    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    #@0
    .prologue
    .line 2700
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 2701
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@a
    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@c
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    #@13
    invoke-static {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->-set0(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@16
    .line 2702
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@18
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@1e
    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    #@20
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@23
    .line 2707
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@25
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@28
    move-result-object v1

    #@29
    .line 2708
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@2c
    move-result-object v2

    #@2d
    .line 2707
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    #@30
    move-result-object v0

    #@31
    .line 2709
    .local v0, "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    if-eqz v0, :cond_2

    #@33
    .line 2710
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@35
    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    #@37
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@3a
    .line 2716
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@3c
    invoke-static {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->-set1(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;

    #@3f
    .line 2717
    if-eqz v0, :cond_3

    #@41
    const/4 v1, 0x1

    #@42
    :goto_2
    return v1

    #@43
    .line 2704
    .end local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@45
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    #@4c
    goto :goto_0

    #@4d
    .line 2711
    .restart local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@4f
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get3(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    #@52
    move-result-object v1

    #@53
    if-eqz v1, :cond_0

    #@55
    .line 2714
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@57
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get3(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    #@5e
    goto :goto_1

    #@5f
    .line 2717
    :cond_3
    const/4 v1, 0x0

    #@60
    goto :goto_2
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 2734
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 2739
    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 2723
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    #@0
    .prologue
    .line 2729
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public startChanging()V
    .locals 1

    #@0
    .prologue
    .line 2814
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mChanging:Z

    #@3
    .line 2813
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2411
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 2384
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x4

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 2385
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@b
    move-result v0

    #@c
    .line 2387
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 2388
    if-ne v0, v3, :cond_0

    #@12
    .line 2389
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@14
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    #@17
    .line 2391
    :cond_0
    return v3

    #@18
    .line 2395
    .end local v0    # "action":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@1b
    move-result v1

    #@1c
    return v1
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2399
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2403
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2407
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method updateWindowResizeState()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 3249
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    .line 3250
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@a
    move-result v2

    #@b
    .line 3251
    const/4 v3, -0x1

    #@c
    .line 3250
    if-eq v2, v3, :cond_1

    #@e
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->hackTurnOffWindowResizeAnim(Z)V

    #@11
    .line 3248
    return-void

    #@12
    .line 3250
    :cond_1
    const/4 v1, 0x0

    #@13
    goto :goto_0
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    #@0
    .prologue
    .line 3320
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@2
    if-gez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@6
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .locals 1

    #@0
    .prologue
    .line 3316
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    #@2
    if-gez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@6
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method
