.class public Lcom/android/internal/policy/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;,
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;,
        Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final blacklist CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field private static final blacklist DISABLE_OPT_OUT_EDGE_TO_EDGE:J = 0x1685bfe5L

.field private static final blacklist ENFORCE_EDGE_TO_EDGE:J = 0x1273cab3L

.field private static final blacklist ENFORCE_EDGE_TO_EDGE_SDK_VERSION:I

.field static final blacklist FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final blacklist FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final blacklist FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final blacklist FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final blacklist OVERRIDE_LAYOUT_IN_DISPLAY_CUTOUT_MODE:J = 0x13d44965L

.field private static final blacklist PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final blacklist TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final blacklist USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final blacklist VIEWS_TAG:Ljava/lang/String; = "android:views"

.field private static final blacklist sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

.field static final blacklist sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# instance fields
.field private blacklist mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

.field private blacklist mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field private blacklist mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private blacklist mAllowFloatingWindowsFillScreen:Ljava/lang/Boolean;

.field private blacklist mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field private blacklist mAlwaysReadCloseOnTouchAttr:Z

.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mAudioMode:I

.field private blacklist mBackgroundBlurRadius:I

.field blacklist mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mBackgroundFadeDurationMillis:J

.field blacklist mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mCircularProgressBar:Landroid/widget/ProgressBar;

.field private blacklist mClipToOutline:Z

.field private blacklist mClosingActionMenu:Z

.field blacklist mContentParent:Landroid/view/ViewGroup;

.field private blacklist mContentParentExplicitlySet:Z

.field private blacklist mContentScene:Landroid/transition/Scene;

.field blacklist mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final blacklist mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

.field blacklist mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

.field private blacklist mDecor:Lcom/android/internal/policy/DecorView;

.field blacklist mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field blacklist mDecorFitsSystemWindows:Z

.field private blacklist mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

.field blacklist mEdgeToEdgeEnforced:Z

.field private blacklist mElevation:F

.field blacklist mEnsureNavigationBarContrastWhenTransparent:Z

.field blacklist mEnsureStatusBarContrastWhenTransparent:Z

.field private blacklist mEnterTransition:Landroid/transition/Transition;

.field private blacklist mExitTransition:Landroid/transition/Transition;

.field blacklist mFixedHeightMajor:Landroid/util/TypedValue;

.field blacklist mFixedHeightMinor:Landroid/util/TypedValue;

.field blacklist mFixedWidthMajor:Landroid/util/TypedValue;

.field blacklist mFixedWidthMinor:Landroid/util/TypedValue;

.field private blacklist mForceDecorInstall:Z

.field private blacklist mForcedNavigationBarColor:Z

.field private blacklist mForcedStatusBarColor:Z

.field private blacklist mFrameResource:I

.field private blacklist mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field blacklist mIconRes:I

.field private blacklist mInvalidatePanelMenuFeatures:I

.field private blacklist mInvalidatePanelMenuPosted:Z

.field private final blacklist mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field blacklist mIsFloating:Z

.field private blacklist mIsStartingWindow:Z

.field private blacklist mIsTranslucent:Z

.field private blacklist mKeyguardManager:Landroid/app/KeyguardManager;

.field private blacklist mLayoutInflater:Landroid/view/LayoutInflater;

.field private blacklist mLeftIconView:Landroid/widget/ImageView;

.field private blacklist mLoadElevation:Z

.field blacklist mLogoRes:I

.field private blacklist mMediaController:Landroid/media/session/MediaController;

.field private blacklist mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field final blacklist mMinWidthMajor:Landroid/util/TypedValue;

.field final blacklist mMinWidthMinor:Landroid/util/TypedValue;

.field blacklist mNavigationBarColor:I

.field blacklist mNavigationBarColorSpecified:Z

.field blacklist mNavigationBarDividerColor:I

.field private blacklist mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

.field blacklist mPanelChordingKey:I

.field private blacklist mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

.field private blacklist mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field blacklist mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private final blacklist mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

.field private blacklist mReenterTransition:Landroid/transition/Transition;

.field public final blacklist mRenderShadowsInCompositor:Z

.field blacklist mResourcesSetFlags:I

.field private blacklist mReturnTransition:Landroid/transition/Transition;

.field private blacklist mRightIconView:Landroid/widget/ImageView;

.field private blacklist mSharedElementEnterTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementExitTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementReenterTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementReturnTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field blacklist mStatusBarColor:I

.field private blacklist mSupportsPictureInPicture:Z

.field blacklist mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field blacklist mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private blacklist mTextColor:I

.field private blacklist mTheme:I

.field private greylist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTitleColor:I

.field private blacklist mTitleView:Landroid/widget/TextView;

.field private blacklist mTransitionManager:Landroid/transition/TransitionManager;

.field private blacklist mUiOptions:I

.field private blacklist mUseDecorContext:Z

.field private blacklist mVolumeControlStreamType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$Zy7od7X3RmhLcuebHQM7azM371g(Lcom/android/internal/policy/PhoneWindow;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->lambda$setMediaController$1(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInvalidatePanelMenuFeatures(Lcom/android/internal/policy/PhoneWindow;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInvalidatePanelMenuFeatures(Lcom/android/internal/policy/PhoneWindow;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInvalidatePanelMenuPosted(Lcom/android/internal/policy/PhoneWindow;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcallOnPanelClosed(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissContextMenu(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 159
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    .line 209
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 214
    nop

    .line 215
    const-string/jumbo v0, "persist.wm.debug.default_e2e_since_sdk"

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/policy/PhoneWindow;->ENFORCE_EDGE_TO_EDGE_SDK_VERSION:I

    .line 402
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 406
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 221
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 223
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 224
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 242
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 307
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 308
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 310
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    .line 312
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    .line 318
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 320
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 321
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 322
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 323
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 324
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorSpecified:Z

    .line 325
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 326
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 331
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 334
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 336
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 342
    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 343
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    .line 350
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 354
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/PhoneWindow$1;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 368
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 369
    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 370
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 371
    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 372
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 373
    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 374
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 375
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 378
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 384
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    .line 386
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    .line 391
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 407
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 408
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "render_shadows_in_compositor"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_83

    move v0, v2

    :cond_83
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    .line 410
    new-instance v0, Landroid/window/ProxyOnBackInvokedDispatcher;

    invoke-direct {v0, p1}, Landroid/window/ProxyOnBackInvokedDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowFloatingWindowsFillScreen:Ljava/lang/Boolean;

    .line 413
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preservedWindow"    # Landroid/view/Window;
    .param p3, "activityConfigCallback"    # Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 420
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    .line 424
    const/4 v1, 0x0

    if-eqz p2, :cond_4f

    .line 425
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/DecorView;

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 426
    invoke-virtual {p2}, Landroid/view/Window;->getElevation()F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 427
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    .line 428
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 429
    invoke-virtual {p2}, Landroid/view/Window;->decorFitsSystemWindows()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 430
    invoke-virtual {p2}, Landroid/view/Window;->getSystemBarAppearance()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->setSystemBarAppearance(I)V

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 435
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 436
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_4f

    .line 438
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/WindowOnBackInvokedDispatcher;->clear()V

    .line 439
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->clearSystemVibrator()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 440
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->clearSystemVibrator()V

    .line 442
    :cond_4c
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->onViewRootImplSet(Landroid/view/ViewRootImpl;)V

    .line 447
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_4f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "force_resizable_activities"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5d

    move v2, v0

    goto :goto_5e

    :cond_5d
    move v2, v1

    .line 449
    .local v2, "forceResizable":Z
    :goto_5e
    if-nez v2, :cond_6e

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.picture_in_picture"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    goto :goto_6e

    :cond_6d
    move v0, v1

    :cond_6e
    :goto_6e
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    .line 451
    iput-object p3, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 452
    return-void
.end method

.method private blacklist applyDecorFitsSystemWindows()V
    .registers 3

    .line 4169
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 4170
    .local v0, "impl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_11

    .line 4171
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    if-eqz v1, :cond_d

    .line 4172
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    goto :goto_e

    .line 4173
    :cond_d
    const/4 v1, 0x0

    .line 4171
    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setOnContentApplyWindowInsetsListener(Landroid/view/Window$OnContentApplyWindowInsetsListener;)V

    .line 4175
    :cond_11
    return-void
.end method

.method private blacklist callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 3299
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3300
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_7

    .line 3301
    return-void

    .line 3304
    :cond_7
    if-nez p3, :cond_1a

    .line 3306
    if-nez p2, :cond_16

    .line 3307
    if-ltz p1, :cond_16

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_16

    .line 3308
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    aget-object p2, v1, p1

    .line 3312
    :cond_16
    if-eqz p2, :cond_1a

    .line 3314
    iget-object p3, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 3319
    :cond_1a
    if-eqz p2, :cond_21

    iget-boolean v1, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v1, :cond_21

    .line 3320
    return-void

    .line 3322
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 3323
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 3325
    :cond_2a
    return-void
.end method

.method private static blacklist clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V
    .registers 2
    .param p0, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 917
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 922
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 923
    return-void
.end method

.method private declared-synchronized blacklist closeContextMenu()V
    .registers 2

    monitor-enter p0

    .line 1318
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_d

    .line 1319
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 1320
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1322
    .end local p0    # "this":Lcom/android/internal/policy/PhoneWindow;
    :cond_d
    monitor-exit p0

    return-void

    .line 1317
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private declared-synchronized blacklist dismissContextMenu()V
    .registers 3

    monitor-enter p0

    .line 1329
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1331
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v1, :cond_f

    .line 1332
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 1333
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 1335
    .end local p0    # "this":Lcom/android/internal/policy/PhoneWindow;
    :cond_f
    monitor-exit p0

    return-void

    .line 1328
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private blacklist getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .registers 4
    .param p1, "shouldInstallDecor"    # Z

    .line 3250
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    .line 3251
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    return-object v0

    .line 3253
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 3254
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3256
    :cond_10
    const v0, 0x1020495

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 3257
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_25

    .line 3258
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3260
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private blacklist getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .line 3082
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 3083
    if-nez p2, :cond_d

    .line 3084
    const/4 v0, 0x0

    return-object v0

    .line 3086
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The feature has not been requested"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3090
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-object v1, v0

    .local v1, "ar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_1d

    array-length v0, v1

    if-gt v0, p1, :cond_2b

    .line 3091
    :cond_1d
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 3092
    .local v0, "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v1, :cond_28

    .line 3093
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3095
    :cond_28
    move-object v1, v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 3098
    .end local v0    # "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_2b
    aget-object v0, v1, p1

    .line 3099
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-nez v0, :cond_37

    .line 3100
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;-><init>(I)V

    move-object v0, v2

    aput-object v2, v1, p1

    .line 3102
    :cond_37
    return-object v0
.end method

.method private blacklist getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .registers 4
    .param p1, "shouldInstallDecor"    # Z

    .line 3264
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    .line 3265
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object v0

    .line 3267
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 3268
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3270
    :cond_10
    const v0, 0x1020497

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 3271
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_25

    .line 3272
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3274
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private blacklist getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .line 2124
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_12

    .line 2125
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2128
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private blacklist getLeftIconView()Landroid/widget/ImageView;
    .registers 2

    .line 3232
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 3233
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    return-object v0

    .line 3235
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 3236
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3238
    :cond_e
    const v0, 0x10203bc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private blacklist getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .registers 3

    .line 2139
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_12

    .line 2140
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 2143
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method private blacklist getOptionsPanelGravity()I
    .registers 4

    .line 1552
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    .line 1553
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 1552
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity(I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 1554
    :catch_f
    move-exception v0

    .line 1555
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "PhoneWindow"

    const-string v2, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1556
    const/16 v1, 0x51

    return v1
.end method

.method private blacklist getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 8
    .param p1, "featureId"    # I
    .param p2, "required"    # Z
    .param p3, "convertPanelState"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 3129
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 3130
    if-nez p2, :cond_d

    .line 3131
    const/4 v0, 0x0

    return-object v0

    .line 3133
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The feature has not been requested"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3137
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-object v1, v0

    .local v1, "ar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_1d

    array-length v0, v1

    if-gt v0, p1, :cond_2b

    .line 3138
    :cond_1d
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 3139
    .local v0, "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_28

    .line 3140
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3142
    :cond_28
    move-object v1, v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 3145
    .end local v0    # "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2b
    aget-object v0, v1, p1

    .line 3146
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_3b

    .line 3147
    if-eqz p3, :cond_33

    .line 3148
    move-object v2, p3

    goto :goto_38

    .line 3149
    :cond_33
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;-><init>(I)V

    :goto_38
    move-object v0, v2

    aput-object v2, v1, p1

    .line 3151
    :cond_3b
    return-object v0
.end method

.method private blacklist getRightIconView()Landroid/widget/ImageView;
    .registers 2

    .line 3278
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 3279
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    return-object v0

    .line 3281
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 3282
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3284
    :cond_e
    const v0, 0x10204d0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private blacklist getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .registers 8
    .param p1, "currentValue"    # Landroid/transition/Transition;
    .param p2, "defaultValue"    # Landroid/transition/Transition;
    .param p3, "id"    # I

    .line 3055
    if-eq p1, p2, :cond_3

    .line 3056
    return-object p1

    .line 3058
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 3059
    .local v0, "transitionId":I
    move-object v2, p2

    .line 3060
    .local v2, "transition":Landroid/transition/Transition;
    if-eq v0, v1, :cond_2d

    const/high16 v1, 0x10f0000

    if-eq v0, v1, :cond_2d

    .line 3061
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    .line 3062
    .local v1, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v1, v0}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .line 3063
    instance-of v3, v2, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_2d

    move-object v3, v2

    check-cast v3, Landroid/transition/TransitionSet;

    .line 3064
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_2d

    .line 3065
    const/4 v2, 0x0

    .line 3068
    .end local v1    # "inflater":Landroid/transition/TransitionInflater;
    :cond_2d
    return-object v2
.end method

.method private blacklist getViewRootImpl()Landroid/view/ViewRootImpl;
    .registers 4

    .line 1985
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1986
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_7

    .line 1987
    return-object v0

    .line 1989
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "view not added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getViewRootImplOrNull()Landroid/view/ViewRootImpl;
    .registers 2

    .line 1993
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-nez v0, :cond_6

    .line 1994
    const/4 v0, 0x0

    return-object v0

    .line 1996
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 7
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .line 1907
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1908
    .local v0, "features":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1909
    .local v1, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1910
    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x4

    if-eqz v2, :cond_27

    if-eqz p2, :cond_27

    .line 1912
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_27

    .line 1913
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1914
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1916
    :cond_27
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_39

    if-eqz p1, :cond_39

    .line 1917
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_39

    .line 1918
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1919
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1921
    :cond_39
    return-void
.end method

.method private blacklist installDecor()V
    .registers 10

    .line 2919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 2920
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x1

    if-nez v1, :cond_2b

    .line 2921
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 2922
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/high16 v3, 0x40000

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->setDescendantFocusability(I)V

    .line 2923
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorView;->setIsRootNamespace(Z)V

    .line 2924
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v1, :cond_30

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    if-eqz v1, :cond_30

    .line 2925
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_30

    .line 2928
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 2930
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_21d

    .line 2931
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 2934
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->makeFrameworkOptionalFitsSystemWindows()V

    .line 2936
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const v3, 0x10202cc

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DecorContentParent;

    .line 2939
    .local v1, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    const/16 v3, 0xd

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_fb

    .line 2940
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2941
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 2942
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v6}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_6d

    .line 2943
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 2946
    :cond_6d
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v6

    .line 2947
    .local v6, "localFeatures":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_72
    if-ge v7, v3, :cond_81

    .line 2948
    shl-int v8, v2, v7

    and-int/2addr v8, v6

    if-eqz v8, :cond_7e

    .line 2949
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v8, v7}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    .line 2947
    :cond_7e
    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    .line 2953
    .end local v7    # "i":I
    :cond_81
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 2955
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/2addr v7, v2

    if-nez v7, :cond_c3

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-eqz v7, :cond_9a

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2956
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-nez v7, :cond_9a

    goto :goto_c3

    .line 2958
    :cond_9a
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/2addr v7, v2

    if-nez v7, :cond_ca

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-nez v7, :cond_ca

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2959
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-nez v7, :cond_ca

    .line 2960
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2961
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2960
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2962
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_ca

    .line 2957
    :cond_c3
    :goto_c3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 2964
    :cond_ca
    :goto_ca
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_dc

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    if-eqz v7, :cond_e3

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2965
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v7

    if-nez v7, :cond_e3

    .line 2966
    :cond_dc
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 2974
    :cond_e3
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v7

    .line 2975
    .local v7, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_fa

    if-eqz v7, :cond_f3

    iget-object v8, v7, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v8, :cond_fa

    :cond_f3
    iget-boolean v8, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-nez v8, :cond_fa

    .line 2976
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    .line 2978
    .end local v6    # "localFeatures":I
    .end local v7    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_fa
    goto :goto_131

    .line 2979
    :cond_fb
    const v6, 0x1020016

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    .line 2980
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_131

    .line 2981
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_12a

    .line 2982
    const v6, 0x102059e

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2983
    .local v6, "titleContainer":Landroid/view/View;
    if-eqz v6, :cond_11f

    .line 2984
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_124

    .line 2986
    :cond_11f
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2988
    :goto_124
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2989
    .end local v6    # "titleContainer":Landroid/view/View;
    goto :goto_131

    .line 2990
    :cond_12a
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2995
    :cond_131
    :goto_131
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_144

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_144

    .line 2996
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V

    .line 3001
    :cond_144
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_21d

    .line 3002
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    if-nez v3, :cond_172

    .line 3003
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 3006
    .local v0, "transitionRes":I
    if-eqz v0, :cond_16b

    .line 3007
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v3

    .line 3008
    .local v3, "inflater":Landroid/transition/TransitionInflater;
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v4}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 3010
    .end local v3    # "inflater":Landroid/transition/TransitionInflater;
    goto :goto_172

    .line 3011
    :cond_16b
    new-instance v3, Landroid/transition/TransitionManager;

    invoke-direct {v3}, Landroid/transition/TransitionManager;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 3015
    .end local v0    # "transitionRes":I
    :cond_172
    :goto_172
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    const/16 v3, 0x1b

    invoke-direct {p0, v0, v5, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 3017
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v4, 0x27

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 3019
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    const/16 v3, 0x1c

    invoke-direct {p0, v0, v5, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 3021
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v4, 0x28

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 3023
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    const/16 v3, 0x1d

    invoke-direct {p0, v0, v5, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 3025
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v4, 0x29

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 3028
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    const/16 v3, 0x1e

    invoke-direct {p0, v0, v5, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 3030
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v4, 0x2a

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 3033
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_1de

    .line 3034
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 3037
    :cond_1de
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_1f2

    .line 3038
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x1f

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 3041
    :cond_1f2
    iget-wide v3, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_209

    .line 3042
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x24

    const/16 v4, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 3046
    :cond_209
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_21d

    .line 3047
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x2b

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 3052
    .end local v1    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    :cond_21d
    return-void
.end method

.method private blacklist isActivePhoneCallOngoing()Z
    .registers 3

    .line 2119
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static blacklist isEdgeToEdgeEnforced(Landroid/content/pm/ApplicationInfo;ZLandroid/content/res/TypedArray;)Z
    .registers 5
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "local"    # Z
    .param p2, "windowStyle"    # Landroid/content/res/TypedArray;

    .line 464
    invoke-static {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->isOptingOutEdgeToEdgeEnforcement(Landroid/content/pm/ApplicationInfo;ZLandroid/content/res/TypedArray;)Z

    move-result v0

    if-nez v0, :cond_27

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v1, Lcom/android/internal/policy/PhoneWindow;->ENFORCE_EDGE_TO_EDGE_SDK_VERSION:I

    if-ge v0, v1, :cond_25

    .line 466
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->enforceEdgeToEdge()Z

    move-result v0

    if-eqz v0, :cond_27

    const-wide/32 v0, 0x1273cab3

    if-eqz p1, :cond_1e

    .line 468
    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_25

    :cond_1e
    nop

    .line 470
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ApplicationInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_25
    :goto_25
    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 464
    :goto_28
    return v0
.end method

.method private blacklist isNotInstantAppAndKeyguardRestricted()Z
    .registers 2

    .line 2260
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2261
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 2260
    :goto_1b
    return v0
.end method

.method public static blacklist isOptOutEdgeToEdgeEnabled(Landroid/content/pm/ApplicationInfo;Z)Z
    .registers 7
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "local"    # Z

    .line 478
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->disableOptOutEdgeToEdge()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    const-wide/32 v3, 0x1685bfe5

    if-eqz p1, :cond_14

    .line 481
    invoke-static {v3, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1b

    :cond_14
    nop

    .line 483
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/ApplicationInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_1b
    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    .line 484
    .local v0, "disabled":Z
    :goto_1e
    if-nez v0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    return v1
.end method

.method public static blacklist isOptingOutEdgeToEdgeEnforcement(Landroid/content/pm/ApplicationInfo;ZLandroid/content/res/TypedArray;)Z
    .registers 5
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "local"    # Z
    .param p2, "windowStyle"    # Landroid/content/res/TypedArray;

    .line 497
    invoke-static {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->isOptOutEdgeToEdgeEnabled(Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const/16 v0, 0x3f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private blacklist isTvUserSetupComplete()Z
    .registers 6

    .line 3332
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    .line 3334
    .local v0, "isTvSetupComplete":Z
    :goto_16
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tv_user_setup_complete"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_28

    move v2, v1

    :cond_28
    and-int/2addr v0, v2

    .line 3336
    return v0
.end method

.method private synthetic blacklist lambda$setMediaController$1(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 3398
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/util/Pair;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x600

    if-eqz v0, :cond_10

    .line 162
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 164
    :cond_10
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 165
    .local v0, "insetsToApply":Landroid/graphics/Insets;
    new-instance v1, Landroid/util/Pair;

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->inset(Landroid/graphics/Insets;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    return-object v1
.end method

.method private blacklist launchDefaultSearch(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 3346
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3347
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isTvUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_18

    .line 3349
    const/4 v0, 0x0

    return v0

    .line 3352
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3353
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_68

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_68

    .line 3356
    :cond_25
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 3357
    .local v1, "deviceId":I
    const/4 v2, 0x0

    .line 3358
    .local v2, "searchEvent":Landroid/view/SearchEvent;
    if-eqz v1, :cond_36

    .line 3359
    new-instance v3, Landroid/view/SearchEvent;

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/SearchEvent;-><init>(Landroid/view/InputDevice;)V

    move-object v2, v3

    .line 3362
    :cond_36
    :try_start_36
    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v3
    :try_end_3a
    .catch Ljava/lang/AbstractMethodError; {:try_start_36 .. :try_end_3a} :catch_3b

    .line 3367
    .local v3, "result":Z
    goto :goto_69

    .line 3363
    .end local v3    # "result":Z
    :catch_3b
    move-exception v3

    .line 3364
    .local v3, "e":Ljava/lang/AbstractMethodError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WindowCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Landroid/view/Window$Callback;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not implement method onSearchRequested(SearchEvent); fa"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PhoneWindow"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3366
    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v4

    move v3, v4

    .local v4, "result":Z
    goto :goto_69

    .line 3354
    .end local v1    # "deviceId":I
    .end local v2    # "searchEvent":Landroid/view/SearchEvent;
    .end local v3    # "e":Ljava/lang/AbstractMethodError;
    .end local v4    # "result":Z
    :cond_68
    :goto_68
    const/4 v3, 0x0

    .line 3369
    .local v3, "result":Z
    :goto_69
    if-nez v3, :cond_ac

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_ac

    .line 3372
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3373
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3374
    const-string v2, "android.intent.extra.TIME"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3375
    const-string v2, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3376
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "search"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 3377
    invoke-virtual {v2, v1}, Landroid/app/SearchManager;->launchAssist(Landroid/os/Bundle;)V

    .line 3378
    return v4

    .line 3380
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_ac
    return v3
.end method

.method private blacklist loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 3073
    nop

    .line 3074
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 3073
    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    return-object v0

    .line 3075
    :catch_13
    move-exception v1

    .line 3076
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhoneWindow"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private blacklist openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 22
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 940
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v2, :cond_147

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_147

    .line 946
    :cond_10
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3e

    .line 947
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 948
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 949
    .local v5, "config":Landroid/content/res/Configuration;
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2b

    move v6, v4

    goto :goto_2c

    :cond_2b
    move v6, v3

    .line 951
    .local v6, "isXLarge":Z
    :goto_2c
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_38

    move v7, v4

    goto :goto_39

    :cond_38
    move v7, v3

    .line 954
    .local v7, "isHoneycombApp":Z
    :goto_39
    if-eqz v6, :cond_3e

    if-eqz v7, :cond_3e

    .line 955
    return-void

    .line 959
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v6    # "isXLarge":Z
    .end local v7    # "isHoneycombApp":Z
    :cond_3e
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 960
    .local v2, "cb":Landroid/view/Window$Callback;
    if-eqz v2, :cond_52

    iget v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v5, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 962
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 963
    return-void

    .line 966
    :cond_52
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 967
    .local v5, "wm":Landroid/view/WindowManager;
    if-nez v5, :cond_59

    .line 968
    return-void

    .line 972
    :cond_59
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 973
    return-void

    .line 976
    :cond_60
    const/4 v6, -0x2

    .line 977
    .local v6, "width":I
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    const/4 v8, -0x1

    if-eqz v7, :cond_8c

    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_6b

    goto :goto_8c

    .line 1023
    :cond_6b
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v7

    if-nez v7, :cond_75

    .line 1024
    const/4 v6, -0x1

    move v12, v6

    goto/16 :goto_109

    .line 1025
    :cond_75
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v7, :cond_89

    .line 1028
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1029
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v7, :cond_89

    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v8, :cond_89

    .line 1030
    const/4 v6, -0x1

    move v12, v6

    goto/16 :goto_109

    .line 1034
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_89
    move v12, v6

    goto/16 :goto_109

    .line 978
    :cond_8c
    :goto_8c
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v7, :cond_9b

    .line 980
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_9a

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v7, :cond_ac

    .line 981
    :cond_9a
    return-void

    .line 982
    :cond_9b
    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_ac

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_ac

    .line 984
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->removeAllViews()V

    .line 988
    :cond_ac
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_146

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v7

    if-nez v7, :cond_ba

    goto/16 :goto_146

    .line 992
    :cond_ba
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 993
    .restart local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v7, :cond_c9

    .line 994
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v7, v9

    .line 998
    :cond_c9
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v8, :cond_d1

    .line 1001
    iget v8, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 1002
    .local v8, "backgroundResId":I
    const/4 v6, -0x1

    goto :goto_d3

    .line 1005
    .end local v8    # "backgroundResId":I
    :cond_d1
    iget v8, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    .line 1007
    .restart local v8    # "backgroundResId":I
    :goto_d3
    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1010
    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 1011
    .local v9, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v9, :cond_f4

    instance-of v10, v9, Landroid/view/ViewGroup;

    if-eqz v10, :cond_f4

    .line 1012
    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v11, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1014
    :cond_f4
    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    iget-object v11, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11, v7}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_108

    .line 1021
    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 1023
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "backgroundResId":I
    .end local v9    # "shownPanelParent":Landroid/view/ViewParent;
    :cond_108
    move v12, v6

    .line 1034
    .end local v6    # "width":I
    .local v12, "width":I
    :goto_109
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v6

    if-nez v6, :cond_110

    .line 1037
    return-void

    .line 1040
    :cond_110
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1042
    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    iget v14, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->x:I

    iget v15, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->y:I

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    iget v3, v3, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    const/4 v13, -0x2

    const/16 v16, 0x3eb

    const/high16 v17, 0x820000

    move/from16 v18, v3

    invoke-direct/range {v11 .. v18}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1049
    .local v11, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v3, :cond_136

    .line 1050
    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    iput v3, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1051
    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/PhoneWindow;)V

    goto :goto_13a

    .line 1053
    :cond_136
    iget v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    iput v3, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1056
    :goto_13a
    iget v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v3, v11, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1058
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v5, v3, v11}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1059
    iput-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1061
    return-void

    .line 989
    .end local v11    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "width":I
    .restart local v6    # "width":I
    :cond_146
    :goto_146
    return-void

    .line 941
    .end local v2    # "cb":Landroid/view/Window$Callback;
    .end local v5    # "wm":Landroid/view/WindowManager;
    .end local v6    # "width":I
    :cond_147
    :goto_147
    return-void
.end method

.method private blacklist reopenMenu(Z)V
    .registers 8
    .param p1, "toggleMenuMode"    # Z

    .line 1419
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1420
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1421
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1422
    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1423
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_4e

    if-nez p1, :cond_35

    goto :goto_4e

    .line 1443
    :cond_35
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1444
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1445
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_8e

    if-eqz v0, :cond_8e

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_8e

    .line 1446
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_8e

    .line 1424
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4e
    :goto_4e
    if-eqz v0, :cond_8e

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_8e

    .line 1426
    iget-boolean v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v3, :cond_6b

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_6b

    .line 1428
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1429
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1432
    :cond_6b
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1436
    .restart local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_8d

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_8d

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v3, :cond_8d

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 1437
    invoke-interface {v0, v2, v3, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 1438
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1439
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1441
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_8d
    nop

    .line 1449
    :cond_8e
    :goto_8e
    return-void

    .line 1452
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_8f
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 1454
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_96

    .line 1455
    return-void

    .line 1459
    :cond_96
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz p1, :cond_9f

    if-nez v3, :cond_9e

    move v3, v1

    goto :goto_9f

    :cond_9e
    move v3, v2

    .line 1461
    .local v3, "newExpandedMode":Z
    :cond_9f
    :goto_9f
    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1462
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1465
    iput-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1467
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1468
    return-void
.end method

.method private blacklist restorePanelState(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2401
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_23

    .line 2402
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2403
    .local v1, "curFeatureId":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2404
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_14

    .line 2406
    goto :goto_20

    .line 2409
    :cond_14
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2410
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    .line 2401
    :goto_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2417
    .end local v0    # "i":I
    .end local v1    # "curFeatureId":I
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_23
    return-void
.end method

.method private blacklist savePanelState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2381
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2382
    .local v0, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_5

    .line 2383
    return-void

    .line 2386
    :cond_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "curFeatureId":I
    :goto_8
    if-ltz v1, :cond_1a

    .line 2387
    aget-object v2, v0, v1

    if-eqz v2, :cond_17

    .line 2388
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2386
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2391
    .end local v1    # "curFeatureId":I
    :cond_1a
    return-void
.end method

.method public static blacklist sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .line 4003
    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4005
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 4007
    goto :goto_f

    .line 4006
    :catch_e
    move-exception v0

    .line 4009
    :cond_f
    :goto_f
    return-void
.end method

.method private blacklist showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 7
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .line 1894
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1895
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    if-eqz p2, :cond_15

    .line 1896
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_15

    .line 1897
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1900
    :cond_15
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_26

    if-eqz p1, :cond_26

    .line 1901
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_26

    .line 1902
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1904
    :cond_26
    return-void
.end method

.method private blacklist transitionTo(Landroid/transition/Scene;)V
    .registers 3
    .param p1, "scene"    # Landroid/transition/Scene;

    .line 658
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    if-nez v0, :cond_8

    .line 659
    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    goto :goto_d

    .line 661
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    .line 663
    :goto_d
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    .line 664
    return-void
.end method

.method private blacklist updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V
    .registers 8
    .param p1, "featureId"    # I
    .param p2, "st"    # Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .param p3, "fromResume"    # Z

    .line 3175
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 3176
    return-void

    .line 3179
    :cond_5
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 3181
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_11

    if-nez p3, :cond_11

    .line 3182
    return-void

    .line 3185
    :cond_11
    const/4 v1, 0x0

    .line 3186
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_1e

    .line 3187
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3188
    if-nez v1, :cond_1a

    .line 3189
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 3190
    :cond_1a
    if-nez v1, :cond_1e

    .line 3191
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 3193
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v0

    if-nez v2, :cond_3b

    .line 3194
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 3195
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_33

    if-eqz p3, :cond_52

    .line 3196
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_52

    .line 3199
    :cond_3b
    if-eqz p2, :cond_52

    iget-object v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v1, :cond_47

    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_52

    .line 3202
    :cond_47
    iput-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 3203
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 3204
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    .line 3206
    :cond_52
    :goto_52
    return-void
.end method

.method private blacklist updateInt(IIZ)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .param p3, "fromResume"    # Z

    .line 3212
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 3213
    return-void

    .line 3216
    :cond_5
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 3218
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_11

    if-nez p3, :cond_11

    .line 3219
    return-void

    .line 3222
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_26

    .line 3223
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 3224
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_29

    .line 3227
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->onIntChanged(II)V

    .line 3229
    :cond_29
    :goto_29
    return-void
.end method

.method private blacklist updateProgressBars(I)V
    .registers 12
    .param p1, "value"    # I

    .line 1817
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v1

    .line 1818
    .local v1, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1820
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v3

    .line 1821
    .local v3, "features":I
    const/4 v4, -0x1

    const-string v5, "Circular progress bar not located in current window decor"

    const/16 v6, 0x2710

    const/4 v7, 0x0

    const-string v8, "Horizontal progress bar not located in current window decor"

    const-string v9, "PhoneWindow"

    if-ne p1, v4, :cond_46

    .line 1822
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_36

    .line 1823
    if-eqz v2, :cond_33

    .line 1824
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 1825
    .local v0, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v4

    if-nez v4, :cond_2e

    if-ge v0, v6, :cond_2c

    goto :goto_2e

    .line 1826
    :cond_2c
    const/4 v4, 0x4

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v4, v7

    .line 1827
    .local v4, "visibility":I
    :goto_2f
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1828
    .end local v0    # "level":I
    .end local v4    # "visibility":I
    goto :goto_36

    .line 1829
    :cond_33
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_36
    :goto_36
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_af

    .line 1833
    if-eqz v1, :cond_41

    .line 1834
    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_af

    .line 1836
    :cond_41
    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_af

    .line 1839
    :cond_46
    const/4 v4, -0x2

    if-ne p1, v4, :cond_66

    .line 1840
    and-int/lit8 v0, v3, 0x4

    const/16 v4, 0x8

    if-eqz v0, :cond_58

    .line 1841
    if-eqz v2, :cond_55

    .line 1842
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_58

    .line 1844
    :cond_55
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_58
    :goto_58
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_af

    .line 1848
    if-eqz v1, :cond_62

    .line 1849
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_af

    .line 1851
    :cond_62
    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 1854
    :cond_66
    const/4 v4, -0x3

    if-ne p1, v4, :cond_73

    .line 1855
    if-eqz v2, :cond_6f

    .line 1856
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_af

    .line 1858
    :cond_6f
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 1860
    :cond_73
    const/4 v0, -0x4

    if-ne p1, v0, :cond_80

    .line 1861
    if-eqz v2, :cond_7c

    .line 1862
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_af

    .line 1864
    :cond_7c
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 1866
    :cond_80
    if-ltz p1, :cond_99

    if-gt p1, v6, :cond_99

    .line 1870
    if-eqz v2, :cond_8c

    .line 1871
    add-int/lit8 v0, p1, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_8f

    .line 1873
    :cond_8c
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :goto_8f
    if-ge p1, v6, :cond_95

    .line 1877
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_af

    .line 1879
    :cond_95
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_af

    .line 1881
    :cond_99
    const/16 v0, 0x4e20

    if-gt v0, p1, :cond_af

    const/16 v0, 0x7530

    if-gt p1, v0, :cond_af

    .line 1882
    if-eqz v2, :cond_a9

    .line 1883
    add-int/lit16 v0, p1, -0x4e20

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_ac

    .line 1885
    :cond_a9
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :goto_ac
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    .line 1891
    :cond_af
    :goto_af
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 630
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    .line 631
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 633
    :cond_7
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 635
    const-string v0, "PhoneWindow"

    const-string v1, "addContentView does not support content transitions"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 639
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 640
    .local v0, "cb":Landroid/view/Window$Callback;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_38

    .line 641
    if-eqz v0, :cond_2f

    .line 642
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 644
    :cond_2f
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_38

    .line 645
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->notifyContentChanged()V

    .line 648
    :cond_38
    return-void
.end method

.method public blacklist alwaysReadCloseOnTouchAttr()V
    .registers 2

    .line 2915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 2916
    return-void
.end method

.method blacklist checkCloseActionMenu(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1131
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v0, :cond_5

    .line 1132
    return-void

    .line 1135
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 1136
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1137
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1138
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1139
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1141
    :cond_1e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 1142
    return-void
.end method

.method public blacklist clearContentView()V
    .registers 2

    .line 652
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_9

    .line 653
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->clearContentView()V

    .line 655
    :cond_9
    return-void
.end method

.method public final whitelist closeAllPanels()V
    .registers 7

    .line 1296
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 1297
    .local v0, "wm":Landroid/view/ViewManager;
    if-nez v0, :cond_7

    .line 1298
    return-void

    .line 1301
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1302
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_d

    array-length v2, v1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 1303
    .local v2, "N":I
    :goto_e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_1c

    .line 1304
    aget-object v4, v1, v3

    .line 1305
    .local v4, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v4, :cond_19

    .line 1306
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1303
    .end local v4    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1310
    .end local v3    # "i":I
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    .line 1311
    return-void
.end method

.method public final whitelist closePanel(I)V
    .registers 4
    .param p1, "featureId"    # I

    .line 1065
    if-nez p1, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1066
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1067
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1068
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    goto :goto_31

    .line 1069
    :cond_22
    const/4 v0, 0x6

    if-ne p1, v0, :cond_29

    .line 1070
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    goto :goto_31

    .line 1072
    :cond_29
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1074
    :goto_31
    return-void
.end method

.method public final blacklist closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V
    .registers 7
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .line 1089
    if-eqz p2, :cond_18

    iget v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1090
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1091
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 1092
    return-void

    .line 1095
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 1096
    .local v0, "wm":Landroid/view/ViewManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iget-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_3c

    .line 1097
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_35

    .line 1098
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 1100
    iget-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v2, :cond_35

    .line 1101
    sget-object v2, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 1105
    :cond_35
    if-eqz p2, :cond_3c

    .line 1106
    iget v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v2, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 1110
    :cond_3c
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1111
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1112
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1115
    iput-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1117
    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_4e

    .line 1120
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1121
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1124
    :cond_4e
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-ne v3, p1, :cond_56

    .line 1125
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1126
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1128
    :cond_56
    return-void
.end method

.method public blacklist decorFitsSystemWindows()Z
    .registers 2

    .line 4165
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    return v0
.end method

.method protected blacklist dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 3243
    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 3244
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_e

    .line 3245
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3247
    :cond_e
    return-void
.end method

.method blacklist doInvalidatePanelMenu(I)V
    .registers 6
    .param p1, "featureId"    # I

    .line 1172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1173
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_8

    .line 1174
    return-void

    .line 1176
    :cond_8
    const/4 v2, 0x0

    .line 1177
    .local v2, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_2a

    .line 1178
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 1179
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1180
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_20

    .line 1181
    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1184
    :cond_20
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1185
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 1187
    :cond_2a
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 1188
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1191
    const/16 v3, 0x8

    if-eq p1, v3, :cond_35

    if-nez p1, :cond_45

    :cond_35
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_45

    .line 1193
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1194
    if-eqz v1, :cond_45

    .line 1195
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1196
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1199
    :cond_45
    return-void
.end method

.method blacklist doPendingInvalidatePanelMenu()V
    .registers 3

    .line 1165
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_10

    .line 1166
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1167
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1169
    :cond_10
    return-void
.end method

.method public blacklist findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 7
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1392
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1393
    .local v0, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_6

    array-length v1, v0

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 1394
    .local v1, "N":I
    :goto_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_16

    .line 1395
    aget-object v3, v0, v2

    .line 1396
    .local v3, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_13

    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_13

    .line 1397
    return-object v3

    .line 1394
    .end local v3    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1400
    .end local v2    # "i":I
    :cond_16
    const/4 v2, 0x0

    return-object v2
.end method

.method protected blacklist generateDecor(I)Lcom/android/internal/policy/DecorView;
    .registers 6
    .param p1, "featureId"    # I

    .line 2508
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    if-eqz v0, :cond_23

    .line 2509
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2510
    .local v0, "applicationContext":Landroid/content/Context;
    if-nez v0, :cond_13

    .line 2511
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    goto :goto_22

    .line 2513
    .end local v1    # "context":Landroid/content/Context;
    :cond_13
    new-instance v1, Lcom/android/internal/policy/DecorContext;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/policy/DecorContext;-><init>(Landroid/content/Context;Lcom/android/internal/policy/PhoneWindow;)V

    .line 2514
    .restart local v1    # "context":Landroid/content/Context;
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_22

    .line 2515
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 2518
    .end local v0    # "applicationContext":Landroid/content/Context;
    :cond_22
    :goto_22
    goto :goto_27

    .line 2519
    .end local v1    # "context":Landroid/content/Context;
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2521
    .restart local v1    # "context":Landroid/content/Context;
    :goto_27
    new-instance v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/policy/DecorView;-><init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method protected blacklist generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;
    .registers 23
    .param p1, "decor"    # Lcom/android/internal/policy/DecorView;

    .line 2527
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2528
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2529
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2541
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x1

    invoke-static {v3, v4, v1}, Lcom/android/internal/policy/PhoneWindow;->isEdgeToEdgeEnforced(Landroid/content/pm/ApplicationInfo;ZLandroid/content/res/TypedArray;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    .line 2542
    iget-boolean v5, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2e

    .line 2543
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v7, v7, 0x800

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2544
    iput-boolean v6, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 2545
    iput v6, v0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 2546
    iput v6, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 2549
    :cond_2e
    const-wide/32 v7, 0x13d44965

    invoke-static {v7, v8}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 2550
    invoke-static {v3, v4, v1}, Lcom/android/internal/policy/PhoneWindow;->isOptingOutEdgeToEdgeEnforcement(Landroid/content/pm/ApplicationInfo;ZLandroid/content/res/TypedArray;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 2551
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v8, 0x40000

    or-int/2addr v7, v8

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2554
    :cond_48
    const/4 v5, 0x4

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    .line 2558
    iget-boolean v7, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/16 v8, 0x9

    if-eqz v7, :cond_65

    iget-object v7, v0, Lcom/android/internal/policy/PhoneWindow;->mAllowFloatingWindowsFillScreen:Ljava/lang/Boolean;

    .line 2559
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_65

    .line 2560
    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_65

    move v7, v4

    goto :goto_66

    :cond_65
    move v7, v6

    .line 2562
    .local v7, "isFloatingAndFullscreen":Z
    :goto_66
    nop

    .line 2563
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v9

    not-int v9, v9

    const v10, 0x10100

    and-int/2addr v9, v10

    .line 2564
    .local v9, "flagsToUpdate":I
    iget-boolean v11, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v11, :cond_7e

    if-nez v7, :cond_7e

    .line 2565
    const/4 v10, -0x2

    invoke-virtual {v0, v10, v10}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 2566
    invoke-virtual {v0, v6, v9}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    goto :goto_87

    .line 2568
    :cond_7e
    invoke-virtual {v0, v10, v9}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2569
    invoke-virtual {v2, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 2570
    invoke-virtual {v2, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 2573
    :goto_87
    const/4 v10, 0x3

    invoke-virtual {v1, v10, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    const/16 v12, 0x8

    if-eqz v11, :cond_94

    .line 2574
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    goto :goto_9f

    .line 2575
    :cond_94
    const/16 v11, 0xf

    invoke-virtual {v1, v11, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_9f

    .line 2577
    invoke-virtual {v0, v12}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2580
    :cond_9f
    :goto_9f
    const/16 v11, 0x11

    invoke-virtual {v1, v11, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_aa

    .line 2581
    invoke-virtual {v0, v8}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2584
    :cond_aa
    const/16 v11, 0x10

    invoke-virtual {v1, v11, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_b7

    .line 2585
    const/16 v13, 0xa

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2588
    :cond_b7
    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_c8

    .line 2589
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v8

    not-int v8, v8

    const/16 v13, 0x400

    and-int/2addr v8, v13

    invoke-virtual {v0, v13, v8}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2592
    :cond_c8
    const/16 v8, 0x17

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_dc

    .line 2594
    nop

    .line 2595
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v8

    not-int v8, v8

    const/high16 v13, 0x4000000

    and-int/2addr v8, v13

    .line 2594
    invoke-virtual {v0, v13, v8}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2598
    :cond_dc
    const/16 v8, 0x18

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_f0

    .line 2600
    nop

    .line 2601
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v13

    not-int v13, v13

    const/high16 v14, 0x8000000

    and-int/2addr v13, v14

    .line 2600
    invoke-virtual {v0, v14, v13}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2604
    :cond_f0
    const/16 v13, 0xe

    invoke-virtual {v1, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_103

    .line 2605
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v13

    not-int v13, v13

    const/high16 v14, 0x100000

    and-int/2addr v13, v14

    invoke-virtual {v0, v14, v13}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2608
    :cond_103
    nop

    .line 2609
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v14, 0xb

    if-lt v13, v14, :cond_114

    move v13, v4

    goto :goto_115

    :cond_114
    move v13, v6

    .line 2608
    :goto_115
    const/16 v15, 0x12

    invoke-virtual {v1, v15, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_128

    .line 2611
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v13

    not-int v13, v13

    const/high16 v15, 0x800000

    and-int/2addr v13, v15

    invoke-virtual {v0, v15, v13}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2614
    :cond_128
    const/16 v13, 0x13

    iget-object v15, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v1, v13, v15}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2615
    const/16 v13, 0x14

    iget-object v15, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v1, v13, v15}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2618
    const/16 v13, 0x44

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_14e

    .line 2619
    iget-object v15, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v15, :cond_149

    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    iput-object v15, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 2620
    :cond_149
    iget-object v15, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v1, v13, v15}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2623
    :cond_14e
    const/16 v13, 0x45

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_166

    .line 2624
    iget-object v15, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v15, :cond_161

    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    iput-object v15, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2625
    :cond_161
    iget-object v15, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v1, v13, v15}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2628
    :cond_166
    const/16 v13, 0x42

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_17e

    .line 2629
    iget-object v15, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v15, :cond_179

    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    iput-object v15, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2630
    :cond_179
    iget-object v15, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v1, v13, v15}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2633
    :cond_17e
    const/16 v13, 0x43

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_198

    .line 2634
    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v13, :cond_191

    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    iput-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 2635
    :cond_191
    const/16 v13, 0x43

    iget-object v15, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v1, v13, v15}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2638
    :cond_198
    const/16 v13, 0x19

    invoke-virtual {v1, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_1a5

    .line 2639
    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2641
    :cond_1a5
    const/16 v13, 0x2c

    invoke-virtual {v1, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_1b2

    .line 2642
    const/16 v13, 0xd

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2644
    :cond_1b2
    const/16 v13, 0x40

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_1c6

    .line 2645
    sget-boolean v15, Lcom/android/internal/policy/PhoneWindow;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v15, :cond_1c6

    .line 2646
    nop

    .line 2647
    invoke-virtual {v1, v13, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 2646
    invoke-virtual {v0, v15}, Lcom/android/internal/policy/PhoneWindow;->setFrameRatePowerSavingsBalanced(Z)V

    .line 2652
    :cond_1c6
    const/4 v15, 0x5

    invoke-virtual {v1, v15, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    iput-boolean v15, v0, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    .line 2654
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 2655
    .local v15, "context":Landroid/content/Context;
    move/from16 v16, v5

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2656
    .local v5, "targetSdk":I
    const/16 v11, 0x15

    if-ge v5, v11, :cond_1df

    move v11, v4

    goto :goto_1e0

    :cond_1df
    move v11, v6

    .line 2657
    .local v11, "targetPreL":Z
    :goto_1e0
    move/from16 v18, v13

    const/16 v13, 0x1d

    if-ge v5, v13, :cond_1e8

    move v13, v4

    goto :goto_1e9

    :cond_1e8
    move v13, v6

    .line 2659
    .local v13, "targetPreQ":Z
    :goto_1e9
    iget-boolean v12, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    if-nez v12, :cond_1fb

    iget-boolean v12, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-nez v12, :cond_1fb

    .line 2660
    const/16 v12, 0x22

    const/high16 v14, -0x1000000

    invoke-virtual {v1, v12, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    iput v12, v0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 2662
    :cond_1fb
    iget-boolean v12, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    if-nez v12, :cond_245

    .line 2663
    const v12, 0x10602f2

    invoke-virtual {v15, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    .line 2664
    .local v12, "navBarCompatibleColor":I
    const v14, 0x10602f3

    invoke-virtual {v15, v14}, Landroid/content/Context;->getColor(I)I

    move-result v14

    .line 2665
    .local v14, "navBarDefaultColor":I
    const/16 v10, 0x23

    invoke-virtual {v1, v10, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 2667
    .local v10, "navBarColor":I
    if-eq v10, v14, :cond_218

    move/from16 v20, v4

    goto :goto_21a

    :cond_218
    move/from16 v20, v6

    .line 2669
    .local v20, "navigationBarColorSpecified":Z
    :goto_21a
    nop

    .line 2672
    if-nez v20, :cond_230

    iget-boolean v8, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-nez v8, :cond_230

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v4, 0x11101f9

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_230

    .line 2674
    move v4, v12

    goto :goto_231

    .line 2675
    :cond_230
    move v4, v10

    :goto_231
    iput v4, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 2677
    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorSpecified:Z

    or-int v4, v4, v20

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorSpecified:Z

    .line 2679
    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-nez v4, :cond_245

    .line 2680
    const/16 v4, 0x31

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 2684
    .end local v10    # "navBarColor":I
    .end local v12    # "navBarCompatibleColor":I
    .end local v14    # "navBarDefaultColor":I
    .end local v20    # "navigationBarColorSpecified":Z
    :cond_245
    if-nez v13, :cond_258

    .line 2685
    const/16 v4, 0x33

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2687
    const/16 v4, 0x34

    const/4 v8, 0x1

    invoke-virtual {v1, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2693
    :cond_258
    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v4, :cond_286

    .line 2694
    if-nez v11, :cond_272

    const/16 v4, 0x21

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_272

    .line 2697
    nop

    .line 2698
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v4

    not-int v4, v4

    const/high16 v8, -0x80000000

    and-int/2addr v4, v8

    .line 2697
    invoke-virtual {v0, v8, v4}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2700
    :cond_272
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-boolean v4, v4, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v4, :cond_280

    .line 2701
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v8, 0x8000

    or-int/2addr v4, v8

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2703
    :cond_280
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2705
    :cond_286
    const/16 v4, 0x3e

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_294

    .line 2708
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2711
    :cond_294
    const/16 v4, 0x2d

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 2712
    .local v4, "lightStatus":Z
    const/16 v8, 0x30

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 2716
    .local v8, "lightNav":Z
    nop

    .line 2717
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v10

    and-int/lit16 v10, v10, -0x2011

    .line 2720
    if-eqz v4, :cond_2ac

    const/16 v12, 0x2000

    goto :goto_2ad

    :cond_2ac
    move v12, v6

    :goto_2ad
    or-int/2addr v10, v12

    .line 2721
    if-eqz v8, :cond_2b3

    const/16 v12, 0x10

    goto :goto_2b4

    :cond_2b3
    move v12, v6

    :goto_2b4
    or-int/2addr v10, v12

    .line 2716
    move-object/from16 v12, p1

    invoke-virtual {v12, v10}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    .line 2723
    invoke-virtual {v12}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v10

    .line 2724
    if-eqz v4, :cond_2c3

    const/16 v14, 0x8

    goto :goto_2c4

    :cond_2c3
    move v14, v6

    .line 2725
    :goto_2c4
    if-eqz v8, :cond_2c9

    const/16 v17, 0x10

    goto :goto_2cb

    :cond_2c9
    move/from16 v17, v6

    :goto_2cb
    or-int v14, v14, v17

    .line 2723
    const/16 v6, 0x18

    invoke-interface {v10, v14, v6}, Landroid/view/WindowInsetsController;->setSystemBarsAppearanceFromResource(II)V

    .line 2728
    const/16 v6, 0x32

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_30a

    .line 2729
    const/4 v10, -0x1

    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 2730
    .local v10, "mode":I
    if-ltz v10, :cond_2e9

    const/4 v14, 0x3

    if-gt v10, v14, :cond_2e9

    .line 2735
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    move-object/from16 v19, v3

    goto :goto_30c

    .line 2732
    :cond_2e9
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v19, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v3, "Unknown windowLayoutInDisplayCutoutMode: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2733
    const/16 v6, 0x32

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2728
    .end local v10    # "mode":I
    .end local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_30a
    move-object/from16 v19, v3

    .line 2738
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_30c
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    if-nez v3, :cond_31e

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v3, v6, :cond_32b

    .line 2740
    :cond_31e
    const/16 v3, 0x15

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_32b

    .line 2743
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 2747
    :cond_32b
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->hasSoftInputMode()Z

    move-result v3

    if-nez v3, :cond_33b

    .line 2748
    const/16 v3, 0xd

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2753
    :cond_33b
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/16 v6, 0xb

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v6, 0x2

    if-eqz v3, :cond_364

    .line 2756
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v3

    and-int/2addr v3, v6

    if-nez v3, :cond_352

    .line 2757
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v6

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2759
    :cond_352
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->haveDimAmount()Z

    move-result v3

    if-nez v3, :cond_362

    .line 2760
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_365

    .line 2759
    :cond_362
    const/4 v10, 0x0

    goto :goto_365

    .line 2753
    :cond_364
    const/4 v10, 0x0

    .line 2765
    :goto_365
    const/16 v3, 0x36

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_386

    .line 2766
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_37b

    .line 2767
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2770
    :cond_37b
    const/16 v3, 0x35

    const/4 v10, 0x0

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    goto :goto_387

    .line 2765
    :cond_386
    const/4 v10, 0x0

    .line 2774
    :goto_387
    const/16 v3, 0x37

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/PhoneWindow;->setBackgroundBlurRadius(I)V

    .line 2778
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-nez v3, :cond_39c

    .line 2779
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2785
    :cond_39c
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_3ec

    .line 2786
    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3be

    .line 2788
    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    if-nez v3, :cond_3b1

    .line 2789
    const/4 v10, 0x0

    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 2792
    :cond_3b1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3be

    .line 2793
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2796
    :cond_3be
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3cf

    .line 2797
    nop

    .line 2798
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 2800
    :cond_3cf
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    if-eqz v3, :cond_3dc

    .line 2801
    const/16 v3, 0x25

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 2803
    :cond_3dc
    const/16 v3, 0x26

    const/4 v10, 0x0

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 2804
    const/4 v3, 0x7

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 2810
    :cond_3ec
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v3

    .line 2812
    .local v3, "features":I
    and-int/lit8 v6, v3, 0x18

    if-eqz v6, :cond_41d

    .line 2813
    iget-boolean v6, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v6, :cond_411

    .line 2814
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 2815
    .local v6, "res":Landroid/util/TypedValue;
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v14, 0x112003b

    move-object/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v16, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v10, v14, v6, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2817
    iget v2, v6, Landroid/util/TypedValue;->resourceId:I

    .line 2818
    .end local v6    # "res":Landroid/util/TypedValue;
    .local v2, "layoutResource":I
    goto :goto_416

    .line 2819
    .end local v16    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    :cond_411
    move-object/from16 v16, v2

    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v16    # "params":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x109013a

    .line 2822
    .local v2, "layoutResource":I
    :goto_416
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_48f

    .line 2824
    .end local v16    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    :cond_41d
    move-object/from16 v16, v2

    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v16    # "params":Landroid/view/WindowManager$LayoutParams;
    and-int/lit8 v2, v3, 0x24

    if-eqz v2, :cond_42b

    and-int/lit16 v2, v3, 0x100

    if-nez v2, :cond_42b

    .line 2828
    const v2, 0x1090136

    .local v2, "layoutResource":I
    goto :goto_48f

    .line 2830
    .end local v2    # "layoutResource":I
    :cond_42b
    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_453

    .line 2833
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v2, :cond_44a

    .line 2834
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2835
    .local v2, "res":Landroid/util/TypedValue;
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v10, 0x1120038

    const/4 v14, 0x1

    invoke-virtual {v6, v10, v2, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2837
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 2838
    .local v2, "layoutResource":I
    goto :goto_44d

    .line 2839
    .end local v2    # "layoutResource":I
    :cond_44a
    const v2, 0x1090135

    .line 2842
    .restart local v2    # "layoutResource":I
    :goto_44d
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto :goto_48f

    .line 2843
    .end local v2    # "layoutResource":I
    :cond_453
    and-int/lit8 v2, v3, 0x2

    if-nez v2, :cond_484

    .line 2846
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v2, :cond_472

    .line 2847
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2848
    .local v2, "res":Landroid/util/TypedValue;
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v10, 0x112003a

    const/4 v14, 0x1

    invoke-virtual {v6, v10, v2, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2850
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 2851
    .local v2, "layoutResource":I
    goto :goto_48f

    .end local v2    # "layoutResource":I
    :cond_472
    and-int/lit16 v2, v3, 0x100

    if-eqz v2, :cond_480

    .line 2852
    const/16 v2, 0x41

    const v6, 0x1090134

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .restart local v2    # "layoutResource":I
    goto :goto_48f

    .line 2856
    .end local v2    # "layoutResource":I
    :cond_480
    const v2, 0x1090139

    .restart local v2    # "layoutResource":I
    goto :goto_48f

    .line 2859
    .end local v2    # "layoutResource":I
    :cond_484
    and-int/lit16 v2, v3, 0x400

    if-eqz v2, :cond_48c

    .line 2860
    const v2, 0x1090138

    .restart local v2    # "layoutResource":I
    goto :goto_48f

    .line 2863
    .end local v2    # "layoutResource":I
    :cond_48c
    const v2, 0x1090137

    .line 2867
    .restart local v2    # "layoutResource":I
    :goto_48f
    iget-object v6, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v6}, Lcom/android/internal/policy/DecorView;->startChanging()V

    .line 2868
    iget-object v6, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v10, v0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v10, v2}, Lcom/android/internal/policy/DecorView;->onResourcesLoaded(Landroid/view/LayoutInflater;I)V

    .line 2870
    const v6, 0x1020002

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 2871
    .local v6, "contentParent":Landroid/view/ViewGroup;
    if-eqz v6, :cond_506

    .line 2875
    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_4b5

    .line 2876
    const/4 v10, 0x0

    invoke-direct {v0, v10}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v10

    .line 2877
    .local v10, "progress":Landroid/widget/ProgressBar;
    if-eqz v10, :cond_4b5

    .line 2878
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2884
    .end local v10    # "progress":Landroid/widget/ProgressBar;
    :cond_4b5
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v10

    if-nez v10, :cond_4fe

    .line 2885
    iget-object v10, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v14}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2888
    iget v10, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    if-eqz v10, :cond_4d1

    .line 2889
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    iget v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    invoke-virtual {v10, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .local v10, "frame":Landroid/graphics/drawable/Drawable;
    goto :goto_4d2

    .line 2891
    .end local v10    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_4d1
    const/4 v10, 0x0

    .line 2893
    .restart local v10    # "frame":Landroid/graphics/drawable/Drawable;
    :goto_4d2
    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v14, v10}, Lcom/android/internal/policy/DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 2895
    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v17, v1

    .end local v1    # "a":Landroid/content/res/TypedArray;
    .local v17, "a":Landroid/content/res/TypedArray;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    invoke-virtual {v14, v1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 2896
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-boolean v14, v0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    invoke-virtual {v1, v14}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    .line 2898
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4f0

    .line 2899
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 2902
    :cond_4f0
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    if-nez v1, :cond_4f8

    .line 2903
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 2905
    :cond_4f8
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitleColor(I)V

    goto :goto_500

    .line 2884
    .end local v10    # "frame":Landroid/graphics/drawable/Drawable;
    .end local v17    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :cond_4fe
    move-object/from16 v17, v1

    .line 2908
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .restart local v17    # "a":Landroid/content/res/TypedArray;
    :goto_500
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->finishChanging()V

    .line 2910
    return-object v6

    .line 2872
    .end local v17    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :cond_506
    move-object/from16 v17, v1

    .end local v1    # "a":Landroid/content/res/TypedArray;
    .restart local v17    # "a":Landroid/content/res/TypedArray;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v10, "Window couldn\'t find content container view"

    invoke-direct {v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getAllowEnterTransitionOverlap()Z
    .registers 2

    .line 3503
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public whitelist getAllowReturnTransitionOverlap()Z
    .registers 2

    .line 3513
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_c
    return v0
.end method

.method blacklist getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .line 2132
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    .line 2133
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 2135
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public whitelist getContentScene()Landroid/transition/Scene;
    .registers 2

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    return-object v0
.end method

.method public whitelist getCurrentFocus()Landroid/view/View;
    .registers 2

    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final whitelist getDecorView()Landroid/view/View;
    .registers 2

    .line 2270
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    if-eqz v0, :cond_b

    .line 2271
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 2273
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public blacklist getElevation()F
    .registers 2

    .line 1633
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    return v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 3454
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 3465
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getInsetsController()Landroid/view/WindowInsetsController;
    .registers 2

    .line 4140
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 704
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method blacklist getLocalFeaturesPrivate()I
    .registers 2

    .line 3987
    invoke-super {p0}, Landroid/view/Window;->getLocalFeatures()I

    move-result v0

    return v0
.end method

.method public whitelist getMediaController()Landroid/media/session/MediaController;
    .registers 2

    .line 3409
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 4217
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getNavigationBarColor()I
    .registers 2

    .line 4037
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-eqz v0, :cond_6

    .line 4038
    const/4 v0, 0x0

    return v0

    .line 4040
    :cond_6
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method public whitelist getNavigationBarDividerColor()I
    .registers 2

    .line 4078
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    return v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .registers 2

    .line 4228
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    return-object v0
.end method

.method blacklist getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .line 3114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getReenterTransition()Landroid/transition/Transition;
    .registers 3

    .line 3470
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_d

    .line 3471
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 3470
    :goto_d
    return-object v0
.end method

.method public whitelist getReturnTransition()Landroid/transition/Transition;
    .registers 3

    .line 3459
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_d

    .line 3460
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 3459
    :goto_d
    return-object v0
.end method

.method public whitelist getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .registers 2

    .line 4222
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSharedElementEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 3476
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getSharedElementExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 3487
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getSharedElementReenterTransition()Landroid/transition/Transition;
    .registers 3

    .line 3492
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    .line 3493
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 3492
    :goto_d
    return-object v0
.end method

.method public whitelist getSharedElementReturnTransition()Landroid/transition/Transition;
    .registers 3

    .line 3481
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    .line 3482
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 3481
    :goto_d
    return-object v0
.end method

.method public whitelist getSharedElementsUseOverlay()Z
    .registers 2

    .line 3537
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public blacklist getStatusBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 4211
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getStatusBarBackgroundView()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getStatusBarColor()I
    .registers 2

    .line 4013
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method public whitelist getSystemGestureExclusionRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 4151
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getRootSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTransitionBackgroundFadeDuration()J
    .registers 5

    .line 3518
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    const-wide/16 v0, 0x12c

    goto :goto_d

    .line 3519
    :cond_b
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 3518
    :goto_d
    return-wide v0
.end method

.method public whitelist getTransitionManager()Landroid/transition/TransitionManager;
    .registers 2

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    return-object v0
.end method

.method public whitelist getVolumeControlStream()I
    .registers 2

    .line 3390
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method protected blacklist initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .registers 6
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1584
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1585
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1586
    return v1

    .line 1589
    :cond_a
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 1590
    return v2

    .line 1593
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v0, :cond_1c

    .line 1594
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow-IA;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    .line 1597
    :cond_1c
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1598
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    goto :goto_37

    .line 1599
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    :goto_37
    nop

    .line 1601
    .local v0, "menuView":Lcom/android/internal/view/menu/MenuView;
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1603
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v3, :cond_4a

    .line 1605
    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v2

    .line 1606
    .local v2, "defaultAnimations":I
    if-eqz v2, :cond_49

    .line 1607
    iput v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    .line 1609
    :cond_49
    return v1

    .line 1611
    .end local v2    # "defaultAnimations":I
    :cond_4a
    return v2
.end method

.method protected blacklist initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .registers 7
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1530
    iget v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    .line 1531
    const/16 v0, 0x51

    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1532
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1533
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1535
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 1536
    .local v1, "elevation":F
    cmpl-float v2, v1, v2

    if-eqz v2, :cond_31

    .line 1537
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 1539
    :cond_31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1541
    const/4 v2, 0x1

    return v2
.end method

.method protected blacklist initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .registers 9
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1480
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1483
    .local v0, "context":Landroid/content/Context;
    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_67

    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_67

    .line 1485
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1486
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1487
    .local v3, "baseTheme":Landroid/content/res/Resources$Theme;
    const v4, 0x1010431

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1489
    const/4 v4, 0x0

    .line 1490
    .local v4, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    const v6, 0x1010397

    if-eqz v5, :cond_3e

    .line 1491
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1492
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1493
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1494
    invoke-virtual {v4, v6, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_41

    .line 1497
    :cond_3e
    invoke-virtual {v3, v6, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1501
    :goto_41
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_57

    .line 1502
    if-nez v4, :cond_52

    .line 1503
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1504
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1506
    :cond_52
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1509
    :cond_57
    if-eqz v4, :cond_67

    .line 1510
    new-instance v5, Landroid/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v5

    .line 1511
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1515
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v4    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_67
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1516
    .local v1, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1517
    invoke-virtual {p1, v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1519
    return v2
.end method

.method public whitelist injectInputEvent(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1981
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 1982
    return-void
.end method

.method public whitelist invalidatePanelMenu(I)V
    .registers 5
    .param p1, "featureId"    # I

    .line 1156
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    .line 1158
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_19

    .line 1159
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1160
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    .line 1162
    :cond_19
    return-void
.end method

.method public whitelist isFloating()Z
    .registers 2

    .line 682
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public whitelist isNavigationBarContrastEnforced()Z
    .registers 2

    .line 4104
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    return v0
.end method

.method public whitelist isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3168
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 3169
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method blacklist isShowingWallpaper()Z
    .registers 3

    .line 693
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isStatusBarContrastEnforced()Z
    .registers 2

    .line 4091
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    return v0
.end method

.method public blacklist isTranslucent()Z
    .registers 2

    .line 686
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    return v0
.end method

.method protected whitelist onActive()V
    .registers 1

    .line 2266
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 861
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v0, :cond_46

    .line 862
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 863
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_46

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_46

    .line 864
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_43

    .line 866
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 867
    .local v2, "state":Landroid/os/Bundle;
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v3, :cond_21

    .line 868
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 870
    :cond_21
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v3, :cond_2a

    .line 871
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 876
    :cond_2a
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 879
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 882
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v0, :cond_39

    .line 883
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 885
    :cond_39
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_42

    .line 886
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 889
    .end local v2    # "state":Landroid/os/Bundle;
    :cond_42
    goto :goto_46

    .line 892
    :cond_43
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 896
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_46
    :goto_46
    return-void
.end method

.method protected blacklist onDestroy()V
    .registers 3

    .line 2449
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    if-eqz v0, :cond_10

    .line 2450
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V

    .line 2451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    .line 2453
    :cond_10
    return-void
.end method

.method protected blacklist onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .line 1762
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 1763
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .local v0, "view":Landroid/widget/ImageView;
    goto :goto_f

    .line 1764
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_22

    .line 1765
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1770
    .restart local v0    # "view":Landroid/widget/ImageView;
    :goto_f
    if-eqz p2, :cond_1c

    .line 1771
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1772
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1773
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_21

    .line 1775
    :cond_1c
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1777
    :goto_21
    return-void

    .line 1767
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_22
    return-void
.end method

.method protected blacklist onIntChanged(II)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 1787
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    goto :goto_1b

    .line 1789
    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1e

    .line 1790
    const v0, 0x102059e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1791
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_1e

    .line 1792
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1e

    .line 1788
    .end local v0    # "titleContainer":Landroid/widget/FrameLayout;
    :cond_1b
    :goto_1b
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateProgressBars(I)V

    .line 1795
    :cond_1e
    :goto_1e
    return-void
.end method

.method protected blacklist onKeyDown(IILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2057
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2061
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_c
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p2, :sswitch_data_64

    goto :goto_62

    .line 2099
    :sswitch_12
    if-gez p1, :cond_15

    goto :goto_16

    :cond_15
    move v1, p1

    :goto_16
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    .line 2100
    return v2

    .line 2089
    :sswitch_1a
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_2f

    .line 2090
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2091
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    .line 2090
    invoke-virtual {v3, p3, v4}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2092
    return v2

    .line 2095
    :cond_2f
    return v1

    .line 2067
    :sswitch_30
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_48

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isActivePhoneCallOngoing()Z

    move-result v1

    if-nez v1, :cond_48

    .line 2068
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2069
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 2068
    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    goto :goto_51

    .line 2071
    :cond_48
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2074
    :goto_51
    return v2

    .line 2104
    :sswitch_52
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_59

    goto :goto_62

    .line 2105
    :cond_59
    if-gez p1, :cond_5c

    goto :goto_62

    .line 2107
    :cond_5c
    if-eqz v0, :cond_61

    .line 2108
    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 2110
    :cond_61
    return v2

    .line 2115
    :goto_62
    return v1

    nop

    :sswitch_data_64
    .sparse-switch
        0x4 -> :sswitch_52
        0x18 -> :sswitch_30
        0x19 -> :sswitch_30
        0x4f -> :sswitch_1a
        0x52 -> :sswitch_12
        0x55 -> :sswitch_1a
        0x56 -> :sswitch_1a
        0x57 -> :sswitch_1a
        0x58 -> :sswitch_1a
        0x59 -> :sswitch_1a
        0x5a -> :sswitch_1a
        0x5b -> :sswitch_1a
        0x7e -> :sswitch_1a
        0x7f -> :sswitch_1a
        0x82 -> :sswitch_1a
        0xa4 -> :sswitch_30
    .end sparse-switch
.end method

.method public final blacklist onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1208
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1210
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 1212
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1214
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1215
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_1c

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_1c

    .line 1216
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1220
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1c
    return v2
.end method

.method protected blacklist onKeyUp(IILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2154
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2155
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_c
    if-eqz v0, :cond_11

    .line 2156
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 2161
    :cond_11
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p2, :sswitch_data_c0

    goto/16 :goto_be

    .line 2249
    :sswitch_18
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_29

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_29

    .line 2250
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Window$WindowControllerCallback;->enterPictureInPictureModeIfPossible()V

    .line 2252
    :cond_29
    return v2

    .line 2180
    :sswitch_2a
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    const/high16 v3, -0x80000000

    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2182
    return v2

    .line 2235
    :sswitch_34
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isNotInstantAppAndKeyguardRestricted()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2236
    goto/16 :goto_be

    .line 2238
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x6

    if-ne v3, v4, :cond_51

    .line 2240
    goto/16 :goto_be

    .line 2242
    :cond_51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_60

    .line 2243
    invoke-direct {p0, p3}, Lcom/android/internal/policy/PhoneWindow;->launchDefaultSearch(Landroid/view/KeyEvent;)Z

    .line 2245
    :cond_60
    return v2

    .line 2207
    :sswitch_61
    if-gez p1, :cond_64

    goto :goto_65

    :cond_64
    move v1, p1

    :goto_65
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    .line 2209
    return v2

    .line 2197
    :sswitch_69
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_7e

    .line 2198
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2199
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    .line 2198
    invoke-virtual {v3, p3, v4}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 2200
    return v2

    .line 2203
    :cond_7e
    return v1

    .line 2166
    :sswitch_7f
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_91

    .line 2167
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2168
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 2167
    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    goto :goto_9a

    .line 2170
    :cond_91
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2173
    :goto_9a
    return v2

    .line 2213
    :sswitch_9b
    if-gez p1, :cond_9e

    goto :goto_be

    .line 2214
    :cond_9e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_be

    .line 2215
    if-nez p1, :cond_ba

    .line 2216
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 2217
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_ba

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_ba

    .line 2220
    invoke-direct {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 2221
    return v2

    .line 2224
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_ba
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 2225
    return v2

    .line 2256
    :cond_be
    :goto_be
    return v1

    nop

    :sswitch_data_c0
    .sparse-switch
        0x4 -> :sswitch_9b
        0x18 -> :sswitch_7f
        0x19 -> :sswitch_7f
        0x4f -> :sswitch_69
        0x52 -> :sswitch_61
        0x54 -> :sswitch_34
        0x55 -> :sswitch_69
        0x56 -> :sswitch_69
        0x57 -> :sswitch_69
        0x58 -> :sswitch_69
        0x59 -> :sswitch_69
        0x5a -> :sswitch_69
        0x5b -> :sswitch_69
        0x7e -> :sswitch_69
        0x7f -> :sswitch_69
        0x82 -> :sswitch_69
        0xa4 -> :sswitch_2a
        0xab -> :sswitch_18
    .end sparse-switch
.end method

.method public final blacklist onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .registers 8
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1230
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_a6

    .line 1231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1233
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1235
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_a5

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_a5

    :cond_1b
    if-nez v1, :cond_1f

    goto/16 :goto_a5

    .line 1240
    :cond_1f
    const/4 v2, 0x0

    .line 1241
    .local v2, "playSoundEffect":Z
    if-nez p1, :cond_5e

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1242
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1243
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 1244
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    if-nez v3, :cond_57

    .line 1245
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_89

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1246
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v2

    goto :goto_89

    .line 1249
    :cond_57
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v2

    goto :goto_89

    .line 1252
    :cond_5e
    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_83

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v3, :cond_67

    goto :goto_83

    .line 1261
    :cond_67
    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_89

    .line 1262
    const/4 v3, 0x1

    .line 1263
    .local v3, "show":Z
    iget-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_76

    .line 1266
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1267
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    .line 1270
    :cond_76
    if-eqz v3, :cond_89

    .line 1272
    const v4, 0xc351

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1275
    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1277
    const/4 v2, 0x1

    goto :goto_89

    .line 1256
    .end local v3    # "show":Z
    :cond_83
    :goto_83
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1259
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1282
    :cond_89
    :goto_89
    if-eqz v2, :cond_a6

    .line 1283
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 1285
    .local v3, "audioManager":Landroid/media/AudioManager;
    if-eqz v3, :cond_9d

    .line 1286
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_a6

    .line 1288
    :cond_9d
    const-string v0, "PhoneWindow"

    const-string v4, "Couldn\'t get audio manager"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 1237
    .end local v2    # "playSoundEffect":Z
    .end local v3    # "audioManager":Landroid/media/AudioManager;
    :cond_a5
    :goto_a5
    return-void

    .line 1292
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_a6
    :goto_a6
    return-void
.end method

.method public blacklist onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 1404
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1405
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1406
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1407
    .local v1, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_1d

    .line 1408
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 1411
    .end local v1    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 1415
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 1416
    return-void
.end method

.method public blacklist onMultiWindowModeChanged()V
    .registers 3

    .line 900
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_15

    .line 901
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 903
    :cond_15
    return-void
.end method

.method blacklist onOptionsPanelRotationChanged()V
    .registers 5

    .line 1561
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 1562
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_8

    return-void

    .line 1564
    :cond_8
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_15

    .line 1565
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 1566
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_16
    if-eqz v1, :cond_29

    .line 1567
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1568
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1569
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_29

    .line 1570
    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1573
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_29
    return-void
.end method

.method public blacklist onPictureInPictureModeChanged(Z)V
    .registers 3
    .param p1, "isInPictureInPictureMode"    # Z

    .line 907
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_9

    .line 908
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updatePictureInPictureOutlineProvider(Z)V

    .line 910
    :cond_9
    return-void
.end method

.method blacklist onViewRootImplSet(Landroid/view/ViewRootImpl;)V
    .registers 4
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 2283
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl;->setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 2284
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->updateContext(Landroid/content/Context;)V

    .line 2285
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/ProxyOnBackInvokedDispatcher;->setActualDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    .line 2286
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->applyDecorFitsSystemWindows()V

    .line 2287
    return-void
.end method

.method public final whitelist openPanel(ILandroid/view/KeyEvent;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 927
    if-nez p1, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 928
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 929
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_22

    .line 930
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_2a

    .line 932
    :cond_22
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 934
    :goto_2a
    return-void
.end method

.method blacklist openPanelsAfterRestore()V
    .registers 5

    .line 2425
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2427
    .local v0, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_5

    .line 2428
    return-void

    .line 2432
    :cond_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_24

    .line 2433
    aget-object v2, v0, v1

    .line 2437
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_21

    .line 2438
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 2439
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_21

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_21

    .line 2440
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 2441
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 2432
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2445
    .end local v1    # "i":I
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_24
    return-void
.end method

.method public final whitelist peekDecorView()Landroid/view/View;
    .registers 2

    .line 2278
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public whitelist performContextMenuIdentifierAction(II)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 1617
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist performPanelIdentifierAction(III)Z
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .line 1373
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1374
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1375
    return v4

    .line 1377
    :cond_14
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_19

    .line 1378
    return v4

    .line 1381
    :cond_19
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v2

    .line 1384
    .local v2, "res":Z
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v3, :cond_26

    .line 1385
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1388
    :cond_26
    return v2
.end method

.method public whitelist performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .line 1339
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method blacklist performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 8
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .line 1344
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_2f

    if-nez p1, :cond_9

    goto :goto_2f

    .line 1348
    :cond_9
    const/4 v0, 0x0

    .line 1352
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_14

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_14
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_1e

    .line 1354
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1357
    :cond_1e
    if-eqz v0, :cond_2e

    .line 1359
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1362
    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_2e

    .line 1363
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1367
    :cond_2e
    return v0

    .line 1345
    .end local v0    # "handled":Z
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 754
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 755
    return v1

    .line 759
    :cond_8
    iget-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 760
    return v2

    .line 763
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eq v0, p1, :cond_1b

    .line 765
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 768
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 770
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_29

    .line 771
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 774
    :cond_29
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_36

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_34

    goto :goto_36

    :cond_34
    move v3, v1

    goto :goto_37

    :cond_36
    :goto_36
    move v3, v2

    .line 777
    .local v3, "isActionBarMenu":Z
    :goto_37
    if-eqz v3, :cond_42

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_42

    .line 780
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 783
    :cond_42
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v4, :cond_f2

    .line 785
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v5, 0x0

    if-eqz v4, :cond_4f

    iget-boolean v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_8c

    .line 786
    :cond_4f
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_5e

    .line 787
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_5d

    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_5e

    .line 788
    :cond_5d
    return v1

    .line 792
    :cond_5e
    if-eqz v3, :cond_78

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_78

    .line 793
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v4, :cond_6f

    .line 794
    new-instance v4, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow-IA;)V

    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    .line 796
    :cond_6f
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v4, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 803
    :cond_78
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 804
    if-eqz v0, :cond_e1

    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_8a

    goto :goto_e1

    .line 816
    :cond_8a
    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 823
    :cond_8c
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 827
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v4, :cond_9e

    .line 828
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 829
    iput-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 832
    :cond_9e
    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_bd

    .line 833
    if-eqz v3, :cond_b7

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_b7

    .line 836
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 838
    :cond_b7
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 839
    return v1

    .line 844
    :cond_bd
    if-eqz p2, :cond_c4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    goto :goto_c5

    :cond_c4
    const/4 v4, -0x1

    .line 843
    :goto_c5
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v4

    .line 845
    .local v4, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v4}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v2, :cond_d1

    move v5, v2

    goto :goto_d2

    :cond_d1
    move v5, v1

    :goto_d2
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 846
    iget-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 847
    iget-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_f2

    .line 806
    .end local v4    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_e1
    :goto_e1
    invoke-virtual {p1, v5}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 808
    if-eqz v3, :cond_f1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_f1

    .line 810
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 813
    :cond_f1
    return v1

    .line 851
    :cond_f2
    :goto_f2
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 852
    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 853
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 855
    return v2
.end method

.method public whitelist registerScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 4195
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->addScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V

    .line 4196
    return-void
.end method

.method public whitelist requestFeature(I)Z
    .registers 7
    .param p1, "featureId"    # I

    .line 509
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    if-nez v0, :cond_51

    .line 512
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    .line 513
    .local v0, "features":I
    const/4 v1, 0x1

    shl-int v2, v1, p1

    or-int/2addr v2, v0

    .line 514
    .local v2, "newFeatures":I
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1d

    and-int/lit16 v3, v2, -0x34c2

    if-nez v3, :cond_15

    goto :goto_1d

    .line 518
    :cond_15
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine custom titles with other title features"

    invoke-direct {v1, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_1d
    :goto_1d
    and-int/lit8 v3, v0, 0x2

    const/16 v4, 0x8

    if-eqz v3, :cond_27

    if-ne p1, v4, :cond_27

    .line 522
    const/4 v1, 0x0

    return v1

    .line 524
    :cond_27
    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_30

    if-ne p1, v1, :cond_30

    .line 526
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    .line 529
    :cond_30
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4c

    .line 530
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    goto :goto_4c

    .line 531
    :cond_44
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot use indeterminate progress on a watch."

    invoke-direct {v1, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_4c
    :goto_4c
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v1

    return v1

    .line 510
    .end local v0    # "features":I
    .end local v2    # "newFeatures":I
    :cond_51
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "requestFeature() must be called before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/IScrollCaptureResponseListener;

    .line 4185
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    .line 4186
    return-void
.end method

.method public whitelist restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2331
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 2332
    return-void

    .line 2335
    :cond_5
    nop

    .line 2336
    const-string v0, "android:views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2337
    .local v0, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_13

    .line 2338
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 2342
    :cond_13
    const-string v1, "android:focusedViewId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2343
    .local v1, "focusedViewId":I
    const-string v3, "PhoneWindow"

    if-eq v1, v2, :cond_46

    .line 2344
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2345
    .local v2, "needsFocus":Landroid/view/View;
    if-eqz v2, :cond_2a

    .line 2346
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_46

    .line 2348
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previously focused view reported id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " during save, but can\'t be found during restore."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    .end local v2    # "needsFocus":Landroid/view/View;
    :cond_46
    :goto_46
    const-string v2, "android:Panels"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 2356
    .local v2, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v2, :cond_51

    .line 2357
    invoke-direct {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    .line 2360
    :cond_51
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_6c

    .line 2361
    nop

    .line 2362
    const-string v4, "android:ActionBar"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 2363
    .local v4, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_67

    .line 2364
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->doPendingInvalidatePanelMenu()V

    .line 2365
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_6c

    .line 2367
    :cond_67
    const-string v5, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    .end local v4    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_6c
    :goto_6c
    return-void
.end method

.method public whitelist saveHierarchyState()Landroid/os/Bundle;
    .registers 7

    .line 2297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2298
    .local v0, "outState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_a

    .line 2299
    return-object v0

    .line 2302
    :cond_a
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2303
    .local v1, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2304
    const-string v2, "android:views"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2307
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2308
    .local v2, "focusedView":Landroid/view/View;
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    .line 2309
    const-string v3, "android:focusedViewId"

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2313
    :cond_31
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2314
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    .line 2315
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_44

    .line 2316
    const-string v4, "android:Panels"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2319
    :cond_44
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_57

    .line 2320
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2321
    .local v4, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v4}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    .line 2322
    const-string v5, "android:ActionBar"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2325
    .end local v4    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_57
    return-object v0
.end method

.method blacklist sendCloseSystemWindows()V
    .registers 3

    .line 3995
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 3996
    return-void
.end method

.method blacklist sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 3999
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4000
    return-void
.end method

.method public whitelist setAllowEnterTransitionOverlap(Z)V
    .registers 3
    .param p1, "allow"    # Z

    .line 3498
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 3499
    return-void
.end method

.method public whitelist setAllowReturnTransitionOverlap(Z)V
    .registers 3
    .param p1, "allowExitTransitionOverlap"    # Z

    .line 3508
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 3509
    return-void
.end method

.method public whitelist setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 4132
    invoke-super {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4133
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_c

    .line 4134
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 4136
    :cond_c
    return-void
.end method

.method public final whitelist setBackgroundBlurRadius(I)V
    .registers 5
    .param p1, "blurRadius"    # I

    .line 1662
    invoke-super {p0, p1}, Landroid/view/Window;->setBackgroundBlurRadius(I)V

    .line 1663
    sget-boolean v0, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_1d

    .line 1664
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v0, v2, :cond_1d

    .line 1665
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    .line 1666
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setBackgroundBlurRadius(I)V

    .line 1669
    :cond_1d
    return-void
.end method

.method public final whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1646
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_28

    .line 1647
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1648
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_28

    .line 1649
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->startChanging()V

    .line 1650
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1651
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_23

    .line 1652
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_1e

    const/4 v1, 0x0

    goto :goto_20

    .line 1653
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1652
    :goto_20
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V

    .line 1655
    :cond_23
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->finishChanging()V

    .line 1658
    :cond_28
    return-void
.end method

.method public final whitelist setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 3156
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 3157
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3158
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 3159
    return-void
.end method

.method public final whitelist setChildInt(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 3163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 3164
    return-void
.end method

.method public final whitelist setClipToOutline(Z)V
    .registers 3
    .param p1, "clipToOutline"    # Z

    .line 1638
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 1639
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_b

    .line 1640
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    .line 1642
    :cond_b
    return-void
.end method

.method public final whitelist setContainer(Landroid/view/Window;)V
    .registers 2
    .param p1, "container"    # Landroid/view/Window;

    .line 504
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 505
    return-void
.end method

.method public whitelist setContentView(I)V
    .registers 4
    .param p1, "layoutResID"    # I

    .line 566
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v1, 0xc

    if-nez v0, :cond_a

    .line 567
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    goto :goto_15

    .line 568
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 572
    :cond_15
    :goto_15
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 573
    invoke-static {v0, p1, v1}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v0

    .line 575
    .local v0, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 576
    .end local v0    # "newScene":Landroid/transition/Scene;
    goto :goto_30

    .line 577
    :cond_29
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 579
    :goto_30
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 580
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 581
    .local v0, "cb":Landroid/view/Window$Callback;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 582
    if-eqz v0, :cond_44

    .line 583
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 585
    :cond_44
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_4d

    .line 586
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->notifyContentChanged()V

    .line 589
    :cond_4d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 590
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 594
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v1, 0xc

    if-nez v0, :cond_a

    .line 603
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    goto :goto_15

    .line 604
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 608
    :cond_15
    :goto_15
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 609
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    new-instance v0, Landroid/transition/Scene;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 611
    .local v0, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 612
    .end local v0    # "newScene":Landroid/transition/Scene;
    goto :goto_2e

    .line 613
    :cond_29
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    :goto_2e
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 616
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 617
    .local v0, "cb":Landroid/view/Window$Callback;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 618
    if-eqz v0, :cond_42

    .line 619
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 621
    :cond_42
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_4b

    .line 622
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->notifyContentChanged()V

    .line 625
    :cond_4b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 626
    return-void
.end method

.method public whitelist setDecorCaptionShade(I)V
    .registers 2
    .param p1, "decorCaptionShade"    # I

    .line 4128
    return-void
.end method

.method public whitelist setDecorFitsSystemWindows(Z)V
    .registers 3
    .param p1, "decorFitsSystemWindows"    # Z

    .line 4156
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-eqz v0, :cond_5

    .line 4157
    return-void

    .line 4159
    :cond_5
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 4160
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->applyDecorFitsSystemWindows()V

    .line 4161
    return-void
.end method

.method public blacklist setDefaultIcon(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 1935
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 1936
    return-void

    .line 1938
    :cond_7
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1939
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_40

    .line 1941
    :cond_1b
    if-eqz p1, :cond_29

    .line 1942
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1943
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_40

    .line 1945
    :cond_29
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1946
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1945
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1947
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1950
    :cond_40
    :goto_40
    return-void
.end method

.method public blacklist setDefaultLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1963
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 1964
    return-void

    .line 1966
    :cond_7
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1967
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1968
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1970
    :cond_1a
    return-void
.end method

.method protected whitelist setDefaultWindowFormat(I)V
    .registers 2
    .param p1, "format"    # I

    .line 3991
    invoke-super {p0, p1}, Landroid/view/Window;->setDefaultWindowFormat(I)V

    .line 3992
    return-void
.end method

.method public final whitelist setElevation(F)V
    .registers 6
    .param p1, "elevation"    # F

    .line 1622
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 1623
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1624
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_16

    .line 1625
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 1626
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1628
    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1629
    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 3414
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 3415
    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 3424
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 3425
    return-void
.end method

.method protected final blacklist setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1722
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1723
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_f

    .line 1724
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1725
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1727
    :cond_f
    return-void
.end method

.method public final whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1703
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1704
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1705
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1706
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v2, p2, :cond_14

    .line 1707
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1708
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1710
    :cond_14
    return-void
.end method

.method public whitelist setFeatureDrawableAlpha(II)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .line 1714
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1715
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_f

    .line 1716
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1717
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1719
    :cond_f
    return-void
.end method

.method public final whitelist setFeatureDrawableResource(II)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .line 1673
    const/4 v0, 0x0

    if-eqz p2, :cond_1f

    .line 1674
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v1

    .line 1675
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v2, p2, :cond_1e

    .line 1676
    iput p2, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1677
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1678
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1679
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1681
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_1e
    goto :goto_22

    .line 1682
    :cond_1f
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1684
    :goto_22
    return-void
.end method

.method public final whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1688
    if-eqz p2, :cond_22

    .line 1689
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1690
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1691
    :cond_13
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1692
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1693
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1694
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1696
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_21
    goto :goto_26

    .line 1697
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1699
    :goto_26
    return-void
.end method

.method public final whitelist setFeatureInt(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 1733
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 1734
    return-void
.end method

.method public whitelist setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1925
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1926
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1927
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1928
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_17

    .line 1929
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1931
    :cond_17
    return-void
.end method

.method public blacklist setIsStartingWindow(Z)V
    .registers 2
    .param p1, "isStartingWindow"    # Z

    .line 4108
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    .line 4109
    return-void
.end method

.method public whitelist setLocalFocus(ZZ)V
    .registers 4
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .line 1974
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1975
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->windowFocusChanged(Z)V

    .line 1976
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->touchModeChanged(Z)V

    .line 1977
    return-void
.end method

.method public whitelist setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1954
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1955
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1956
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_11

    .line 1957
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1959
    :cond_11
    return-void
.end method

.method public whitelist setMediaController(Landroid/media/session/MediaController;)V
    .registers 5
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 3395
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 3396
    if-eqz p1, :cond_2b

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    if-nez v0, :cond_2b

    .line 3397
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioMode:I

    .line 3398
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    .line 3399
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V

    goto :goto_3b

    .line 3401
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    if-eqz v0, :cond_3b

    .line 3402
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V

    .line 3403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    .line 3405
    :cond_3b
    :goto_3b
    return-void
.end method

.method public whitelist setNavigationBarColor(I)V
    .registers 5
    .param p1, "color"    # I

    .line 4045
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    if-ne v0, p1, :cond_9

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    if-eqz v0, :cond_9

    .line 4046
    return-void

    .line 4048
    :cond_9
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 4049
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 4050
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorSpecified:Z

    .line 4051
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_26

    .line 4052
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 4054
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4056
    :cond_26
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-eqz v0, :cond_2b

    .line 4057
    return-void

    .line 4059
    :cond_2b
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 4060
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_38

    .line 4061
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/Window$WindowControllerCallback;->updateNavigationBarColor(I)V

    .line 4063
    :cond_38
    return-void
.end method

.method public whitelist setNavigationBarContrastEnforced(Z)V
    .registers 5
    .param p1, "enforceContrast"    # Z

    .line 4096
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 4097
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_d

    .line 4098
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4100
    :cond_d
    return-void
.end method

.method public whitelist setNavigationBarDividerColor(I)V
    .registers 5
    .param p1, "navigationBarDividerColor"    # I

    .line 4067
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-eqz v0, :cond_5

    .line 4068
    return-void

    .line 4070
    :cond_5
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 4071
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_12

    .line 4072
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4074
    :cond_12
    return-void
.end method

.method public whitelist setReenterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3429
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 3430
    return-void
.end method

.method public whitelist setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 4123
    return-void
.end method

.method public whitelist setReturnTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3419
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 3420
    return-void
.end method

.method public whitelist setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "sharedElementEnterTransition"    # Landroid/transition/Transition;

    .line 3434
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 3435
    return-void
.end method

.method public whitelist setSharedElementExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "sharedElementExitTransition"    # Landroid/transition/Transition;

    .line 3444
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 3445
    return-void
.end method

.method public whitelist setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3449
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 3450
    return-void
.end method

.method public whitelist setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3439
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 3440
    return-void
.end method

.method public whitelist setSharedElementsUseOverlay(Z)V
    .registers 3
    .param p1, "sharedElementsUseOverlay"    # Z

    .line 3532
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 3533
    return-void
.end method

.method public whitelist setStatusBarColor(I)V
    .registers 5
    .param p1, "color"    # I

    .line 4018
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-eqz v0, :cond_5

    .line 4019
    return-void

    .line 4021
    :cond_5
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    if-ne v0, p1, :cond_e

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    if-eqz v0, :cond_e

    .line 4022
    return-void

    .line 4024
    :cond_e
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 4025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 4026
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_1e

    .line 4027
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4029
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 4030
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_2b

    .line 4031
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/Window$WindowControllerCallback;->updateStatusBarColor(I)V

    .line 4033
    :cond_2b
    return-void
.end method

.method public whitelist setStatusBarContrastEnforced(Z)V
    .registers 5
    .param p1, "ensureContrast"    # Z

    .line 4083
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 4084
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_d

    .line 4085
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4087
    :cond_d
    return-void
.end method

.method public whitelist setSystemGestureExclusionRects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 4145
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setRootSystemGestureExclusionRects(Ljava/util/List;)V

    .line 4146
    return-void
.end method

.method public blacklist setTheme(I)V
    .registers 4
    .param p1, "resid"    # I

    .line 4113
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    .line 4114
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_13

    .line 4115
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4116
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_13

    .line 4117
    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 4120
    .end local v0    # "context":Landroid/content/Context;
    :cond_13
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 709
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 710
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;Z)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "updateAccessibilityTitle"    # Z

    .line 713
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 715
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_13

    .line 716
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 718
    :cond_13
    :goto_13
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 719
    if-eqz p2, :cond_3f

    .line 720
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 721
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 722
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 723
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_38

    .line 725
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 726
    .local v1, "vr":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_38

    .line 727
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->onWindowTitleChanged()V

    .line 730
    .end local v1    # "vr":Landroid/view/ViewRootImpl;
    :cond_38
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 733
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_3f
    return-void
.end method

.method public whitelist setTitleColor(I)V
    .registers 3
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 739
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 741
    :cond_9
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 742
    return-void
.end method

.method public whitelist setTransitionBackgroundFadeDuration(J)V
    .registers 5
    .param p1, "fadeDurationMillis"    # J

    .line 3524
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 3527
    iput-wide p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 3528
    return-void

    .line 3525
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative durations are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTransitionManager(Landroid/transition/TransitionManager;)V
    .registers 2
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .line 553
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 554
    return-void
.end method

.method public whitelist setUiOptions(I)V
    .registers 2
    .param p1, "uiOptions"    # I

    .line 538
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 539
    return-void
.end method

.method public whitelist setUiOptions(II)V
    .registers 5
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .line 543
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 544
    return-void
.end method

.method public whitelist setVolumeControlStream(I)V
    .registers 2
    .param p1, "streamType"    # I

    .line 3385
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 3386
    return-void
.end method

.method public whitelist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2031
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2011
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2016
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2021
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2026
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .line 677
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 678
    return-void
.end method

.method public whitelist takeKeyEvents(Z)V
    .registers 3
    .param p1, "get"    # Z

    .line 2006
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setFocusable(Z)V

    .line 2007
    return-void
.end method

.method public whitelist takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .line 673
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 674
    return-void
.end method

.method public final whitelist togglePanel(ILandroid/view/KeyEvent;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1146
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1147
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_d

    .line 1148
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_10

    .line 1150
    :cond_d
    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1152
    :goto_10
    return-void
.end method

.method public whitelist unregisterScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 4205
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->removeScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V

    .line 4206
    return-void
.end method

.method protected final blacklist updateDrawable(IZ)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "fromActive"    # Z

    .line 1746
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1747
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_a

    .line 1748
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1750
    :cond_a
    return-void
.end method
